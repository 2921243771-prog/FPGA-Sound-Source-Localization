`timescale 1ns / 1ps

// FFT / IFFT input controller, selected at synthesis time by IFFT_MODE.
// IFFT_MODE = 0: four microphones, each 2048 real samples + 2048 zeros.
// IFFT_MODE = 1: one frame of 4096 complex PHAT results, without zero padding.
// Sampling BRAM: Port A = 96 x 2048, Port B = 24 x 8192.
// Port B mapping: addrb = {sample_index[10:0], channel_sel[1:0]}.
// FFT: one channel, fixed 4096 points, block floating point, 24-bit complex.
// clk = sampling BRAM clkb = FFT aclk = FFT_Receive_Store clk.
// rst is active low; synchronize its release to clk in the top level.
// Ram_ready must already be synchronized to clk. Its rising edge starts a batch.
// Keep the captured sampling RAM unchanged until batch_done.
module fft_ctrl #(
    parameter integer RAM_READ_LATENCY = 2,
    parameter integer IFFT_MODE = 0
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        Ram_ready,

    // RAM Port B. In IFFT mode use addrb[11:0] for the 4096 x 48 work RAM.
    output reg  [12:0] addrb,
    output reg         enb,
    input  wire [23:0] data,
    input  wire [47:0] ifft_data,

    // Fixed-length BFP: bit 0 FWD_INV = 1 for FFT, 0 for IFFT.
    output reg  [7:0]  s_axis_config_tdata,
    output reg         s_axis_config_tvalid,
    input  wire        s_axis_config_tready,

    // FFT S_AXIS_DATA: low 24 bits real, high 24 bits imaginary.
    output reg  [47:0] tdata,
    output reg         s_axis_data_tvalid,
    output reg         s_axis_data_tlast,
    input  wire        s_axis_data_tready,

    // Connect to FFT_Receive_Store.
    output wire        fft_rx_start,
    output reg  [1:0]  channel_sel,
    input  wire        fft_frame_done,

    output reg         busy,
    output reg         batch_done
);

    localparam [2:0] IDLE        = 3'd0;
    localparam [2:0] FFT_CONFIG  = 3'd1;
    localparam [2:0] RAM_REQUEST = 3'd2;
    localparam [2:0] WAIT_RAM    = 3'd3;
    localparam [2:0] LATCH_RAM   = 3'd4;
    localparam [2:0] FFT_SEND    = 3'd5;
    localparam [2:0] WAIT_RESULT = 3'd6;

    localparam integer WAIT_WIDTH =
        (RAM_READ_LATENCY <= 1) ? 1 : $clog2(RAM_READ_LATENCY);
    localparam [7:0] CONFIG_DATA = (IFFT_MODE != 0) ? 8'h00 : 8'h01;

    reg [2:0] state;
    reg [11:0] send_index;
    reg [WAIT_WIDTH-1:0] wait_count;
    reg Ram_ready_d;
    wire config_transfer;
    wire data_transfer;

    assign config_transfer = s_axis_config_tvalid && s_axis_config_tready;
    assign data_transfer = s_axis_data_tvalid && s_axis_data_tready;
    // One accepted configuration arms the output receiver for this channel.
    assign fft_rx_start = rst && config_transfer;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state                 <= IDLE;
            send_index            <= 12'd0;
            wait_count            <= 0;
            Ram_ready_d           <= 1'b0;
            addrb                 <= 13'd0;
            enb                   <= 1'b0;
            tdata                 <= 48'd0;
            s_axis_data_tvalid    <= 1'b0;
            s_axis_data_tlast     <= 1'b0;
            s_axis_config_tdata   <= CONFIG_DATA;
            s_axis_config_tvalid  <= 1'b0;
            channel_sel           <= 2'd0;
            busy                  <= 1'b0;
            batch_done            <= 1'b0;
        end else begin
            Ram_ready_d <= Ram_ready;
            batch_done <= 1'b0;

            case (state)
                IDLE: begin
                    enb <= 1'b0;
                    s_axis_data_tvalid <= 1'b0;
                    s_axis_data_tlast <= 1'b0;
                    s_axis_config_tvalid <= 1'b0;
                    if (Ram_ready && !Ram_ready_d) begin
                        channel_sel <= 2'd0;
                        send_index <= 12'd0;
                        busy <= 1'b1;
                        s_axis_config_tdata <= CONFIG_DATA;
                        s_axis_config_tvalid <= 1'b1;
                        state <= FFT_CONFIG;
                    end
                end

                FFT_CONFIG: begin
                    // Keep config data/valid stable until actual acceptance.
                    if (config_transfer) begin
                        s_axis_config_tvalid <= 1'b0;
                        state <= RAM_REQUEST;
                    end
                end

                RAM_REQUEST: begin
                    // These outputs become valid AFTER this rising edge.
                    // BRAM therefore samples the request at the following edge.
                    if (IFFT_MODE != 0)
                        addrb <= {1'b0, send_index};
                    else
                        addrb <= {send_index[10:0], channel_sel};
                    enb <= 1'b1;
                    wait_count <= 0;
                    state <= WAIT_RAM;
                end

                WAIT_RAM: begin
                    // Keep ENB asserted through all BRAM pipeline stages.
                    // On the final wait edge, BRAM data updates after the edge.
                    // LATCH_RAM samples it on the next rising edge.
                    if (wait_count == RAM_READ_LATENCY - 1) begin
                        state <= LATCH_RAM;
                    end else begin
                        wait_count <= wait_count + 1'b1;
                    end
                end

                LATCH_RAM: begin
                    // Hold a local copy: a stalled FFT must see stable data.
                    if (IFFT_MODE != 0)
                        tdata <= ifft_data;
                    else
                        tdata <= {24'd0, data};
                    s_axis_data_tvalid <= 1'b1;
                    s_axis_data_tlast <= (send_index == 12'd4095);
                    enb <= 1'b0;
                    state <= FFT_SEND;
                end

                FFT_SEND: begin
                    // With no handshake, leave data, valid, last, and index alone.
                    if (data_transfer) begin
                        if (send_index == 12'd4095) begin
                            s_axis_data_tvalid <= 1'b0;
                            s_axis_data_tlast <= 1'b0;
                            state <= WAIT_RESULT;
                        end else if ((IFFT_MODE == 0) && (send_index >= 12'd2047)) begin
                            // After sample 2047, supply zeros without reading RAM.
                            // Padding can transfer on every ready clock cycle.
                            send_index <= send_index + 1'b1;
                            tdata <= 48'd0;
                            s_axis_data_tvalid <= 1'b1;
                            s_axis_data_tlast <= (send_index == 12'd4094);
                        end else begin
                            send_index <= send_index + 1'b1;
                            s_axis_data_tvalid <= 1'b0;
                            s_axis_data_tlast <= 1'b0;
                            state <= RAM_REQUEST;
                        end
                    end
                end

                WAIT_RESULT: begin
                    // Do not change the receiver's channel until all output
                    // points from this transform have actually been stored.
                    if (fft_frame_done) begin
                        // IFFT processes one microphone pair per Ram_ready edge.
                        // PHAT/peak control chooses and prepares the next pair.
                        if ((IFFT_MODE != 0) || (channel_sel == 2'd3)) begin
                            busy <= 1'b0;
                            batch_done <= 1'b1;
                            state <= IDLE;
                        end else begin
                            channel_sel <= channel_sel + 1'b1;
                            send_index <= 12'd0;
                            s_axis_config_tdata <= CONFIG_DATA;
                            s_axis_config_tvalid <= 1'b1;
                            state <= FFT_CONFIG;
                        end
                    end
                end

                default: begin
                    state <= IDLE;
                    busy <= 1'b0;
                    enb <= 1'b0;
                    s_axis_config_tvalid <= 1'b0;
                    s_axis_data_tvalid <= 1'b0;
                    s_axis_data_tlast <= 1'b0;
                end
            endcase
        end
    end

endmodule
