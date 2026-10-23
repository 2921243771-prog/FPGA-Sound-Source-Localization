`timescale 1ns / 1ps

// Process six microphone pairs using the existing 4096-point FFT IP in IFFT mode.
// Read the existing 48 x 16384 spectrum RAM through its single read port.
// No separate PHAT-frame RAM or full correlation RAM is required.
// Pair order: 12, 13, 14, 23, 24, 34. lag_ij = (t_i - t_j) * Fs.
// clk must equal the spectrum RAM clkb and FFT aclk. rst is active low.
module PHAT_IFFT_Ctrl #(
    parameter integer RAM_READ_LATENCY = 2,
    parameter integer SAMPLE_RATE = 44100,
    parameter integer BAND_LOW_HZ = 300,
    parameter integer BAND_HIGH_HZ = 6000,
    parameter integer MAX_LAG_SIDE = 9,
    parameter integer MAX_LAG_DIAG = 13,
    parameter [48:0] MIN_MAG = 49'd1,
    parameter signed [23:0] MIN_PEAK = 24'sd0
) (
    input wire clk,
    input wire rst,
    input wire start,
    output reg busy,
    output reg done,

    output reg [13:0] spectrum_addrb,
    output reg spectrum_enb,
    input wire [47:0] spectrum_doutb,

    output wire [7:0] s_axis_config_tdata,
    output reg s_axis_config_tvalid,
    input wire s_axis_config_tready,
    output reg [47:0] s_axis_data_tdata,
    output reg s_axis_data_tvalid,
    output reg s_axis_data_tlast,
    input wire s_axis_data_tready,

    input wire [47:0] m_axis_data_tdata,
    input wire m_axis_data_tvalid,
    input wire m_axis_data_tlast,
    output wire m_axis_data_tready,

    output reg [2:0] pair_index,
    output reg pair_done,
    output reg signed [15:0] pair_lag,
    output reg signed [23:0] pair_peak,
    output reg signed [15:0] lag12,
    output reg signed [15:0] lag13,
    output reg signed [15:0] lag14,
    output reg signed [15:0] lag23,
    output reg signed [15:0] lag24,
    output reg signed [15:0] lag34,
    output reg [5:0] lag_valid,
    output reg frame_error
);
    localparam [3:0] IDLE=0, PREPARE=1, CONFIGURE=2, PICK_BIN=3,
        READ_A=4, WAIT_A=5, LATCH_A=6, READ_B=7, WAIT_B=8,
        LATCH_B=9, WEIGHT_START=10, WEIGHT_WAIT=11, SEND_BIN=12,
        WAIT_RESULT=13;
    localparam integer WAIT_WIDTH = (RAM_READ_LATENCY <= 1) ? 1 : $clog2(RAM_READ_LATENCY);
    localparam integer LOW_BIN = (BAND_LOW_HZ * 4096 + SAMPLE_RATE - 1) / SAMPLE_RATE;
    localparam integer HIGH_BIN = BAND_HIGH_HZ * 4096 / SAMPLE_RATE;

    reg [3:0] state;
    reg [2:0] work_pair;
    reg start_d;
    reg [1:0] mic_a, mic_b;
    reg [11:0] bin_index;
    reg [WAIT_WIDTH-1:0] wait_count;
    reg [47:0] bin_a, bin_b;
    reg [15:0] search_limit;
    wire [12:0] folded_bin = bin_index <= 12'd2048 ?
        {1'b0,bin_index} : 13'd4096 - {1'b0,bin_index};
    wire use_bin = (bin_index != 0) && (bin_index != 2048) &&
        (folded_bin >= LOW_BIN) && (folded_bin <= HIGH_BIN);

    wire weight_in_ready, weight_out_valid;
    wire [47:0] weight_out_data;
    wire weight_out_last;
    PHAT_Weight #(.MIN_MAG(MIN_MAG)) weight (
        .clk(clk), .rst(rst), .s_axis_a_tdata(bin_a), .s_axis_b_tdata(bin_b),
        .s_axis_tvalid(state == WEIGHT_START), .s_axis_tlast(bin_index == 4095),
        .s_axis_tready(weight_in_ready), .m_axis_tdata(weight_out_data),
        .m_axis_tvalid(weight_out_valid), .m_axis_tlast(weight_out_last),
        .m_axis_tready(state == WEIGHT_WAIT)
    );

    assign s_axis_config_tdata = 8'h00; // FWD_INV=0: IFFT, fixed length and BFP.
    wire config_transfer = s_axis_config_tvalid && s_axis_config_tready;
    wire input_transfer = s_axis_data_tvalid && s_axis_data_tready;

    reg receiving, rx_finished, pair_tlast_error;
    reg [11:0] rx_index;
    reg signed [23:0] best_peak;
    reg signed [15:0] best_lag;
    wire signed [23:0] rx_real = m_axis_data_tdata[23:0];
    wire signed [15:0] rx_lag = {{4{rx_index[11]}},rx_index};
    wire [15:0] rx_abs_lag = rx_lag[15] ? -rx_lag : rx_lag;
    wire [15:0] best_abs_lag = best_lag[15] ? -best_lag : best_lag;
    wire in_search = ({4'd0,rx_index} <= search_limit) ||
        ({4'd0,rx_index} >= 16'd4096 - search_limit);
    wire better_peak = in_search && ((rx_real > best_peak) ||
        ((rx_real == best_peak) && (rx_abs_lag < best_abs_lag)));
    assign m_axis_data_tready = rst && busy && receiving;
    wire output_transfer = m_axis_data_tvalid && m_axis_data_tready;

    // Separate receiver so output backpressure never depends on input progress.
    // The last output (index4095 = lag -1) participates in peak selection.
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            receiving <= 0;
            rx_finished <= 0;
            pair_tlast_error <= 0;
            rx_index <= 0;
            best_peak <= 24'sh800000;
            best_lag <= 0;
        end else if (state == PREPARE) begin
            receiving <= 0;
            rx_finished <= 0;
            pair_tlast_error <= 0;
            rx_index <= 0;
            best_peak <= 24'sh800000;
            best_lag <= 0;
        end else begin
            if (config_transfer) receiving <= 1;
            if (output_transfer) begin
                if (m_axis_data_tlast != (rx_index == 4095))
                    pair_tlast_error <= 1;
                if (better_peak) begin
                    best_peak <= rx_real;
                    best_lag <= rx_lag;
                end
                if (rx_index == 4095) begin
                    receiving <= 0;
                    rx_finished <= 1;
                end else rx_index <= rx_index + 1'b1;
            end
        end
    end

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= IDLE;
            start_d <= 0;
            busy <= 0;
            done <= 0;
            pair_done <= 0;
            pair_index <= 0;
            work_pair <= 0;
            pair_lag <= 0;
            pair_peak <= 0;
            lag12 <= 0; lag13 <= 0; lag14 <= 0;
            lag23 <= 0; lag24 <= 0; lag34 <= 0;
            lag_valid <= 0;
            frame_error <= 0;
            spectrum_addrb <= 0;
            spectrum_enb <= 0;
            mic_a <= 0; mic_b <= 1;
            bin_index <= 0;
            wait_count <= 0;
            bin_a <= 0; bin_b <= 0;
            search_limit <= MAX_LAG_SIDE;
            s_axis_config_tvalid <= 0;
            s_axis_data_tvalid <= 0;
            s_axis_data_tlast <= 0;
            s_axis_data_tdata <= 0;
        end else begin
            start_d <= start;
            done <= 0;
            pair_done <= 0;
            case (state)
                IDLE: if (start && !start_d) begin
                    busy <= 1;
                    work_pair <= 0;
                    lag_valid <= 0;
                    frame_error <= 0;
                    state <= PREPARE;
                end
                PREPARE: begin
                    case (work_pair)
                        0: begin mic_a<=0; mic_b<=1; end
                        1: begin mic_a<=0; mic_b<=2; end
                        2: begin mic_a<=0; mic_b<=3; end
                        3: begin mic_a<=1; mic_b<=2; end
                        4: begin mic_a<=1; mic_b<=3; end
                        5: begin mic_a<=2; mic_b<=3; end
                        default: begin mic_a<=0; mic_b<=1; end
                    endcase
                    // Actual square: 1=top-left,2=top-right,3=bottom-right,4=bottom-left.
                    // Pair indices1 (13) and4 (24) are the two diagonals.
                    search_limit <= (work_pair == 1 || work_pair == 4) ? MAX_LAG_DIAG : MAX_LAG_SIDE;
                    bin_index <= 0;
                    spectrum_enb <= 0;
                    s_axis_data_tvalid <= 0;
                    s_axis_data_tlast <= 0;
                    s_axis_config_tvalid <= 1;
                    state <= CONFIGURE;
                end
                CONFIGURE: if (config_transfer) begin
                    s_axis_config_tvalid <= 0;
                    state <= PICK_BIN;
                end
                PICK_BIN: begin
                    if (use_bin) state <= READ_A;
                    else begin
                        s_axis_data_tdata <= 0;
                        s_axis_data_tvalid <= 1;
                        s_axis_data_tlast <= (bin_index == 4095);
                        state <= SEND_BIN;
                    end
                end
                READ_A: begin
                    spectrum_addrb <= {mic_a,bin_index};
                    spectrum_enb <= 1;
                    wait_count <= 0;
                    state <= WAIT_A;
                end
                WAIT_A: if (wait_count == RAM_READ_LATENCY-1)
                    state <= LATCH_A;
                else wait_count <= wait_count + 1'b1;
                LATCH_A: begin
                    bin_a <= spectrum_doutb;
                    spectrum_enb <= 0;
                    state <= READ_B;
                end
                READ_B: begin
                    spectrum_addrb <= {mic_b,bin_index};
                    spectrum_enb <= 1;
                    wait_count <= 0;
                    state <= WAIT_B;
                end
                WAIT_B: if (wait_count == RAM_READ_LATENCY-1)
                    state <= LATCH_B;
                else wait_count <= wait_count + 1'b1;
                LATCH_B: begin
                    bin_b <= spectrum_doutb;
                    spectrum_enb <= 0;
                    state <= WEIGHT_START;
                end
                WEIGHT_START: if (weight_in_ready) state <= WEIGHT_WAIT;
                WEIGHT_WAIT: if (weight_out_valid) begin
                    s_axis_data_tdata <= weight_out_data;
                    s_axis_data_tvalid <= 1;
                    s_axis_data_tlast <= weight_out_last;
                    state <= SEND_BIN;
                end
                SEND_BIN: if (input_transfer) begin
                    s_axis_data_tvalid <= 0;
                    s_axis_data_tlast <= 0;
                    if (bin_index == 4095) state <= WAIT_RESULT;
                    else begin
                        bin_index <= bin_index + 1'b1;
                        state <= PICK_BIN;
                    end
                end
                WAIT_RESULT: if (rx_finished) begin
                    pair_lag <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                    pair_peak <= best_peak;
                    pair_done <= 1;
                    pair_index <= work_pair;
                    lag_valid[work_pair] <= (best_peak > MIN_PEAK && !pair_tlast_error);
                    if (pair_tlast_error) frame_error <= 1;
                    case (work_pair)
                        0: lag12 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                        1: lag13 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                        2: lag14 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                        3: lag23 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                        4: lag24 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                        5: lag34 <= (best_peak > MIN_PEAK && !pair_tlast_error) ? best_lag : 16'sd0;
                    endcase
                    if (work_pair == 5) begin
                        busy <= 0;
                        done <= 1;
                        state <= IDLE;
                    end else begin
                        work_pair <= work_pair + 1'b1;
                        state <= PREPARE;
                    end
                end
                default: begin
                    state <= IDLE;
                    busy <= 0;
                    spectrum_enb <= 0;
                    s_axis_config_tvalid <= 0;
                    s_axis_data_tvalid <= 0;
                end
            endcase
        end
    end
endmodule
