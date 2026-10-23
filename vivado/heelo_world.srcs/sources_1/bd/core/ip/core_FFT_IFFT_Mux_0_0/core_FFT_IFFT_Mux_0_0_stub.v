// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 16:28:26 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_IFFT_Mux_0_0/core_FFT_IFFT_Mux_0_0_stub.v
// Design      : core_FFT_IFFT_Mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FFT_IFFT_Mux,Vivado 2018.3" *)
module core_FFT_IFFT_Mux_0_0(select_ifft, forward_config_tdata, 
  forward_config_tvalid, forward_config_tready, forward_data_tdata, forward_data_tvalid, 
  forward_data_tlast, forward_data_tready, forward_result_tdata, forward_result_tvalid, 
  forward_result_tlast, forward_result_tready, inverse_config_tdata, 
  inverse_config_tvalid, inverse_config_tready, inverse_data_tdata, inverse_data_tvalid, 
  inverse_data_tlast, inverse_data_tready, inverse_result_tdata, inverse_result_tvalid, 
  inverse_result_tlast, inverse_result_tready, core_config_tdata, core_config_tvalid, 
  core_config_tready, core_data_tdata, core_data_tvalid, core_data_tlast, core_data_tready, 
  core_result_tdata, core_result_tvalid, core_result_tlast, core_result_tready)
/* synthesis syn_black_box black_box_pad_pin="select_ifft,forward_config_tdata[7:0],forward_config_tvalid,forward_config_tready,forward_data_tdata[47:0],forward_data_tvalid,forward_data_tlast,forward_data_tready,forward_result_tdata[47:0],forward_result_tvalid,forward_result_tlast,forward_result_tready,inverse_config_tdata[7:0],inverse_config_tvalid,inverse_config_tready,inverse_data_tdata[47:0],inverse_data_tvalid,inverse_data_tlast,inverse_data_tready,inverse_result_tdata[47:0],inverse_result_tvalid,inverse_result_tlast,inverse_result_tready,core_config_tdata[7:0],core_config_tvalid,core_config_tready,core_data_tdata[47:0],core_data_tvalid,core_data_tlast,core_data_tready,core_result_tdata[47:0],core_result_tvalid,core_result_tlast,core_result_tready" */;
  input select_ifft;
  input [7:0]forward_config_tdata;
  input forward_config_tvalid;
  output forward_config_tready;
  input [47:0]forward_data_tdata;
  input forward_data_tvalid;
  input forward_data_tlast;
  output forward_data_tready;
  output [47:0]forward_result_tdata;
  output forward_result_tvalid;
  output forward_result_tlast;
  input forward_result_tready;
  input [7:0]inverse_config_tdata;
  input inverse_config_tvalid;
  output inverse_config_tready;
  input [47:0]inverse_data_tdata;
  input inverse_data_tvalid;
  input inverse_data_tlast;
  output inverse_data_tready;
  output [47:0]inverse_result_tdata;
  output inverse_result_tvalid;
  output inverse_result_tlast;
  input inverse_result_tready;
  output [7:0]core_config_tdata;
  output core_config_tvalid;
  input core_config_tready;
  output [47:0]core_data_tdata;
  output core_data_tvalid;
  output core_data_tlast;
  input core_data_tready;
  input [47:0]core_result_tdata;
  input core_result_tvalid;
  input core_result_tlast;
  output core_result_tready;
endmodule
