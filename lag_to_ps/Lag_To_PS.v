`timescale 1ns / 1ps

// Same 50MHz clock as PHAT_IFFT_Ctrl and both AXI GPIO peripherals.
// Latch ONE completed six-pair batch. All four GPIO words stay unchanged
// until the next done pulse. PS checks status before/after the three reads.
module Lag_To_PS (
    input wire clk,
    input wire rst,
    input wire done,
    input wire signed [15:0] lag12,
    input wire signed [15:0] lag13,
    input wire signed [15:0] lag14,
    input wire signed [15:0] lag23,
    input wire signed [15:0] lag24,
    input wire signed [15:0] lag34,
    input wire [5:0] lag_valid,
    input wire frame_error,
    output reg [31:0] gpio_word0,
    output reg [31:0] gpio_word1,
    output reg [31:0] gpio_word2,
    output wire [31:0] gpio_status
);
    reg [23:0] sequence_number;
    reg have_result;
    reg [5:0] valid_latched;
    reg error_latched;
    assign gpio_status = {sequence_number,error_latched,have_result,valid_latched};

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            gpio_word0 <= 0;
            gpio_word1 <= 0;
            gpio_word2 <= 0;
            sequence_number <= 0;
            have_result <= 0;
            valid_latched <= 0;
            error_latched <= 0;
        end else if (done) begin
            // Producer raises done alongside its final result. This block
            // observes that done at the following edge, after lag34 updates.
            gpio_word0 <= {lag13,lag12};
            gpio_word1 <= {lag23,lag14};
            gpio_word2 <= {lag34,lag24};
            sequence_number <= sequence_number + 1'b1;
            have_result <= 1;
            valid_latched <= lag_valid;
            error_latched <= frame_error;
        end
    end
endmodule
