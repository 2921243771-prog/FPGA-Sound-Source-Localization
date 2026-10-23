// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 16:28:41 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_PHAT_IFFT_Ctrl_0_0/core_PHAT_IFFT_Ctrl_0_0_stub.v
// Design      : core_PHAT_IFFT_Ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PHAT_IFFT_Ctrl,Vivado 2018.3" *)
module core_PHAT_IFFT_Ctrl_0_0(clk, rst, start, busy, done, spectrum_addrb, 
  spectrum_enb, spectrum_doutb, s_axis_config_tdata, s_axis_config_tvalid, 
  s_axis_config_tready, s_axis_data_tdata, s_axis_data_tvalid, s_axis_data_tlast, 
  s_axis_data_tready, m_axis_data_tdata, m_axis_data_tvalid, m_axis_data_tlast, 
  m_axis_data_tready, pair_index, pair_done, pair_lag, pair_peak, lag12, lag13, lag14, lag23, lag24, 
  lag34, lag_valid, frame_error)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,busy,done,spectrum_addrb[13:0],spectrum_enb,spectrum_doutb[47:0],s_axis_config_tdata[7:0],s_axis_config_tvalid,s_axis_config_tready,s_axis_data_tdata[47:0],s_axis_data_tvalid,s_axis_data_tlast,s_axis_data_tready,m_axis_data_tdata[47:0],m_axis_data_tvalid,m_axis_data_tlast,m_axis_data_tready,pair_index[2:0],pair_done,pair_lag[15:0],pair_peak[23:0],lag12[15:0],lag13[15:0],lag14[15:0],lag23[15:0],lag24[15:0],lag34[15:0],lag_valid[5:0],frame_error" */;
  input clk;
  input rst;
  input start;
  output busy;
  output done;
  output [13:0]spectrum_addrb;
  output spectrum_enb;
  input [47:0]spectrum_doutb;
  output [7:0]s_axis_config_tdata;
  output s_axis_config_tvalid;
  input s_axis_config_tready;
  output [47:0]s_axis_data_tdata;
  output s_axis_data_tvalid;
  output s_axis_data_tlast;
  input s_axis_data_tready;
  input [47:0]m_axis_data_tdata;
  input m_axis_data_tvalid;
  input m_axis_data_tlast;
  output m_axis_data_tready;
  output [2:0]pair_index;
  output pair_done;
  output [15:0]pair_lag;
  output [23:0]pair_peak;
  output [15:0]lag12;
  output [15:0]lag13;
  output [15:0]lag14;
  output [15:0]lag23;
  output [15:0]lag24;
  output [15:0]lag34;
  output [5:0]lag_valid;
  output frame_error;
endmodule
