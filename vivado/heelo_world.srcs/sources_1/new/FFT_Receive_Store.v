`timescale 1ns / 1ps

// Receive one 4096-point, 24-bit complex FFT frame into an external BRAM.
// BRAM configuration: Native, Stand Alone, Simple Dual Port RAM,
//                     Port A write width = 48, depth = 16384.
// FFT output order must be Natural Order.
// clk must be the same clock as FFT aclk and BRAM clka.
// rst is active low; synchronize its release to clk in the top-level design.
//
// Pulse start for one clock while busy = 0, BEFORE sending data to the FFT.
// channel_sel is latched on start: 0, 1, 2, 3 identify the four microphones.
// Re-starting a channel intentionally overwrites that channel's old spectrum.
// After all four channels complete, the next start begins a fresh batch and
// clears the completion mask, so old/new spectra are not marked as one batch.
// Keep the microphone sampling RAM separate from this spectrum RAM.
module FFT_Receive_Store (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [1:0]  channel_sel,

    // Connect these directly to the FFT's M_AXIS_DATA signals.
    input  wire [47:0] m_axis_data_tdata,
    input  wire        m_axis_data_tvalid,
    input  wire        m_axis_data_tlast,
    output wire        m_axis_data_tready,

    // Connect these directly to spectrum BRAM Port A.
    output wire        ram_ena,
    output wire        ram_wea,
    output wire [13:0] ram_addra,
    output wire [47:0] ram_dina,

    output reg         busy,
    output reg         frame_done,
    output wire [1:0]  frame_channel,
    output reg  [3:0]  channel_valid,
    output wire        all_channels_ready,
    output reg         tlast_error
);

    reg  [1:0]  channel_latched;
    reg  [11:0] point_index;
    wire        transfer;
    wire        last_point;

    assign m_axis_data_tready = rst && busy;
    assign transfer = m_axis_data_tvalid && m_axis_data_tready;
    assign last_point = (point_index == 12'd4095);

    // One accepted FFT output = one BRAM write at the SAME rising edge.
    // Do not register wea separately: doing so can shift data by one cycle.
    assign ram_ena   = transfer;
    assign ram_wea   = transfer;
    assign ram_addra = {channel_latched, point_index};
    assign ram_dina  = m_axis_data_tdata;

    assign frame_channel = channel_latched;
    assign all_channels_ready = &channel_valid;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            channel_latched <= 2'd0;
            point_index     <= 12'd0;
            busy            <= 1'b0;
            frame_done      <= 1'b0;
            channel_valid   <= 4'b0000;
            tlast_error     <= 1'b0;
        end else begin
            frame_done <= 1'b0;

            if (!busy) begin
                if (start) begin
                    channel_latched            <= channel_sel;
                    point_index                <= 12'd0;
                    busy                       <= 1'b1;
                    if (&channel_valid)
                        channel_valid <= 4'b0000;
                    else
                        channel_valid[channel_sel] <= 1'b0;
                    tlast_error                <= 1'b0;
                end
            end else if (transfer) begin
                // Check TLAST, but use the configured length to delimit a frame.
                // An early TLAST must not truncate or wrap the BRAM frame.
                if (m_axis_data_tlast != last_point)
                    tlast_error <= 1'b1;

                if (last_point) begin
                    // The final point is being written at this rising edge.
                    // busy becomes 0 afterwards, preventing an extra write.
                    busy                           <= 1'b0;
                    frame_done                     <= 1'b1;
                    channel_valid[channel_latched] <= 1'b1;
                end else begin
                    point_index <= point_index + 1'b1;
                end
            end
        end
    end

endmodule
