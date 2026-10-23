`timescale 1ns / 1ps
// Two complete four-channel frames. All ports use clk; put an asynchronous
// FIFO before this module if the I2S receiver uses a different clock.
module gcc_frame_buffer #(
    parameter FRAME_LOG2 = 11
)(
    input wire clk, input wire rst,
    input wire sample_valid, output wire sample_ready,
    input wire signed [23:0] mic1, mic2, mic3, mic4,
    output wire frame_available, input wire frame_release,
    input wire rd_en, input wire [FRAME_LOG2-1:0] rd_addr,
    output reg signed [23:0] rd_mic1, rd_mic2, rd_mic3, rd_mic4,
    output wire signed [23:0] mean1, mean2, mean3, mean4
);
    localparam FRAME_N = 1 << FRAME_LOG2;
    localparam SUM_W = 24 + FRAME_LOG2;
    (* ram_style = "block" *) reg [23:0] mem1 [0:2*FRAME_N-1];
    (* ram_style = "block" *) reg [23:0] mem2 [0:2*FRAME_N-1];
    (* ram_style = "block" *) reg [23:0] mem3 [0:2*FRAME_N-1];
    (* ram_style = "block" *) reg [23:0] mem4 [0:2*FRAME_N-1];
    reg [1:0] full;
    reg wr_bank, rd_bank;
    reg [FRAME_LOG2-1:0] wr_addr;
    reg signed [SUM_W-1:0] sum1, sum2, sum3, sum4;
    reg signed [23:0] means1 [0:1];
    reg signed [23:0] means2 [0:1];
    reg signed [23:0] means3 [0:1];
    reg signed [23:0] means4 [0:1];
    wire signed [SUM_W-1:0] next1 = sum1 + {{FRAME_LOG2{mic1[23]}}, mic1};
    wire signed [SUM_W-1:0] next2 = sum2 + {{FRAME_LOG2{mic2[23]}}, mic2};
    wire signed [SUM_W-1:0] next3 = sum3 + {{FRAME_LOG2{mic3[23]}}, mic3};
    wire signed [SUM_W-1:0] next4 = sum4 + {{FRAME_LOG2{mic4[23]}}, mic4};
    assign sample_ready = !rst && !full[wr_bank];
    assign frame_available = !rst && full[rd_bank];
    assign mean1 = means1[rd_bank];
    assign mean2 = means2[rd_bank];
    assign mean3 = means3[rd_bank];
    assign mean4 = means4[rd_bank];

    always @(posedge clk) begin
        if (sample_valid && sample_ready) begin
            mem1[{wr_bank, wr_addr}] <= mic1;
            mem2[{wr_bank, wr_addr}] <= mic2;
            mem3[{wr_bank, wr_addr}] <= mic3;
            mem4[{wr_bank, wr_addr}] <= mic4;
        end
        if (rd_en) begin
            rd_mic1 <= mem1[{rd_bank, rd_addr}];
            rd_mic2 <= mem2[{rd_bank, rd_addr}];
            rd_mic3 <= mem3[{rd_bank, rd_addr}];
            rd_mic4 <= mem4[{rd_bank, rd_addr}];
        end
    end
    always @(posedge clk) begin
        if (rst) begin
            full <= 0;
            wr_bank <= 0; rd_bank <= 0; wr_addr <= 0;
            sum1 <= 0; sum2 <= 0; sum3 <= 0; sum4 <= 0;
            means1[0] <= 0; means1[1] <= 0;
            means2[0] <= 0; means2[1] <= 0;
            means3[0] <= 0; means3[1] <= 0;
            means4[0] <= 0; means4[1] <= 0;
        end else begin
            if (frame_release && frame_available) begin
                full[rd_bank] <= 0;
                rd_bank <= ~rd_bank;
            end
            if (sample_valid && sample_ready) begin
                if (wr_addr == FRAME_N-1) begin
                    means1[wr_bank] <= next1 >>> FRAME_LOG2;
                    means2[wr_bank] <= next2 >>> FRAME_LOG2;
                    means3[wr_bank] <= next3 >>> FRAME_LOG2;
                    means4[wr_bank] <= next4 >>> FRAME_LOG2;
                    sum1 <= 0; sum2 <= 0; sum3 <= 0; sum4 <= 0;
                    full[wr_bank] <= 1;
                    wr_bank <= ~wr_bank;
                    wr_addr <= 0;
                end else begin
                    sum1 <= next1; sum2 <= next2;
                    sum3 <= next3; sum4 <= next4;
                    wr_addr <= wr_addr + 1'b1;
                end
            end
        end
    end
endmodule
