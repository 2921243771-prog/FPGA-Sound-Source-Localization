// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 16:30:11 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_ila_0_1/core_ila_0_1_stub.v
// Design      : core_ila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3" *)
module core_ila_0_1(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[47:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[1:0],probe8[47:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[13:0],probe17[0:0],probe18[0:0],probe19[0:0],probe20[0:0],probe21[0:0],probe22[2:0],probe23[15:0],probe24[5:0],probe25[0:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [47:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [1:0]probe7;
  input [47:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [13:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [0:0]probe19;
  input [0:0]probe20;
  input [0:0]probe21;
  input [2:0]probe22;
  input [15:0]probe23;
  input [5:0]probe24;
  input [0:0]probe25;
endmodule
