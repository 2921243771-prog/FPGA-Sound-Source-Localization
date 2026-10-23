`timescale 1ns / 1ps
// Four-microphone GCC-PHAT, one time-multiplexed Xilinx FFT v9.1 IP.
// The IP must match FFT_LOG2, 24-bit complex I/O, natural-order output,
// block floating point, non-realtime, active-low reset, one FFT channel.
// clk is the algorithm clock (suggested 100 MHz), not the 44.1/48 kHz WS.
// Accept one simultaneous 4-mic tuple on sample_valid && sample_ready.
// Geometry: 1 TL, 2 TR, 3 BL, 4 BR. Output angle: 0 front, +90 right.
module gcc_phat_4mic #(
    parameter FRAME_LOG2 = 11,
    parameter FFT_LOG2 = 12,
    parameter WINDOW_FILE = "hann_2048.mem",
    parameter SAMPLE_RATE = 44100,
    parameter SIDE_MAX_LAG = (70*SAMPLE_RATE+342999)/343000,
    parameter DIAG_MAX_LAG = (99*SAMPLE_RATE+342999)/343000,
    parameter BAND_LOW = (300*(1 << FFT_LOG2)+SAMPLE_RATE-1)/SAMPLE_RATE,
    parameter BAND_HIGH = 6000*(1 << FFT_LOG2)/SAMPLE_RATE,
    parameter [48:0] MIN_CROSS_MAG = 49'd1
)(
    input wire clk, input wire rst,
    input wire sample_valid, output wire sample_ready,
    input wire signed [23:0] mic1, mic2, mic3, mic4,
    output reg result_valid, output reg direction_valid,
    output reg [31:0] result_seq,
    output reg signed [15:0] lag12, lag13, lag14, lag23, lag24, lag34,
    output reg [5:0] pair_valid,
    output reg signed [31:0] angle_deg_q16,
    output reg [31:0] processing_cycles,
    output reg protocol_error,
    output wire busy
);
    localparam FRAME_N = 1 << FRAME_LOG2;
    localparam FFT_N = 1 << FFT_LOG2;
    localparam IDLE=0, CONFIG=1, INPUT_REQ=2, INPUT_WAIT=3,
        INPUT_PACK=4, INPUT_SEND=5, WAIT_OUTPUT=6, PAIR_INIT=7,
        PAIR_NYQUIST=8, PAIR_READ=9, NORM_START=10, NORM_WAIT=11,
        POS_WRITE=12, NEG_WRITE=13, ANGLE_START=14, ANGLE_WAIT=15;
    reg [3:0] state;
    reg inverse;
    reg [1:0] channel;
    reg [2:0] pair_index;
    reg [FFT_LOG2-1:0] input_index, output_index, bin_index;
    reg output_done;
    reg [31:0] cycles;
    reg signed [15:0] work12, work13, work14, work23, work24, work34;
    reg [5:0] work_valid;
    wire frame_available;
    wire frame_release = state == WAIT_OUTPUT && output_done && !inverse && channel == 3;
    wire frame_rd_en = state == INPUT_REQ && !inverse && input_index < FRAME_N;
    wire signed [23:0] rd1, rd2, rd3, rd4, mean1, mean2, mean3, mean4;
    gcc_frame_buffer #(.FRAME_LOG2(FRAME_LOG2)) frames (
        .clk(clk), .rst(rst), .sample_valid(sample_valid), .sample_ready(sample_ready),
        .mic1(mic1), .mic2(mic2), .mic3(mic3), .mic4(mic4),
        .frame_available(frame_available), .frame_release(frame_release),
        .rd_en(frame_rd_en), .rd_addr(input_index[FRAME_LOG2-1:0]),
        .rd_mic1(rd1), .rd_mic2(rd2), .rd_mic3(rd3), .rd_mic4(rd4),
        .mean1(mean1), .mean2(mean2), .mean3(mean3), .mean4(mean4)
    );
    reg signed [23:0] selected_sample, selected_mean;
    always @* begin
        case(channel)
            0: begin selected_sample=rd1; selected_mean=mean1; end
            1: begin selected_sample=rd2; selected_mean=mean2; end
            2: begin selected_sample=rd3; selected_mean=mean3; end
            default: begin selected_sample=rd4; selected_mean=mean4; end
        endcase
    end
    (* rom_style = "block" *) reg signed [17:0] hann [0:FRAME_N-1];
    initial $readmemh(WINDOW_FILE, hann);
    reg signed [17:0] window_coeff;
    wire signed [24:0] centered = $signed({selected_sample[23],selected_sample})
        - $signed({selected_mean[23],selected_mean});
    reg signed [42:0] window_product;
    wire signed [42:0] window_scaled = window_product >>> 18;
    reg [47:0] fft_input;

    (* ram_style = "block" *) reg [47:0] spectrum1 [0:FFT_N-1];
    (* ram_style = "block" *) reg [47:0] spectrum2 [0:FFT_N-1];
    (* ram_style = "block" *) reg [47:0] spectrum3 [0:FFT_N-1];
    (* ram_style = "block" *) reg [47:0] spectrum4 [0:FFT_N-1];
    reg [47:0] spec_rd1, spec_rd2, spec_rd3, spec_rd4;
    reg [47:0] spec_a, spec_b;
    (* ram_style = "block" *) reg [47:0] phat_mem [0:FFT_N-1];
    reg [47:0] phat_rd;
    reg signed [23:0] normalized_re, normalized_im;
    wire signed [23:0] mirror_im = -normalized_im;
    wire in_band = bin_index >= BAND_LOW && bin_index <= BAND_HIGH;
    wire norm_done;
    wire signed [23:0] norm_re, norm_im;
    always @* begin
        case(pair_index)
            0: begin spec_a=spec_rd1; spec_b=spec_rd2; end
            1: begin spec_a=spec_rd1; spec_b=spec_rd3; end
            2: begin spec_a=spec_rd1; spec_b=spec_rd4; end
            3: begin spec_a=spec_rd2; spec_b=spec_rd3; end
            4: begin spec_a=spec_rd2; spec_b=spec_rd4; end
            default: begin spec_a=spec_rd3; spec_b=spec_rd4; end
        endcase
    end
    gcc_phat_norm #(.MIN_MAG(MIN_CROSS_MAG)) normalize_bin (
        .clk(clk), .rst(rst), .start(state == NORM_START && in_band), .ready(),
        .a_re(spec_a[23:0]), .a_im(spec_a[47:24]),
        .b_re(spec_b[23:0]), .b_im(spec_b[47:24]),
        .done(norm_done), .out_re(norm_re), .out_im(norm_im)
    );
    // Separate synchronous RAM read ports; no reset on RAM data arrays.
    always @(posedge clk) begin
        if (frame_rd_en) window_coeff <= hann[input_index[FRAME_LOG2-1:0]];
        if (state == INPUT_REQ && inverse) phat_rd <= phat_mem[input_index];
        if (state == PAIR_READ) begin
            spec_rd1 <= spectrum1[bin_index]; spec_rd2 <= spectrum2[bin_index];
            spec_rd3 <= spectrum3[bin_index]; spec_rd4 <= spectrum4[bin_index];
        end
    end

    wire config_ready, fft_in_ready, fft_out_valid, fft_out_last;
    wire [47:0] fft_output;
    wire event_missing, event_unexpected;
    wire config_fire = state == CONFIG && config_ready;
    gcc_fft_ip fft (
        .aclk(clk), .aresetn(!rst),
        .s_axis_config_tdata(inverse ? 8'h00 : 8'h01),
        .s_axis_config_tvalid(state == CONFIG), .s_axis_config_tready(config_ready),
        .s_axis_data_tdata(fft_input), .s_axis_data_tvalid(state == INPUT_SEND),
        .s_axis_data_tready(fft_in_ready), .s_axis_data_tlast(input_index == FFT_N-1),
        .m_axis_data_tdata(fft_output), .m_axis_data_tuser(),
        .m_axis_data_tvalid(fft_out_valid), .m_axis_data_tready(1'b1),
        .m_axis_data_tlast(fft_out_last),
        .m_axis_status_tdata(), .m_axis_status_tvalid(), .m_axis_status_tready(1'b1),
        .event_frame_started(), .event_tlast_unexpected(event_unexpected),
        .event_tlast_missing(event_missing), .event_status_channel_halt(),
        .event_data_in_channel_halt(), .event_data_out_channel_halt()
    );
    reg signed [23:0] peak_value;
    reg signed [15:0] peak_lag;
    reg peak_found;
    wire [15:0] max_lag = (pair_index == 2 || pair_index == 3) ? DIAG_MAX_LAG : SIDE_MAX_LAG;
    wire candidate = output_index <= max_lag || output_index >= FFT_N-max_lag;
    wire signed [23:0] corr_value = fft_output[23:0];
    wire signed [15:0] corr_lag = output_index < FFT_N/2 ? output_index : $signed({1'b0,output_index})-FFT_N;
    // Output is natural order: lag 0, positive lags, then wrapped negative lags.
    always @(posedge clk) begin
        if (!rst && fft_out_valid && !inverse) begin
            case(channel)
                0: spectrum1[output_index] <= fft_output;
                1: spectrum2[output_index] <= fft_output;
                2: spectrum3[output_index] <= fft_output;
                3: spectrum4[output_index] <= fft_output;
            endcase
        end
    end
    always @(posedge clk) begin
        if (rst) begin
            output_index <= 0; output_done <= 0;
            peak_value <= 0; peak_lag <= 0; peak_found <= 0;
            protocol_error <= 0;
        end else begin
            if (event_missing || event_unexpected) protocol_error <= 1;
            if (config_fire) begin
                output_index <= 0; output_done <= 0;
                peak_value <= 0; peak_lag <= 0; peak_found <= 0;
            end else if (fft_out_valid) begin
                if (fft_out_last != (output_index == FFT_N-1)) protocol_error <= 1;
                if (output_index == FFT_N-1) output_done <= 1;
                else output_index <= output_index + 1'b1;
                if (inverse && candidate && corr_value > peak_value) begin
                    peak_value <= corr_value; peak_lag <= corr_lag; peak_found <= 1;
                end
            end
        end
    end
    wire angle_done, angle_nonzero;
    wire signed [31:0] angle_result;
    gcc_angle angle_unit (
        .clk(clk), .rst(rst), .start(state == ANGLE_START), .ready(),
        .lag12(work12), .lag13(work13), .lag14(work14),
        .lag23(work23), .lag24(work24), .lag34(work34),
        .done(angle_done), .nonzero(angle_nonzero), .angle_deg_q16(angle_result)
    );
    assign busy = state != IDLE;
    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE; inverse <= 0; channel <= 0; pair_index <= 0;
            input_index <= 0; bin_index <= 1; fft_input <= 0; window_product <= 0;
            normalized_re <= 0; normalized_im <= 0;
            lag12 <= 0; lag13 <= 0; lag14 <= 0;
            lag23 <= 0; lag24 <= 0; lag34 <= 0; pair_valid <= 0;
            work12 <= 0; work13 <= 0; work14 <= 0;
            work23 <= 0; work24 <= 0; work34 <= 0; work_valid <= 0;
            result_valid <= 0; direction_valid <= 0; result_seq <= 0;
            angle_deg_q16 <= 0; cycles <= 0; processing_cycles <= 0;
        end else begin
            result_valid <= 0;
            if (state != IDLE) cycles <= cycles + 1'b1;
            case(state)
                IDLE: if (frame_available) begin
                    channel <= 0; inverse <= 0; pair_index <= 0;
                    work_valid <= 0; cycles <= 0; state <= CONFIG;
                end
                CONFIG: if (config_ready) begin
                    input_index <= 0; state <= INPUT_REQ;
                end
                INPUT_REQ: begin
                    if (!inverse && input_index >= FRAME_N) begin
                        fft_input <= 0; state <= INPUT_SEND;
                    end else state <= INPUT_WAIT;
                end
                INPUT_WAIT: begin
                    if (inverse) begin
                        fft_input <= phat_rd; state <= INPUT_SEND;
                    end else begin
                        window_product <= centered * window_coeff;
                        state <= INPUT_PACK;
                    end
                end
                INPUT_PACK: begin
                    if (window_scaled > 43'sd8388607) fft_input <= {24'd0,24'h7fffff};
                    else if (window_scaled < -43'sd8388608) fft_input <= {24'd0,24'h800000};
                    else fft_input <= {24'd0,window_scaled[23:0]};
                    state <= INPUT_SEND;
                end
                INPUT_SEND: if (fft_in_ready) begin
                    if (input_index == FFT_N-1) state <= WAIT_OUTPUT;
                    else begin input_index <= input_index + 1'b1; state <= INPUT_REQ; end
                end
                WAIT_OUTPUT: if (output_done) begin
                    if (!inverse) begin
                        if (channel != 3) begin channel <= channel + 1'b1; state <= CONFIG; end
                        else begin pair_index <= 0; state <= PAIR_INIT; end
                    end else begin
                        work_valid[pair_index] <= peak_found;
                        case(pair_index)
                            0: work12 <= peak_lag; 1: work13 <= peak_lag;
                            2: work14 <= peak_lag; 3: work23 <= peak_lag;
                            4: work24 <= peak_lag; 5: work34 <= peak_lag;
                        endcase
                        if (pair_index == 5) state <= ANGLE_START;
                        else begin pair_index <= pair_index + 1'b1; state <= PAIR_INIT; end
                    end
                end
                PAIR_INIT: begin
                    phat_mem[0] <= 0;
                    bin_index <= 1; state <= PAIR_NYQUIST;
                end
                PAIR_NYQUIST: begin phat_mem[FFT_N/2] <= 0; state <= PAIR_READ; end
                PAIR_READ: state <= NORM_START;
                NORM_START: begin
                    if (in_band) state <= NORM_WAIT;
                    else begin normalized_re <= 0; normalized_im <= 0; state <= POS_WRITE; end
                end
                NORM_WAIT: if (norm_done) begin
                    normalized_re <= norm_re; normalized_im <= norm_im; state <= POS_WRITE;
                end
                POS_WRITE: begin
                    phat_mem[bin_index] <= {normalized_im,normalized_re}; state <= NEG_WRITE;
                end
                NEG_WRITE: begin
                    phat_mem[FFT_N-bin_index] <= {mirror_im,normalized_re};
                    if (bin_index == FFT_N/2-1) begin inverse <= 1; state <= CONFIG; end
                    else begin bin_index <= bin_index + 1'b1; state <= PAIR_READ; end
                end
                ANGLE_START: state <= ANGLE_WAIT;
                ANGLE_WAIT: if (angle_done) begin
                    angle_deg_q16 <= angle_result;
                    lag12 <= work12; lag13 <= work13; lag14 <= work14;
                    lag23 <= work23; lag24 <= work24; lag34 <= work34;
                    pair_valid <= work_valid;
                    result_valid <= 1; result_seq <= result_seq + 1'b1;
                    direction_valid <= (&work_valid) && angle_nonzero && !protocol_error;
                    processing_cycles <= cycles; state <= IDLE;
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule
