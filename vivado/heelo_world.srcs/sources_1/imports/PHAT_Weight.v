`timescale 1ns / 1ps

// Aligned complex-bin input: A and B must be from the same frequency bin.
// Complex packing throughout: [47:24] = imaginary, [23:0] = real.
// Computes A*conj(B) / |A*conj(B)| with a magnitude threshold.
// Output uses signed 24-bit integers with unity = 2^22.
// rst is ACTIVE LOW, like the existing fft_ctrl and receive controller.
module PHAT_Weight #(
    parameter [48:0] MIN_MAG = 49'd1
) (
    input wire clk,
    input wire rst,
    input wire [47:0] s_axis_a_tdata,
    input wire [47:0] s_axis_b_tdata,
    input wire s_axis_tvalid,
    input wire s_axis_tlast,
    output wire s_axis_tready,
    output reg [47:0] m_axis_tdata,
    output reg m_axis_tvalid,
    output reg m_axis_tlast,
    input wire m_axis_tready
);
    wire core_ready, core_done;
    wire signed [23:0] core_re, core_im;
    reg calculating, last_latched;
    wire accept = s_axis_tvalid && s_axis_tready;

    assign s_axis_tready = rst && core_ready && !calculating && !m_axis_tvalid;

    PHAT_Norm_Core #(.MIN_MAG(MIN_MAG)) arithmetic (
        .clk(clk), .rst(!rst), .start(accept), .ready(core_ready),
        .a_re(s_axis_a_tdata[23:0]), .a_im(s_axis_a_tdata[47:24]),
        .b_re(s_axis_b_tdata[23:0]), .b_im(s_axis_b_tdata[47:24]),
        .done(core_done), .out_re(core_re), .out_im(core_im)
    );

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            calculating <= 0;
            last_latched <= 0;
            m_axis_tdata <= 0;
            m_axis_tvalid <= 0;
            m_axis_tlast <= 0;
        end else begin
            if (m_axis_tvalid && m_axis_tready)
                m_axis_tvalid <= 0;
            if (accept) begin
                calculating <= 1;
                last_latched <= s_axis_tlast;
            end
            if (calculating && core_done) begin
                calculating <= 0;
                m_axis_tdata <= {core_im, core_re};
                m_axis_tvalid <= 1;
                m_axis_tlast <= last_latched;
            end
        end
    end
endmodule
