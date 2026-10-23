`timescale 1ns / 1ps



module fifo(
    
    input  wire        rst,          // 低电平复位
    input  wire [23:0] data1,
    input  wire [23:0] data2,
    input  wire [23:0] data3,
    input  wire [23:0] data4,
    input  wire        sample_valid, // 写时钟域，单周期脉冲
    input  wire        fifo_full,
    input  wire        fifo_empty,
    input  wire [95:0] fifo_dout,
    input  wire        Ram_en,
    input  wire        read_toggle,     // 读时钟域，读取一帧
    
    output wire [95:0] fifo_din,
    output wire        fifo_wr_en,
    output wire        fifo_rd_en,
    output wire [23:0] mic1,
    output wire [23:0] mic2,
    output wire [23:0] mic3,
    output wire [23:0] mic4,
    output wire        read_valid,
    input wire rd_clk ,  // 与控制 GPIO 相同的 AXI 时钟      
    output wire fifo_reset

    );
    assign fifo_reset = ~rst;
    reg read_toggle_d;
     assign fifo_din   = {data4,data3,data2, data1};
     assign fifo_wr_en = sample_valid && !fifo_full && rst&&Ram_en;
     assign mic1  = fifo_dout[23:0];
     assign mic2 = fifo_dout[47:24];
     assign mic3 = fifo_dout[71:48];
     assign mic4 = fifo_dout[95:72];
     assign read_valid = !fifo_empty && rst;
  always @(posedge rd_clk or negedge rst) begin
    if (!rst)
        read_toggle_d <= 1'b0;
    else
        read_toggle_d <= read_toggle;
end
    wire read_req;
assign read_req = read_toggle ^ read_toggle_d;
assign fifo_rd_en = read_req && !fifo_empty && rst;
endmodule
