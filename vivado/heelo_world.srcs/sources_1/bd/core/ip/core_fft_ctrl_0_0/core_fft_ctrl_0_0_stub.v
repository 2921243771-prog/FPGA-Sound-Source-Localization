// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fft_ctrl_0_0/core_fft_ctrl_0_0_stub.v
// Design      : core_fft_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fft_ctrl,Vivado 2018.3" *)
module core_fft_ctrl_0_0(clk, rst, Ram_ready, addrb, enb, data, ifft_data, 
  s_axis_config_tdata, s_axis_config_tvalid, s_axis_config_tready, tdata, 
  s_axis_data_tvalid, s_axis_data_tlast, s_axis_data_tready, fft_rx_start, channel_sel, 
  fft_frame_done, busy, batch_done)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,Ram_ready,addrb[12:0],enb,data[23:0],ifft_data[47:0],s_axis_config_tdata[7:0],s_axis_config_tvalid,s_axis_config_tready,tdata[47:0],s_axis_data_tvalid,s_axis_data_tlast,s_axis_data_tready,fft_rx_start,channel_sel[1:0],fft_frame_done,busy,batch_done" */;
  input clk;
  input rst;
  input Ram_ready;
  output [12:0]addrb;
  output enb;
  input [23:0]data;
  input [47:0]ifft_data;
  output [7:0]s_axis_config_tdata;
  output s_axis_config_tvalid;
  input s_axis_config_tready;
  output [47:0]tdata;
  output s_axis_data_tvalid;
  output s_axis_data_tlast;
  input s_axis_data_tready;
  output fft_rx_start;
  output [1:0]channel_sel;
  input fft_frame_done;
  output busy;
  output batch_done;
endmodule
