// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 18:52:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Lag_To_PS_0_0/core_Lag_To_PS_0_0_stub.v
// Design      : core_Lag_To_PS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Lag_To_PS,Vivado 2018.3" *)
module core_Lag_To_PS_0_0(clk, rst, done, lag12, lag13, lag14, lag23, lag24, lag34, 
  lag_valid, frame_error, gpio_word0, gpio_word1, gpio_word2, gpio_status)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,done,lag12[15:0],lag13[15:0],lag14[15:0],lag23[15:0],lag24[15:0],lag34[15:0],lag_valid[5:0],frame_error,gpio_word0[31:0],gpio_word1[31:0],gpio_word2[31:0],gpio_status[31:0]" */;
  input clk;
  input rst;
  input done;
  input [15:0]lag12;
  input [15:0]lag13;
  input [15:0]lag14;
  input [15:0]lag23;
  input [15:0]lag24;
  input [15:0]lag34;
  input [5:0]lag_valid;
  input frame_error;
  output [31:0]gpio_word0;
  output [31:0]gpio_word1;
  output [31:0]gpio_word2;
  output [31:0]gpio_status;
endmodule
