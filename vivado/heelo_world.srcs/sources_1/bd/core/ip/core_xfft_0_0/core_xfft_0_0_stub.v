// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:26:17 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_xfft_0_0/core_xfft_0_0_stub.v
// Design      : core_xfft_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xfft_v9_1_1,Vivado 2018.3" *)
module core_xfft_0_0(aclk, aresetn, s_axis_config_tdata, 
  s_axis_config_tvalid, s_axis_config_tready, s_axis_data_tdata, s_axis_data_tvalid, 
  s_axis_data_tready, s_axis_data_tlast, m_axis_data_tdata, m_axis_data_tuser, 
  m_axis_data_tvalid, m_axis_data_tready, m_axis_data_tlast, m_axis_status_tdata, 
  m_axis_status_tvalid, m_axis_status_tready, event_frame_started, 
  event_tlast_unexpected, event_tlast_missing, event_status_channel_halt, 
  event_data_in_channel_halt, event_data_out_channel_halt)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_config_tdata[7:0],s_axis_config_tvalid,s_axis_config_tready,s_axis_data_tdata[47:0],s_axis_data_tvalid,s_axis_data_tready,s_axis_data_tlast,m_axis_data_tdata[47:0],m_axis_data_tuser[7:0],m_axis_data_tvalid,m_axis_data_tready,m_axis_data_tlast,m_axis_status_tdata[7:0],m_axis_status_tvalid,m_axis_status_tready,event_frame_started,event_tlast_unexpected,event_tlast_missing,event_status_channel_halt,event_data_in_channel_halt,event_data_out_channel_halt" */;
  input aclk;
  input aresetn;
  input [7:0]s_axis_config_tdata;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [47:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input s_axis_data_tlast;
  output [47:0]m_axis_data_tdata;
  output [7:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output m_axis_data_tlast;
  output [7:0]m_axis_status_tdata;
  output m_axis_status_tvalid;
  input m_axis_status_tready;
  output event_frame_started;
  output event_tlast_unexpected;
  output event_tlast_missing;
  output event_status_channel_halt;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;
endmodule
