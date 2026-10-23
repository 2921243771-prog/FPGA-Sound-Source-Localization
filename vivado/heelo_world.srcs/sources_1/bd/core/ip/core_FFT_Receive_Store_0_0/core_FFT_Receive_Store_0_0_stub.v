// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_Receive_Store_0_0/core_FFT_Receive_Store_0_0_stub.v
// Design      : core_FFT_Receive_Store_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FFT_Receive_Store,Vivado 2018.3" *)
module core_FFT_Receive_Store_0_0(clk, rst, start, channel_sel, m_axis_data_tdata, 
  m_axis_data_tvalid, m_axis_data_tlast, m_axis_data_tready, ram_ena, ram_wea, ram_addra, 
  ram_dina, busy, frame_done, frame_channel, channel_valid, all_channels_ready, tlast_error)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,channel_sel[1:0],m_axis_data_tdata[47:0],m_axis_data_tvalid,m_axis_data_tlast,m_axis_data_tready,ram_ena,ram_wea,ram_addra[13:0],ram_dina[47:0],busy,frame_done,frame_channel[1:0],channel_valid[3:0],all_channels_ready,tlast_error" */;
  input clk;
  input rst;
  input start;
  input [1:0]channel_sel;
  input [47:0]m_axis_data_tdata;
  input m_axis_data_tvalid;
  input m_axis_data_tlast;
  output m_axis_data_tready;
  output ram_ena;
  output ram_wea;
  output [13:0]ram_addra;
  output [47:0]ram_dina;
  output busy;
  output frame_done;
  output [1:0]frame_channel;
  output [3:0]channel_valid;
  output all_channels_ready;
  output tlast_error;
endmodule
