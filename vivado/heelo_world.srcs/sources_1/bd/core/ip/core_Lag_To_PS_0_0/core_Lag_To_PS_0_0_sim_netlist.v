// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 18:52:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Lag_To_PS_0_0/core_Lag_To_PS_0_0_sim_netlist.v
// Design      : core_Lag_To_PS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_Lag_To_PS_0_0,Lag_To_PS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Lag_To_PS,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_Lag_To_PS_0_0
   (clk,
    rst,
    done,
    lag12,
    lag13,
    lag14,
    lag23,
    lag24,
    lag34,
    lag_valid,
    frame_error,
    gpio_word0,
    gpio_word1,
    gpio_word2,
    gpio_status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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

  wire clk;
  wire done;
  wire frame_error;
  wire [31:0]gpio_status;
  wire [31:0]gpio_word0;
  wire [31:0]gpio_word1;
  wire [31:0]gpio_word2;
  wire [15:0]lag12;
  wire [15:0]lag13;
  wire [15:0]lag14;
  wire [15:0]lag23;
  wire [15:0]lag24;
  wire [15:0]lag34;
  wire [5:0]lag_valid;
  wire rst;

  core_Lag_To_PS_0_0_Lag_To_PS inst
       (.D({lag13,lag12}),
        .clk(clk),
        .done(done),
        .frame_error(frame_error),
        .gpio_status(gpio_status),
        .gpio_word0(gpio_word0),
        .gpio_word1(gpio_word1),
        .\gpio_word1_reg[31]_0 ({lag23,lag14}),
        .gpio_word2(gpio_word2),
        .\gpio_word2_reg[31]_0 ({lag34,lag24}),
        .lag_valid(lag_valid),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Lag_To_PS" *) 
module core_Lag_To_PS_0_0_Lag_To_PS
   (gpio_word0,
    gpio_word1,
    gpio_word2,
    gpio_status,
    done,
    D,
    clk,
    \gpio_word1_reg[31]_0 ,
    \gpio_word2_reg[31]_0 ,
    lag_valid,
    frame_error,
    rst);
  output [31:0]gpio_word0;
  output [31:0]gpio_word1;
  output [31:0]gpio_word2;
  output [31:0]gpio_status;
  input done;
  input [31:0]D;
  input clk;
  input [31:0]\gpio_word1_reg[31]_0 ;
  input [31:0]\gpio_word2_reg[31]_0 ;
  input [5:0]lag_valid;
  input frame_error;
  input rst;

  wire [31:0]D;
  wire clk;
  wire done;
  wire frame_error;
  wire [31:0]gpio_status;
  wire [31:0]gpio_word0;
  wire \gpio_word0[31]_i_1_n_0 ;
  wire [31:0]gpio_word1;
  wire [31:0]\gpio_word1_reg[31]_0 ;
  wire [31:0]gpio_word2;
  wire [31:0]\gpio_word2_reg[31]_0 ;
  wire [5:0]lag_valid;
  wire rst;
  wire \sequence_number[3]_i_2_n_0 ;
  wire \sequence_number_reg[11]_i_1_n_0 ;
  wire \sequence_number_reg[11]_i_1_n_1 ;
  wire \sequence_number_reg[11]_i_1_n_2 ;
  wire \sequence_number_reg[11]_i_1_n_3 ;
  wire \sequence_number_reg[11]_i_1_n_4 ;
  wire \sequence_number_reg[11]_i_1_n_5 ;
  wire \sequence_number_reg[11]_i_1_n_6 ;
  wire \sequence_number_reg[11]_i_1_n_7 ;
  wire \sequence_number_reg[15]_i_1_n_0 ;
  wire \sequence_number_reg[15]_i_1_n_1 ;
  wire \sequence_number_reg[15]_i_1_n_2 ;
  wire \sequence_number_reg[15]_i_1_n_3 ;
  wire \sequence_number_reg[15]_i_1_n_4 ;
  wire \sequence_number_reg[15]_i_1_n_5 ;
  wire \sequence_number_reg[15]_i_1_n_6 ;
  wire \sequence_number_reg[15]_i_1_n_7 ;
  wire \sequence_number_reg[19]_i_1_n_0 ;
  wire \sequence_number_reg[19]_i_1_n_1 ;
  wire \sequence_number_reg[19]_i_1_n_2 ;
  wire \sequence_number_reg[19]_i_1_n_3 ;
  wire \sequence_number_reg[19]_i_1_n_4 ;
  wire \sequence_number_reg[19]_i_1_n_5 ;
  wire \sequence_number_reg[19]_i_1_n_6 ;
  wire \sequence_number_reg[19]_i_1_n_7 ;
  wire \sequence_number_reg[23]_i_1_n_1 ;
  wire \sequence_number_reg[23]_i_1_n_2 ;
  wire \sequence_number_reg[23]_i_1_n_3 ;
  wire \sequence_number_reg[23]_i_1_n_4 ;
  wire \sequence_number_reg[23]_i_1_n_5 ;
  wire \sequence_number_reg[23]_i_1_n_6 ;
  wire \sequence_number_reg[23]_i_1_n_7 ;
  wire \sequence_number_reg[3]_i_1_n_0 ;
  wire \sequence_number_reg[3]_i_1_n_1 ;
  wire \sequence_number_reg[3]_i_1_n_2 ;
  wire \sequence_number_reg[3]_i_1_n_3 ;
  wire \sequence_number_reg[3]_i_1_n_4 ;
  wire \sequence_number_reg[3]_i_1_n_5 ;
  wire \sequence_number_reg[3]_i_1_n_6 ;
  wire \sequence_number_reg[3]_i_1_n_7 ;
  wire \sequence_number_reg[7]_i_1_n_0 ;
  wire \sequence_number_reg[7]_i_1_n_1 ;
  wire \sequence_number_reg[7]_i_1_n_2 ;
  wire \sequence_number_reg[7]_i_1_n_3 ;
  wire \sequence_number_reg[7]_i_1_n_4 ;
  wire \sequence_number_reg[7]_i_1_n_5 ;
  wire \sequence_number_reg[7]_i_1_n_6 ;
  wire \sequence_number_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_sequence_number_reg[23]_i_1_CO_UNCONNECTED ;

  FDCE error_latched_reg
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(frame_error),
        .Q(gpio_status[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \gpio_word0[31]_i_1 
       (.I0(rst),
        .O(\gpio_word0[31]_i_1_n_0 ));
  FDCE \gpio_word0_reg[0] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(gpio_word0[0]));
  FDCE \gpio_word0_reg[10] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(gpio_word0[10]));
  FDCE \gpio_word0_reg[11] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(gpio_word0[11]));
  FDCE \gpio_word0_reg[12] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(gpio_word0[12]));
  FDCE \gpio_word0_reg[13] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(gpio_word0[13]));
  FDCE \gpio_word0_reg[14] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(gpio_word0[14]));
  FDCE \gpio_word0_reg[15] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(gpio_word0[15]));
  FDCE \gpio_word0_reg[16] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(gpio_word0[16]));
  FDCE \gpio_word0_reg[17] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(gpio_word0[17]));
  FDCE \gpio_word0_reg[18] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(gpio_word0[18]));
  FDCE \gpio_word0_reg[19] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(gpio_word0[19]));
  FDCE \gpio_word0_reg[1] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(gpio_word0[1]));
  FDCE \gpio_word0_reg[20] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(gpio_word0[20]));
  FDCE \gpio_word0_reg[21] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(gpio_word0[21]));
  FDCE \gpio_word0_reg[22] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(gpio_word0[22]));
  FDCE \gpio_word0_reg[23] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(gpio_word0[23]));
  FDCE \gpio_word0_reg[24] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(gpio_word0[24]));
  FDCE \gpio_word0_reg[25] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(gpio_word0[25]));
  FDCE \gpio_word0_reg[26] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(gpio_word0[26]));
  FDCE \gpio_word0_reg[27] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(gpio_word0[27]));
  FDCE \gpio_word0_reg[28] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(gpio_word0[28]));
  FDCE \gpio_word0_reg[29] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(gpio_word0[29]));
  FDCE \gpio_word0_reg[2] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(gpio_word0[2]));
  FDCE \gpio_word0_reg[30] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(gpio_word0[30]));
  FDCE \gpio_word0_reg[31] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(gpio_word0[31]));
  FDCE \gpio_word0_reg[3] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(gpio_word0[3]));
  FDCE \gpio_word0_reg[4] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(gpio_word0[4]));
  FDCE \gpio_word0_reg[5] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(gpio_word0[5]));
  FDCE \gpio_word0_reg[6] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(gpio_word0[6]));
  FDCE \gpio_word0_reg[7] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(gpio_word0[7]));
  FDCE \gpio_word0_reg[8] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(gpio_word0[8]));
  FDCE \gpio_word0_reg[9] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(gpio_word0[9]));
  FDCE \gpio_word1_reg[0] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [0]),
        .Q(gpio_word1[0]));
  FDCE \gpio_word1_reg[10] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [10]),
        .Q(gpio_word1[10]));
  FDCE \gpio_word1_reg[11] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [11]),
        .Q(gpio_word1[11]));
  FDCE \gpio_word1_reg[12] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [12]),
        .Q(gpio_word1[12]));
  FDCE \gpio_word1_reg[13] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [13]),
        .Q(gpio_word1[13]));
  FDCE \gpio_word1_reg[14] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [14]),
        .Q(gpio_word1[14]));
  FDCE \gpio_word1_reg[15] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [15]),
        .Q(gpio_word1[15]));
  FDCE \gpio_word1_reg[16] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [16]),
        .Q(gpio_word1[16]));
  FDCE \gpio_word1_reg[17] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [17]),
        .Q(gpio_word1[17]));
  FDCE \gpio_word1_reg[18] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [18]),
        .Q(gpio_word1[18]));
  FDCE \gpio_word1_reg[19] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [19]),
        .Q(gpio_word1[19]));
  FDCE \gpio_word1_reg[1] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [1]),
        .Q(gpio_word1[1]));
  FDCE \gpio_word1_reg[20] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [20]),
        .Q(gpio_word1[20]));
  FDCE \gpio_word1_reg[21] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [21]),
        .Q(gpio_word1[21]));
  FDCE \gpio_word1_reg[22] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [22]),
        .Q(gpio_word1[22]));
  FDCE \gpio_word1_reg[23] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [23]),
        .Q(gpio_word1[23]));
  FDCE \gpio_word1_reg[24] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [24]),
        .Q(gpio_word1[24]));
  FDCE \gpio_word1_reg[25] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [25]),
        .Q(gpio_word1[25]));
  FDCE \gpio_word1_reg[26] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [26]),
        .Q(gpio_word1[26]));
  FDCE \gpio_word1_reg[27] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [27]),
        .Q(gpio_word1[27]));
  FDCE \gpio_word1_reg[28] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [28]),
        .Q(gpio_word1[28]));
  FDCE \gpio_word1_reg[29] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [29]),
        .Q(gpio_word1[29]));
  FDCE \gpio_word1_reg[2] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [2]),
        .Q(gpio_word1[2]));
  FDCE \gpio_word1_reg[30] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [30]),
        .Q(gpio_word1[30]));
  FDCE \gpio_word1_reg[31] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [31]),
        .Q(gpio_word1[31]));
  FDCE \gpio_word1_reg[3] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [3]),
        .Q(gpio_word1[3]));
  FDCE \gpio_word1_reg[4] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [4]),
        .Q(gpio_word1[4]));
  FDCE \gpio_word1_reg[5] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [5]),
        .Q(gpio_word1[5]));
  FDCE \gpio_word1_reg[6] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [6]),
        .Q(gpio_word1[6]));
  FDCE \gpio_word1_reg[7] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [7]),
        .Q(gpio_word1[7]));
  FDCE \gpio_word1_reg[8] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [8]),
        .Q(gpio_word1[8]));
  FDCE \gpio_word1_reg[9] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word1_reg[31]_0 [9]),
        .Q(gpio_word1[9]));
  FDCE \gpio_word2_reg[0] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [0]),
        .Q(gpio_word2[0]));
  FDCE \gpio_word2_reg[10] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [10]),
        .Q(gpio_word2[10]));
  FDCE \gpio_word2_reg[11] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [11]),
        .Q(gpio_word2[11]));
  FDCE \gpio_word2_reg[12] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [12]),
        .Q(gpio_word2[12]));
  FDCE \gpio_word2_reg[13] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [13]),
        .Q(gpio_word2[13]));
  FDCE \gpio_word2_reg[14] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [14]),
        .Q(gpio_word2[14]));
  FDCE \gpio_word2_reg[15] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [15]),
        .Q(gpio_word2[15]));
  FDCE \gpio_word2_reg[16] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [16]),
        .Q(gpio_word2[16]));
  FDCE \gpio_word2_reg[17] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [17]),
        .Q(gpio_word2[17]));
  FDCE \gpio_word2_reg[18] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [18]),
        .Q(gpio_word2[18]));
  FDCE \gpio_word2_reg[19] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [19]),
        .Q(gpio_word2[19]));
  FDCE \gpio_word2_reg[1] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [1]),
        .Q(gpio_word2[1]));
  FDCE \gpio_word2_reg[20] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [20]),
        .Q(gpio_word2[20]));
  FDCE \gpio_word2_reg[21] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [21]),
        .Q(gpio_word2[21]));
  FDCE \gpio_word2_reg[22] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [22]),
        .Q(gpio_word2[22]));
  FDCE \gpio_word2_reg[23] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [23]),
        .Q(gpio_word2[23]));
  FDCE \gpio_word2_reg[24] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [24]),
        .Q(gpio_word2[24]));
  FDCE \gpio_word2_reg[25] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [25]),
        .Q(gpio_word2[25]));
  FDCE \gpio_word2_reg[26] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [26]),
        .Q(gpio_word2[26]));
  FDCE \gpio_word2_reg[27] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [27]),
        .Q(gpio_word2[27]));
  FDCE \gpio_word2_reg[28] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [28]),
        .Q(gpio_word2[28]));
  FDCE \gpio_word2_reg[29] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [29]),
        .Q(gpio_word2[29]));
  FDCE \gpio_word2_reg[2] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [2]),
        .Q(gpio_word2[2]));
  FDCE \gpio_word2_reg[30] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [30]),
        .Q(gpio_word2[30]));
  FDCE \gpio_word2_reg[31] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [31]),
        .Q(gpio_word2[31]));
  FDCE \gpio_word2_reg[3] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [3]),
        .Q(gpio_word2[3]));
  FDCE \gpio_word2_reg[4] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [4]),
        .Q(gpio_word2[4]));
  FDCE \gpio_word2_reg[5] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [5]),
        .Q(gpio_word2[5]));
  FDCE \gpio_word2_reg[6] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [6]),
        .Q(gpio_word2[6]));
  FDCE \gpio_word2_reg[7] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [7]),
        .Q(gpio_word2[7]));
  FDCE \gpio_word2_reg[8] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [8]),
        .Q(gpio_word2[8]));
  FDCE \gpio_word2_reg[9] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\gpio_word2_reg[31]_0 [9]),
        .Q(gpio_word2[9]));
  FDCE have_result_reg
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(done),
        .Q(gpio_status[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \sequence_number[3]_i_2 
       (.I0(gpio_status[8]),
        .O(\sequence_number[3]_i_2_n_0 ));
  FDCE \sequence_number_reg[0] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[3]_i_1_n_7 ),
        .Q(gpio_status[8]));
  FDCE \sequence_number_reg[10] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[11]_i_1_n_5 ),
        .Q(gpio_status[18]));
  FDCE \sequence_number_reg[11] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[11]_i_1_n_4 ),
        .Q(gpio_status[19]));
  CARRY4 \sequence_number_reg[11]_i_1 
       (.CI(\sequence_number_reg[7]_i_1_n_0 ),
        .CO({\sequence_number_reg[11]_i_1_n_0 ,\sequence_number_reg[11]_i_1_n_1 ,\sequence_number_reg[11]_i_1_n_2 ,\sequence_number_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_number_reg[11]_i_1_n_4 ,\sequence_number_reg[11]_i_1_n_5 ,\sequence_number_reg[11]_i_1_n_6 ,\sequence_number_reg[11]_i_1_n_7 }),
        .S(gpio_status[19:16]));
  FDCE \sequence_number_reg[12] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[15]_i_1_n_7 ),
        .Q(gpio_status[20]));
  FDCE \sequence_number_reg[13] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[15]_i_1_n_6 ),
        .Q(gpio_status[21]));
  FDCE \sequence_number_reg[14] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[15]_i_1_n_5 ),
        .Q(gpio_status[22]));
  FDCE \sequence_number_reg[15] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[15]_i_1_n_4 ),
        .Q(gpio_status[23]));
  CARRY4 \sequence_number_reg[15]_i_1 
       (.CI(\sequence_number_reg[11]_i_1_n_0 ),
        .CO({\sequence_number_reg[15]_i_1_n_0 ,\sequence_number_reg[15]_i_1_n_1 ,\sequence_number_reg[15]_i_1_n_2 ,\sequence_number_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_number_reg[15]_i_1_n_4 ,\sequence_number_reg[15]_i_1_n_5 ,\sequence_number_reg[15]_i_1_n_6 ,\sequence_number_reg[15]_i_1_n_7 }),
        .S(gpio_status[23:20]));
  FDCE \sequence_number_reg[16] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[19]_i_1_n_7 ),
        .Q(gpio_status[24]));
  FDCE \sequence_number_reg[17] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[19]_i_1_n_6 ),
        .Q(gpio_status[25]));
  FDCE \sequence_number_reg[18] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[19]_i_1_n_5 ),
        .Q(gpio_status[26]));
  FDCE \sequence_number_reg[19] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[19]_i_1_n_4 ),
        .Q(gpio_status[27]));
  CARRY4 \sequence_number_reg[19]_i_1 
       (.CI(\sequence_number_reg[15]_i_1_n_0 ),
        .CO({\sequence_number_reg[19]_i_1_n_0 ,\sequence_number_reg[19]_i_1_n_1 ,\sequence_number_reg[19]_i_1_n_2 ,\sequence_number_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_number_reg[19]_i_1_n_4 ,\sequence_number_reg[19]_i_1_n_5 ,\sequence_number_reg[19]_i_1_n_6 ,\sequence_number_reg[19]_i_1_n_7 }),
        .S(gpio_status[27:24]));
  FDCE \sequence_number_reg[1] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[3]_i_1_n_6 ),
        .Q(gpio_status[9]));
  FDCE \sequence_number_reg[20] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[23]_i_1_n_7 ),
        .Q(gpio_status[28]));
  FDCE \sequence_number_reg[21] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[23]_i_1_n_6 ),
        .Q(gpio_status[29]));
  FDCE \sequence_number_reg[22] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[23]_i_1_n_5 ),
        .Q(gpio_status[30]));
  FDCE \sequence_number_reg[23] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[23]_i_1_n_4 ),
        .Q(gpio_status[31]));
  CARRY4 \sequence_number_reg[23]_i_1 
       (.CI(\sequence_number_reg[19]_i_1_n_0 ),
        .CO({\NLW_sequence_number_reg[23]_i_1_CO_UNCONNECTED [3],\sequence_number_reg[23]_i_1_n_1 ,\sequence_number_reg[23]_i_1_n_2 ,\sequence_number_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_number_reg[23]_i_1_n_4 ,\sequence_number_reg[23]_i_1_n_5 ,\sequence_number_reg[23]_i_1_n_6 ,\sequence_number_reg[23]_i_1_n_7 }),
        .S(gpio_status[31:28]));
  FDCE \sequence_number_reg[2] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[3]_i_1_n_5 ),
        .Q(gpio_status[10]));
  FDCE \sequence_number_reg[3] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[3]_i_1_n_4 ),
        .Q(gpio_status[11]));
  CARRY4 \sequence_number_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sequence_number_reg[3]_i_1_n_0 ,\sequence_number_reg[3]_i_1_n_1 ,\sequence_number_reg[3]_i_1_n_2 ,\sequence_number_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sequence_number_reg[3]_i_1_n_4 ,\sequence_number_reg[3]_i_1_n_5 ,\sequence_number_reg[3]_i_1_n_6 ,\sequence_number_reg[3]_i_1_n_7 }),
        .S({gpio_status[11:9],\sequence_number[3]_i_2_n_0 }));
  FDCE \sequence_number_reg[4] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[7]_i_1_n_7 ),
        .Q(gpio_status[12]));
  FDCE \sequence_number_reg[5] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[7]_i_1_n_6 ),
        .Q(gpio_status[13]));
  FDCE \sequence_number_reg[6] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[7]_i_1_n_5 ),
        .Q(gpio_status[14]));
  FDCE \sequence_number_reg[7] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[7]_i_1_n_4 ),
        .Q(gpio_status[15]));
  CARRY4 \sequence_number_reg[7]_i_1 
       (.CI(\sequence_number_reg[3]_i_1_n_0 ),
        .CO({\sequence_number_reg[7]_i_1_n_0 ,\sequence_number_reg[7]_i_1_n_1 ,\sequence_number_reg[7]_i_1_n_2 ,\sequence_number_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_number_reg[7]_i_1_n_4 ,\sequence_number_reg[7]_i_1_n_5 ,\sequence_number_reg[7]_i_1_n_6 ,\sequence_number_reg[7]_i_1_n_7 }),
        .S(gpio_status[15:12]));
  FDCE \sequence_number_reg[8] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[11]_i_1_n_7 ),
        .Q(gpio_status[16]));
  FDCE \sequence_number_reg[9] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(\sequence_number_reg[11]_i_1_n_6 ),
        .Q(gpio_status[17]));
  FDCE \valid_latched_reg[0] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[0]),
        .Q(gpio_status[0]));
  FDCE \valid_latched_reg[1] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[1]),
        .Q(gpio_status[1]));
  FDCE \valid_latched_reg[2] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[2]),
        .Q(gpio_status[2]));
  FDCE \valid_latched_reg[3] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[3]),
        .Q(gpio_status[3]));
  FDCE \valid_latched_reg[4] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[4]),
        .Q(gpio_status[4]));
  FDCE \valid_latched_reg[5] 
       (.C(clk),
        .CE(done),
        .CLR(\gpio_word0[31]_i_1_n_0 ),
        .D(lag_valid[5]),
        .Q(gpio_status[5]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
