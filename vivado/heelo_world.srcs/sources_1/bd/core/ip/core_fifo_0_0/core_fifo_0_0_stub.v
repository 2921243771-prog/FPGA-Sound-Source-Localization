// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:55 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fifo_0_0/core_fifo_0_0_stub.v
// Design      : core_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fifo,Vivado 2018.3" *)
module core_fifo_0_0(rst, data1, data2, data3, data4, sample_valid, 
  fifo_full, fifo_empty, fifo_dout, Ram_en, read_toggle, fifo_din, fifo_wr_en, fifo_rd_en, mic1, 
  mic2, mic3, mic4, read_valid, rd_clk, fifo_reset)
/* synthesis syn_black_box black_box_pad_pin="rst,data1[23:0],data2[23:0],data3[23:0],data4[23:0],sample_valid,fifo_full,fifo_empty,fifo_dout[95:0],Ram_en,read_toggle,fifo_din[95:0],fifo_wr_en,fifo_rd_en,mic1[23:0],mic2[23:0],mic3[23:0],mic4[23:0],read_valid,rd_clk,fifo_reset" */;
  input rst;
  input [23:0]data1;
  input [23:0]data2;
  input [23:0]data3;
  input [23:0]data4;
  input sample_valid;
  input fifo_full;
  input fifo_empty;
  input [95:0]fifo_dout;
  input Ram_en;
  input read_toggle;
  output [95:0]fifo_din;
  output fifo_wr_en;
  output fifo_rd_en;
  output [23:0]mic1;
  output [23:0]mic2;
  output [23:0]mic3;
  output [23:0]mic4;
  output read_valid;
  input rd_clk;
  output fifo_reset;
endmodule
