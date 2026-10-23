`timescale 1ns / 1ps
// One frequency bin: C = A * conj(B), followed by C / |C|.
// Signed 24-bit FFT components. Outputs are signed Q1.22 (24 bits).
// A serial restoring square root and two parallel serial dividers share
// arithmetic across bins. No combinational '/' or real-number arithmetic.
module PHAT_Norm_Core #(
    parameter [48:0] MIN_MAG = 49'd1
)(
    input wire clk, input wire rst,
    input wire start, output wire ready,
    input wire signed [23:0] a_re, a_im, b_re, b_im,
    output reg done,
    output reg signed [23:0] out_re, out_im
);
    localparam IDLE=0, SUM=1, SQUARE=2, ROOT=3, DIV_INIT=4, DIVIDE=5;
    reg [2:0] state;
    reg signed [47:0] rr, ii, ir, ri;
    reg signed [48:0] cross_re, cross_im;
    wire [97:0] square_re = cross_re * cross_re;
    wire [97:0] square_im = cross_im * cross_im;
    reg [97:0] radicand;
    reg [50:0] root_rem;
    reg [48:0] root, denominator, abs_re, abs_im;
    reg [5:0] count;
    reg [49:0] div_rem_re, div_rem_im;
    reg [22:0] quotient_re, quotient_im;
    wire [50:0] root_shift = {root_rem[48:0], radicand[97:96]};
    wire [50:0] root_trial = {root, 2'b01};
    wire root_bit = root_shift >= root_trial;
    wire [50:0] root_rem_next = root_bit ? root_shift-root_trial : root_shift;
    wire [48:0] root_next = {root[47:0], root_bit};
    wire [49:0] re_shift = div_rem_re << 1;
    wire [49:0] im_shift = div_rem_im << 1;
    wire re_bit = re_shift >= {1'b0, denominator};
    wire im_bit = im_shift >= {1'b0, denominator};
    wire [22:0] q_re_next = {quotient_re[21:0], re_bit};
    wire [22:0] q_im_next = {quotient_im[21:0], im_bit};
    assign ready = state == IDLE;

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE; done <= 0; out_re <= 0; out_im <= 0;
            rr <= 0; ii <= 0; ir <= 0; ri <= 0;
            cross_re <= 0; cross_im <= 0;
            radicand <= 0; root_rem <= 0; root <= 0;
            denominator <= 1; abs_re <= 0; abs_im <= 0;
            count <= 0; div_rem_re <= 0; div_rem_im <= 0;
            quotient_re <= 0; quotient_im <= 0;
        end else begin
            done <= 0;
            case (state)
                IDLE: if (start) begin
                    rr <= a_re*b_re; ii <= a_im*b_im;
                    ir <= a_im*b_re; ri <= a_re*b_im;
                    state <= SUM;
                end
                SUM: begin
                    cross_re <= {rr[47],rr} + {ii[47],ii};
                    cross_im <= {ir[47],ir} - {ri[47],ri};
                    state <= SQUARE;
                end
                SQUARE: begin
                    abs_re <= cross_re[48] ? -cross_re : cross_re;
                    abs_im <= cross_im[48] ? -cross_im : cross_im;
                    radicand <= square_re + square_im;
                    root_rem <= 0; root <= 0; count <= 48;
                    state <= ROOT;
                end
                ROOT: begin
                    radicand <= radicand << 2;
                    root_rem <= root_rem_next;
                    root <= root_next;
                    if (count == 0) begin
                        // Ceiling sqrt keeps normalized components <= 1.
                        denominator <= root_next + (root_rem_next != 0);
                        state <= DIV_INIT;
                    end else count <= count - 1'b1;
                end
                DIV_INIT: begin
                    if (denominator == 0 || denominator < MIN_MAG) begin
                        out_re <= 0; out_im <= 0; done <= 1; state <= IDLE;
                    end else begin
                        quotient_re <= abs_re >= denominator ? 1 : 0;
                        quotient_im <= abs_im >= denominator ? 1 : 0;
                        div_rem_re <= abs_re >= denominator ? abs_re-denominator : abs_re;
                        div_rem_im <= abs_im >= denominator ? abs_im-denominator : abs_im;
                        count <= 21;
                        state <= DIVIDE;
                    end
                end
                DIVIDE: begin
                    quotient_re <= q_re_next; quotient_im <= q_im_next;
                    div_rem_re <= re_bit ? re_shift-{1'b0,denominator} : re_shift;
                    div_rem_im <= im_bit ? im_shift-{1'b0,denominator} : im_shift;
                    if (count == 0) begin
                        out_re <= cross_re[48] ? -$signed({1'b0,q_re_next}) : $signed({1'b0,q_re_next});
                        out_im <= cross_im[48] ? -$signed({1'b0,q_im_next}) : $signed({1'b0,q_im_next});
                        done <= 1; state <= IDLE;
                    end else count <= count - 1'b1;
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule
