// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 17:02:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_I2S_drive_0_1/core_I2S_drive_0_1_stub.v
// Design      : core_I2S_drive_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "I2S_drive,Vivado 2018.3" *)
module core_I2S_drive_0_1(rst, SCK, WS, locked, SD, SD1, data1, data2, data3, data4, 
  sample_valid, MMCM_CLOCK)
/* synthesis syn_black_box black_box_pad_pin="rst,SCK,WS,locked,SD,SD1,data1[23:0],data2[23:0],data3[23:0],data4[23:0],sample_valid,MMCM_CLOCK" */;
  input rst;
  output SCK;
  output WS;
  input locked;
  input SD;
  input SD1;
  output [23:0]data1;
  output [23:0]data2;
  output [23:0]data3;
  output [23:0]data4;
  output sample_valid;
  input MMCM_CLOCK;
endmodule
