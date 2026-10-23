// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 17:02:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_I2S_drive_0_1/core_I2S_drive_0_1_sim_netlist.v
// Design      : core_I2S_drive_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_I2S_drive_0_1,I2S_drive,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "I2S_drive,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_I2S_drive_0_1
   (rst,
    SCK,
    WS,
    locked,
    SD,
    SD1,
    data1,
    data2,
    data3,
    data4,
    sample_valid,
    MMCM_CLOCK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MMCM_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MMCM_CLOCK, ASSOCIATED_RESET rst, FREQ_HZ 11289602, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input MMCM_CLOCK;

  wire MMCM_CLOCK;
  wire SCK;
  wire SD;
  wire SD1;
  wire WS;
  wire [23:0]data1;
  wire [23:0]data2;
  wire [23:0]data3;
  wire [23:0]data4;
  wire locked;
  wire rst;
  wire sample_valid;

  core_I2S_drive_0_1_I2S_drive inst
       (.MMCM_CLOCK(MMCM_CLOCK),
        .SCK_reg(SCK),
        .SD(SD),
        .SD1(SD1),
        .WS_reg(WS),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .locked(locked),
        .rst(rst),
        .sample_valid(sample_valid));
endmodule

(* ORIG_REF_NAME = "I2C_clock" *) 
module core_I2S_drive_0_1_I2C_clock
   (logic_rst,
    SCK_reg_0,
    WS_reg_0,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[2] ,
    E,
    SCK_reg_1,
    WS1_reg,
    \cnt_reg[3] ,
    SCK_reg_2,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \cnt_reg[3]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    SCK_reg_3,
    MMCM_CLOCK,
    state__0,
    \data4_reg[0] ,
    rst,
    locked,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[0]_2 ,
    SCK1_reg,
    WS1,
    Q,
    \r_data1_reg[0] );
  output logic_rst;
  output SCK_reg_0;
  output WS_reg_0;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[2] ;
  output [0:0]E;
  output [0:0]SCK_reg_1;
  output [0:0]WS1_reg;
  output \cnt_reg[3] ;
  output SCK_reg_2;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \cnt_reg[3]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output SCK_reg_3;
  input MMCM_CLOCK;
  input [2:0]state__0;
  input \data4_reg[0] ;
  input rst;
  input locked;
  input \FSM_sequential_state_reg[0]_1 ;
  input \FSM_sequential_state_reg[0]_2 ;
  input SCK1_reg;
  input WS1;
  input [2:0]Q;
  input \r_data1_reg[0] ;

  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2] ;
  wire MMCM_CLOCK;
  wire [2:0]Q;
  wire SCK1_i_2_n_0;
  wire SCK1_reg;
  wire SCK_i_1_n_0;
  wire SCK_reg_0;
  wire [0:0]SCK_reg_1;
  wire SCK_reg_2;
  wire SCK_reg_3;
  wire WS1;
  wire [0:0]WS1_reg;
  wire WS_i_1_n_0;
  wire WS_reg_0;
  wire \cnt_reg[3] ;
  wire \cnt_reg[3]_0 ;
  wire counter1;
  wire counter7;
  wire \counter[7]_i_2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \data3[23]_i_2_n_0 ;
  wire \data4_reg[0] ;
  wire locked;
  wire logic_rst;
  wire p_0_in;
  wire p_0_in0_in;
  wire [7:0]p_0_in__0;
  wire \r_data1_reg[0] ;
  wire \r_data[8]_i_3_n_0 ;
  wire rst;
  wire [2:0]state__0;

  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[2]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\data3[23]_i_2_n_0 ),
        .I4(\FSM_sequential_state_reg[0]_2 ),
        .I5(\data4_reg[0] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100100)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(WS_reg_0),
        .I3(WS1),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(SCK_reg_0),
        .I1(SCK1_reg),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(Q[2]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFAAB00A80AA8)) 
    SCK1_i_1
       (.I0(SCK_reg_0),
        .I1(SCK1_i_2_n_0),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(SCK1_reg),
        .O(SCK_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h24)) 
    SCK1_i_2
       (.I0(state__0[1]),
        .I1(WS1),
        .I2(WS_reg_0),
        .O(SCK1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    SCK_i_1
       (.I0(counter1),
        .I1(p_0_in0_in),
        .I2(SCK_reg_0),
        .O(SCK_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    SCK_i_2
       (.I0(rst),
        .I1(locked),
        .O(logic_rst));
  FDCE SCK_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(SCK_i_1_n_0),
        .Q(SCK_reg_0));
  LUT3 #(
    .INIT(8'h96)) 
    WS_i_1
       (.I0(counter7),
        .I1(p_0_in),
        .I2(WS_reg_0),
        .O(WS_i_1_n_0));
  FDCE WS_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(WS_i_1_n_0),
        .Q(WS_reg_0));
  LUT6 #(
    .INIT(64'h00FF0F4200000042)) 
    \cnt[5]_i_1 
       (.I0(WS1),
        .I1(WS_reg_0),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\data3[23]_i_2_n_0 ),
        .O(WS1_reg));
  FDCE counter1_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in0_in),
        .Q(counter1));
  FDCE counter7_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in),
        .Q(counter7));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(p_0_in0_in),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(p_0_in0_in),
        .I3(\counter_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(p_0_in0_in),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(p_0_in0_in),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(p_0_in),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[7]_i_2 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(p_0_in0_in),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\counter[7]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[1]),
        .Q(p_0_in0_in));
  FDCE \counter_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE \counter_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(p_0_in__0[7]),
        .Q(p_0_in));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \data1[23]_i_1 
       (.I0(SCK_reg_0),
        .I1(SCK1_reg),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\data4_reg[0] ),
        .O(SCK_reg_1));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \data3[23]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\data3[23]_i_2_n_0 ),
        .I4(logic_rst),
        .I5(\data4_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data3[23]_i_2 
       (.I0(SCK_reg_0),
        .I1(SCK1_reg),
        .O(\data3[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002020000000)) 
    \r_data[16]_i_2 
       (.I0(SCK_reg_0),
        .I1(SCK1_reg),
        .I2(\r_data1_reg[0] ),
        .I3(state__0[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(SCK_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8002)) 
    \r_data[23]_i_2 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(state__0[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r_data[32]_i_2 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(state__0[1]),
        .I3(Q[1]),
        .O(\cnt_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \r_data[40]_i_2 
       (.I0(state__0[1]),
        .I1(SCK_reg_0),
        .I2(SCK1_reg),
        .I3(\r_data1_reg[0] ),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \r_data[47]_i_3 
       (.I0(state__0[1]),
        .I1(SCK_reg_0),
        .I2(SCK1_reg),
        .I3(\r_data1_reg[0] ),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h08000020)) 
    \r_data[8]_i_2 
       (.I0(\r_data[8]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state__0[1]),
        .I4(Q[2]),
        .O(\cnt_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \r_data[8]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(SCK1_reg),
        .I3(SCK_reg_0),
        .O(\r_data[8]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "I2S_drive" *) 
module core_I2S_drive_0_1_I2S_drive
   (WS_reg,
    data1,
    data2,
    data3,
    data4,
    sample_valid,
    SCK_reg,
    MMCM_CLOCK,
    SD,
    SD1,
    rst,
    locked);
  output WS_reg;
  output [23:0]data1;
  output [23:0]data2;
  output [23:0]data3;
  output [23:0]data4;
  output sample_valid;
  output SCK_reg;
  input MMCM_CLOCK;
  input SD;
  input SD1;
  input rst;
  input locked;

  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire MMCM_CLOCK;
  wire SCK1_reg_n_0;
  wire SCK_reg;
  wire SD;
  wire SD1;
  wire WS1;
  wire WS_reg;
  wire [5:0]cnt;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[5]_i_3_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire [23:0]data1;
  wire \data1[23]_i_2_n_0 ;
  wire [23:0]data2;
  wire [23:0]data3;
  wire [23:0]data4;
  wire locked;
  wire logic_rst;
  wire [23:23]r_data0_in;
  wire \r_data1[0]_i_1_n_0 ;
  wire \r_data1[10]_i_1_n_0 ;
  wire \r_data1[11]_i_1_n_0 ;
  wire \r_data1[12]_i_1_n_0 ;
  wire \r_data1[13]_i_1_n_0 ;
  wire \r_data1[14]_i_1_n_0 ;
  wire \r_data1[15]_i_1_n_0 ;
  wire \r_data1[16]_i_1_n_0 ;
  wire \r_data1[17]_i_1_n_0 ;
  wire \r_data1[18]_i_1_n_0 ;
  wire \r_data1[19]_i_1_n_0 ;
  wire \r_data1[1]_i_1_n_0 ;
  wire \r_data1[20]_i_1_n_0 ;
  wire \r_data1[21]_i_1_n_0 ;
  wire \r_data1[22]_i_1_n_0 ;
  wire \r_data1[23]_i_1_n_0 ;
  wire \r_data1[24]_i_1_n_0 ;
  wire \r_data1[24]_i_2_n_0 ;
  wire \r_data1[25]_i_1_n_0 ;
  wire \r_data1[26]_i_1_n_0 ;
  wire \r_data1[27]_i_1_n_0 ;
  wire \r_data1[28]_i_1_n_0 ;
  wire \r_data1[29]_i_1_n_0 ;
  wire \r_data1[2]_i_1_n_0 ;
  wire \r_data1[30]_i_1_n_0 ;
  wire \r_data1[31]_i_1_n_0 ;
  wire \r_data1[32]_i_1_n_0 ;
  wire \r_data1[33]_i_1_n_0 ;
  wire \r_data1[34]_i_1_n_0 ;
  wire \r_data1[35]_i_1_n_0 ;
  wire \r_data1[36]_i_1_n_0 ;
  wire \r_data1[37]_i_1_n_0 ;
  wire \r_data1[38]_i_1_n_0 ;
  wire \r_data1[39]_i_1_n_0 ;
  wire \r_data1[3]_i_1_n_0 ;
  wire \r_data1[40]_i_1_n_0 ;
  wire \r_data1[41]_i_1_n_0 ;
  wire \r_data1[42]_i_1_n_0 ;
  wire \r_data1[43]_i_1_n_0 ;
  wire \r_data1[44]_i_1_n_0 ;
  wire \r_data1[44]_i_2_n_0 ;
  wire \r_data1[45]_i_1_n_0 ;
  wire \r_data1[46]_i_1_n_0 ;
  wire \r_data1[47]_i_1_n_0 ;
  wire \r_data1[47]_i_2_n_0 ;
  wire \r_data1[47]_i_3_n_0 ;
  wire \r_data1[4]_i_1_n_0 ;
  wire \r_data1[5]_i_1_n_0 ;
  wire \r_data1[6]_i_1_n_0 ;
  wire \r_data1[7]_i_1_n_0 ;
  wire \r_data1[8]_i_1_n_0 ;
  wire \r_data1[9]_i_1_n_0 ;
  wire \r_data1_reg_n_0_[0] ;
  wire \r_data1_reg_n_0_[10] ;
  wire \r_data1_reg_n_0_[11] ;
  wire \r_data1_reg_n_0_[12] ;
  wire \r_data1_reg_n_0_[13] ;
  wire \r_data1_reg_n_0_[14] ;
  wire \r_data1_reg_n_0_[15] ;
  wire \r_data1_reg_n_0_[16] ;
  wire \r_data1_reg_n_0_[17] ;
  wire \r_data1_reg_n_0_[18] ;
  wire \r_data1_reg_n_0_[19] ;
  wire \r_data1_reg_n_0_[1] ;
  wire \r_data1_reg_n_0_[20] ;
  wire \r_data1_reg_n_0_[21] ;
  wire \r_data1_reg_n_0_[22] ;
  wire \r_data1_reg_n_0_[23] ;
  wire \r_data1_reg_n_0_[24] ;
  wire \r_data1_reg_n_0_[25] ;
  wire \r_data1_reg_n_0_[26] ;
  wire \r_data1_reg_n_0_[27] ;
  wire \r_data1_reg_n_0_[28] ;
  wire \r_data1_reg_n_0_[29] ;
  wire \r_data1_reg_n_0_[2] ;
  wire \r_data1_reg_n_0_[30] ;
  wire \r_data1_reg_n_0_[31] ;
  wire \r_data1_reg_n_0_[32] ;
  wire \r_data1_reg_n_0_[33] ;
  wire \r_data1_reg_n_0_[34] ;
  wire \r_data1_reg_n_0_[35] ;
  wire \r_data1_reg_n_0_[36] ;
  wire \r_data1_reg_n_0_[37] ;
  wire \r_data1_reg_n_0_[38] ;
  wire \r_data1_reg_n_0_[39] ;
  wire \r_data1_reg_n_0_[3] ;
  wire \r_data1_reg_n_0_[40] ;
  wire \r_data1_reg_n_0_[41] ;
  wire \r_data1_reg_n_0_[42] ;
  wire \r_data1_reg_n_0_[43] ;
  wire \r_data1_reg_n_0_[44] ;
  wire \r_data1_reg_n_0_[45] ;
  wire \r_data1_reg_n_0_[46] ;
  wire \r_data1_reg_n_0_[47] ;
  wire \r_data1_reg_n_0_[4] ;
  wire \r_data1_reg_n_0_[5] ;
  wire \r_data1_reg_n_0_[6] ;
  wire \r_data1_reg_n_0_[7] ;
  wire \r_data1_reg_n_0_[8] ;
  wire \r_data1_reg_n_0_[9] ;
  wire \r_data[0]_i_1_n_0 ;
  wire \r_data[10]_i_1_n_0 ;
  wire \r_data[11]_i_1_n_0 ;
  wire \r_data[12]_i_1_n_0 ;
  wire \r_data[13]_i_1_n_0 ;
  wire \r_data[14]_i_1_n_0 ;
  wire \r_data[15]_i_1_n_0 ;
  wire \r_data[16]_i_1_n_0 ;
  wire \r_data[17]_i_1_n_0 ;
  wire \r_data[18]_i_1_n_0 ;
  wire \r_data[19]_i_1_n_0 ;
  wire \r_data[1]_i_1_n_0 ;
  wire \r_data[20]_i_1_n_0 ;
  wire \r_data[21]_i_1_n_0 ;
  wire \r_data[22]_i_1_n_0 ;
  wire \r_data[23]_i_1_n_0 ;
  wire \r_data[24]_i_1_n_0 ;
  wire \r_data[25]_i_1_n_0 ;
  wire \r_data[26]_i_1_n_0 ;
  wire \r_data[27]_i_1_n_0 ;
  wire \r_data[28]_i_1_n_0 ;
  wire \r_data[29]_i_1_n_0 ;
  wire \r_data[2]_i_1_n_0 ;
  wire \r_data[30]_i_1_n_0 ;
  wire \r_data[31]_i_1_n_0 ;
  wire \r_data[32]_i_1_n_0 ;
  wire \r_data[33]_i_1_n_0 ;
  wire \r_data[34]_i_1_n_0 ;
  wire \r_data[35]_i_1_n_0 ;
  wire \r_data[36]_i_1_n_0 ;
  wire \r_data[37]_i_1_n_0 ;
  wire \r_data[38]_i_1_n_0 ;
  wire \r_data[39]_i_1_n_0 ;
  wire \r_data[3]_i_1_n_0 ;
  wire \r_data[40]_i_1_n_0 ;
  wire \r_data[41]_i_1_n_0 ;
  wire \r_data[41]_i_2_n_0 ;
  wire \r_data[42]_i_1_n_0 ;
  wire \r_data[43]_i_1_n_0 ;
  wire \r_data[43]_i_2_n_0 ;
  wire \r_data[44]_i_1_n_0 ;
  wire \r_data[44]_i_2_n_0 ;
  wire \r_data[45]_i_1_n_0 ;
  wire \r_data[45]_i_2_n_0 ;
  wire \r_data[46]_i_1_n_0 ;
  wire \r_data[46]_i_2_n_0 ;
  wire \r_data[47]_i_1_n_0 ;
  wire \r_data[47]_i_4_n_0 ;
  wire \r_data[47]_i_5_n_0 ;
  wire \r_data[4]_i_1_n_0 ;
  wire \r_data[5]_i_1_n_0 ;
  wire \r_data[6]_i_1_n_0 ;
  wire \r_data[7]_i_1_n_0 ;
  wire \r_data[8]_i_1_n_0 ;
  wire \r_data[9]_i_1_n_0 ;
  wire \r_data_reg_n_0_[0] ;
  wire \r_data_reg_n_0_[10] ;
  wire \r_data_reg_n_0_[11] ;
  wire \r_data_reg_n_0_[12] ;
  wire \r_data_reg_n_0_[13] ;
  wire \r_data_reg_n_0_[14] ;
  wire \r_data_reg_n_0_[15] ;
  wire \r_data_reg_n_0_[16] ;
  wire \r_data_reg_n_0_[17] ;
  wire \r_data_reg_n_0_[18] ;
  wire \r_data_reg_n_0_[19] ;
  wire \r_data_reg_n_0_[1] ;
  wire \r_data_reg_n_0_[20] ;
  wire \r_data_reg_n_0_[21] ;
  wire \r_data_reg_n_0_[22] ;
  wire \r_data_reg_n_0_[23] ;
  wire \r_data_reg_n_0_[24] ;
  wire \r_data_reg_n_0_[25] ;
  wire \r_data_reg_n_0_[26] ;
  wire \r_data_reg_n_0_[27] ;
  wire \r_data_reg_n_0_[28] ;
  wire \r_data_reg_n_0_[29] ;
  wire \r_data_reg_n_0_[2] ;
  wire \r_data_reg_n_0_[30] ;
  wire \r_data_reg_n_0_[31] ;
  wire \r_data_reg_n_0_[32] ;
  wire \r_data_reg_n_0_[33] ;
  wire \r_data_reg_n_0_[34] ;
  wire \r_data_reg_n_0_[35] ;
  wire \r_data_reg_n_0_[36] ;
  wire \r_data_reg_n_0_[37] ;
  wire \r_data_reg_n_0_[38] ;
  wire \r_data_reg_n_0_[39] ;
  wire \r_data_reg_n_0_[3] ;
  wire \r_data_reg_n_0_[40] ;
  wire \r_data_reg_n_0_[41] ;
  wire \r_data_reg_n_0_[42] ;
  wire \r_data_reg_n_0_[43] ;
  wire \r_data_reg_n_0_[44] ;
  wire \r_data_reg_n_0_[45] ;
  wire \r_data_reg_n_0_[46] ;
  wire \r_data_reg_n_0_[47] ;
  wire \r_data_reg_n_0_[4] ;
  wire \r_data_reg_n_0_[5] ;
  wire \r_data_reg_n_0_[6] ;
  wire \r_data_reg_n_0_[7] ;
  wire \r_data_reg_n_0_[8] ;
  wire \r_data_reg_n_0_[9] ;
  wire rst;
  wire sample_valid;
  wire [2:0]state__0;
  wire uut_n_10;
  wire uut_n_11;
  wire uut_n_12;
  wire uut_n_13;
  wire uut_n_14;
  wire uut_n_15;
  wire uut_n_3;
  wire uut_n_4;
  wire uut_n_5;
  wire uut_n_6;
  wire uut_n_7;
  wire uut_n_8;
  wire uut_n_9;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100," *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(uut_n_5),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100," *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(uut_n_4),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100," *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(uut_n_3),
        .Q(state__0[2]));
  FDCE SCK1_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(uut_n_15),
        .Q(SCK1_reg_n_0));
  FDCE WS1_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(WS_reg),
        .Q(WS1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0026)) 
    \cnt[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00343400)) 
    \cnt[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'h0034343434000000)) 
    \cnt[2]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[4]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_1 
       (.I0(\cnt[4]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \cnt[4]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1C1C001C00000C00)) 
    \cnt[5]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt[5]_i_3_n_0 ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[5]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[5]_i_3_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE \cnt_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_8),
        .CLR(logic_rst),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \data1[23]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\data1[23]_i_2_n_0 ));
  FDCE \data1_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[0] ),
        .Q(data1[0]));
  FDCE \data1_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[10] ),
        .Q(data1[10]));
  FDCE \data1_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[11] ),
        .Q(data1[11]));
  FDCE \data1_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[12] ),
        .Q(data1[12]));
  FDCE \data1_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[13] ),
        .Q(data1[13]));
  FDCE \data1_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[14] ),
        .Q(data1[14]));
  FDCE \data1_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[15] ),
        .Q(data1[15]));
  FDCE \data1_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[16] ),
        .Q(data1[16]));
  FDCE \data1_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[17] ),
        .Q(data1[17]));
  FDCE \data1_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[18] ),
        .Q(data1[18]));
  FDCE \data1_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[19] ),
        .Q(data1[19]));
  FDCE \data1_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[1] ),
        .Q(data1[1]));
  FDCE \data1_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[20] ),
        .Q(data1[20]));
  FDCE \data1_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[21] ),
        .Q(data1[21]));
  FDCE \data1_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[22] ),
        .Q(data1[22]));
  FDCE \data1_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[23] ),
        .Q(data1[23]));
  FDCE \data1_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[2] ),
        .Q(data1[2]));
  FDCE \data1_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[3] ),
        .Q(data1[3]));
  FDCE \data1_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[4] ),
        .Q(data1[4]));
  FDCE \data1_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[5] ),
        .Q(data1[5]));
  FDCE \data1_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[6] ),
        .Q(data1[6]));
  FDCE \data1_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[7] ),
        .Q(data1[7]));
  FDCE \data1_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[8] ),
        .Q(data1[8]));
  FDCE \data1_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[9] ),
        .Q(data1[9]));
  FDCE \data2_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[24] ),
        .Q(data2[0]));
  FDCE \data2_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[34] ),
        .Q(data2[10]));
  FDCE \data2_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[35] ),
        .Q(data2[11]));
  FDCE \data2_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[36] ),
        .Q(data2[12]));
  FDCE \data2_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[37] ),
        .Q(data2[13]));
  FDCE \data2_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[38] ),
        .Q(data2[14]));
  FDCE \data2_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[39] ),
        .Q(data2[15]));
  FDCE \data2_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[40] ),
        .Q(data2[16]));
  FDCE \data2_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[41] ),
        .Q(data2[17]));
  FDCE \data2_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[42] ),
        .Q(data2[18]));
  FDCE \data2_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[43] ),
        .Q(data2[19]));
  FDCE \data2_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[25] ),
        .Q(data2[1]));
  FDCE \data2_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[44] ),
        .Q(data2[20]));
  FDCE \data2_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[45] ),
        .Q(data2[21]));
  FDCE \data2_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[46] ),
        .Q(data2[22]));
  FDCE \data2_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[47] ),
        .Q(data2[23]));
  FDCE \data2_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[26] ),
        .Q(data2[2]));
  FDCE \data2_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[27] ),
        .Q(data2[3]));
  FDCE \data2_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[28] ),
        .Q(data2[4]));
  FDCE \data2_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[29] ),
        .Q(data2[5]));
  FDCE \data2_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[30] ),
        .Q(data2[6]));
  FDCE \data2_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[31] ),
        .Q(data2[7]));
  FDCE \data2_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[32] ),
        .Q(data2[8]));
  FDCE \data2_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_7),
        .CLR(logic_rst),
        .D(\r_data_reg_n_0_[33] ),
        .Q(data2[9]));
  FDRE \data3_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[0] ),
        .Q(data3[0]),
        .R(1'b0));
  FDRE \data3_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[10] ),
        .Q(data3[10]),
        .R(1'b0));
  FDRE \data3_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[11] ),
        .Q(data3[11]),
        .R(1'b0));
  FDRE \data3_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[12] ),
        .Q(data3[12]),
        .R(1'b0));
  FDRE \data3_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[13] ),
        .Q(data3[13]),
        .R(1'b0));
  FDRE \data3_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[14] ),
        .Q(data3[14]),
        .R(1'b0));
  FDRE \data3_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[15] ),
        .Q(data3[15]),
        .R(1'b0));
  FDRE \data3_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[16] ),
        .Q(data3[16]),
        .R(1'b0));
  FDRE \data3_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[17] ),
        .Q(data3[17]),
        .R(1'b0));
  FDRE \data3_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[18] ),
        .Q(data3[18]),
        .R(1'b0));
  FDRE \data3_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[19] ),
        .Q(data3[19]),
        .R(1'b0));
  FDRE \data3_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[1] ),
        .Q(data3[1]),
        .R(1'b0));
  FDRE \data3_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[20] ),
        .Q(data3[20]),
        .R(1'b0));
  FDRE \data3_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[21] ),
        .Q(data3[21]),
        .R(1'b0));
  FDRE \data3_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[22] ),
        .Q(data3[22]),
        .R(1'b0));
  FDRE \data3_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[23] ),
        .Q(data3[23]),
        .R(1'b0));
  FDRE \data3_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[2] ),
        .Q(data3[2]),
        .R(1'b0));
  FDRE \data3_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[3] ),
        .Q(data3[3]),
        .R(1'b0));
  FDRE \data3_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[4] ),
        .Q(data3[4]),
        .R(1'b0));
  FDRE \data3_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[5] ),
        .Q(data3[5]),
        .R(1'b0));
  FDRE \data3_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[6] ),
        .Q(data3[6]),
        .R(1'b0));
  FDRE \data3_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[7] ),
        .Q(data3[7]),
        .R(1'b0));
  FDRE \data3_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[8] ),
        .Q(data3[8]),
        .R(1'b0));
  FDRE \data3_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[9] ),
        .Q(data3[9]),
        .R(1'b0));
  FDRE \data4_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[24] ),
        .Q(data4[0]),
        .R(1'b0));
  FDRE \data4_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[34] ),
        .Q(data4[10]),
        .R(1'b0));
  FDRE \data4_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[35] ),
        .Q(data4[11]),
        .R(1'b0));
  FDRE \data4_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[36] ),
        .Q(data4[12]),
        .R(1'b0));
  FDRE \data4_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[37] ),
        .Q(data4[13]),
        .R(1'b0));
  FDRE \data4_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[38] ),
        .Q(data4[14]),
        .R(1'b0));
  FDRE \data4_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[39] ),
        .Q(data4[15]),
        .R(1'b0));
  FDRE \data4_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[40] ),
        .Q(data4[16]),
        .R(1'b0));
  FDRE \data4_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[41] ),
        .Q(data4[17]),
        .R(1'b0));
  FDRE \data4_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[42] ),
        .Q(data4[18]),
        .R(1'b0));
  FDRE \data4_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[43] ),
        .Q(data4[19]),
        .R(1'b0));
  FDRE \data4_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[25] ),
        .Q(data4[1]),
        .R(1'b0));
  FDRE \data4_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[44] ),
        .Q(data4[20]),
        .R(1'b0));
  FDRE \data4_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[45] ),
        .Q(data4[21]),
        .R(1'b0));
  FDRE \data4_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[46] ),
        .Q(data4[22]),
        .R(1'b0));
  FDRE \data4_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[47] ),
        .Q(data4[23]),
        .R(1'b0));
  FDRE \data4_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[26] ),
        .Q(data4[2]),
        .R(1'b0));
  FDRE \data4_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[27] ),
        .Q(data4[3]),
        .R(1'b0));
  FDRE \data4_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[28] ),
        .Q(data4[4]),
        .R(1'b0));
  FDRE \data4_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[29] ),
        .Q(data4[5]),
        .R(1'b0));
  FDRE \data4_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[30] ),
        .Q(data4[6]),
        .R(1'b0));
  FDRE \data4_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[31] ),
        .Q(data4[7]),
        .R(1'b0));
  FDRE \data4_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[32] ),
        .Q(data4[8]),
        .R(1'b0));
  FDRE \data4_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(uut_n_6),
        .D(\r_data1_reg_n_0_[33] ),
        .Q(data4[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data1[0]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\r_data1[24]_i_2_n_0 ),
        .I3(\r_data[44]_i_2_n_0 ),
        .I4(uut_n_10),
        .I5(\r_data1_reg_n_0_[0] ),
        .O(\r_data1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[10]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_10),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[10] ),
        .O(\r_data1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[11]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[11] ),
        .O(\r_data1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[12]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[12] ),
        .O(\r_data1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data1[13]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[13] ),
        .O(\r_data1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[14]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_10),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[14] ),
        .O(\r_data1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[15]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[15] ),
        .O(\r_data1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[16]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[16] ),
        .O(\r_data1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data1[17]_i_1 
       (.I0(SD1),
        .I1(state__0[2]),
        .I2(logic_rst),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_11),
        .I5(\r_data1_reg_n_0_[17] ),
        .O(\r_data1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[18]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(uut_n_11),
        .I3(logic_rst),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data1_reg_n_0_[18] ),
        .O(\r_data1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[19]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(uut_n_11),
        .I3(logic_rst),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data1_reg_n_0_[19] ),
        .O(\r_data1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data1[1]_i_1 
       (.I0(SD1),
        .I1(state__0[2]),
        .I2(logic_rst),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_9),
        .I5(\r_data1_reg_n_0_[1] ),
        .O(\r_data1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[20]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_11),
        .I5(\r_data1_reg_n_0_[20] ),
        .O(\r_data1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data1[21]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[45]_i_2_n_0 ),
        .I2(logic_rst),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(uut_n_11),
        .I5(\r_data1_reg_n_0_[21] ),
        .O(\r_data1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data1[22]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(uut_n_11),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(logic_rst),
        .I5(\r_data1_reg_n_0_[22] ),
        .O(\r_data1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data1[23]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(uut_n_11),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(logic_rst),
        .I5(\r_data1_reg_n_0_[23] ),
        .O(\r_data1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data1[24]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\r_data1[24]_i_2_n_0 ),
        .I3(\r_data[44]_i_2_n_0 ),
        .I4(uut_n_12),
        .I5(\r_data1_reg_n_0_[24] ),
        .O(\r_data1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_data1[24]_i_2 
       (.I0(locked),
        .I1(rst),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\r_data1[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data1[25]_i_1 
       (.I0(SD1),
        .I1(state__0[2]),
        .I2(logic_rst),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_13),
        .I5(\r_data1_reg_n_0_[25] ),
        .O(\r_data1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[26]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_13),
        .I5(\r_data1_reg_n_0_[26] ),
        .O(\r_data1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[27]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_13),
        .I5(\r_data1_reg_n_0_[27] ),
        .O(\r_data1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[28]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_13),
        .I5(\r_data1_reg_n_0_[28] ),
        .O(\r_data1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \r_data1[29]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_13),
        .I4(\r_data[45]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[29] ),
        .O(\r_data1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[2]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_9),
        .I5(\r_data1_reg_n_0_[2] ),
        .O(\r_data1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[30]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_13),
        .I4(\r_data[46]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[30] ),
        .O(\r_data1[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[31]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_13),
        .I4(\r_data[47]_i_4_n_0 ),
        .I5(\r_data1_reg_n_0_[31] ),
        .O(\r_data1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[32]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_13),
        .I4(\r_data[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[32] ),
        .O(\r_data1[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data1[33]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\r_data[41]_i_2_n_0 ),
        .I3(logic_rst),
        .I4(uut_n_12),
        .I5(\r_data1_reg_n_0_[33] ),
        .O(\r_data1[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[34]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_12),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[34] ),
        .O(\r_data1[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[35]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[35] ),
        .O(\r_data1[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[36]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[36] ),
        .O(\r_data1[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data1[37]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\r_data1[47]_i_3_n_0 ),
        .I4(uut_n_12),
        .I5(\r_data1_reg_n_0_[37] ),
        .O(\r_data1[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[38]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_12),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[38] ),
        .O(\r_data1[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data1[39]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[39] ),
        .O(\r_data1[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[3]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_9),
        .I5(\r_data1_reg_n_0_[3] ),
        .O(\r_data1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[40]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[40] ),
        .O(\r_data1[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data1[41]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\r_data[41]_i_2_n_0 ),
        .I3(logic_rst),
        .I4(uut_n_14),
        .I5(\r_data1_reg_n_0_[41] ),
        .O(\r_data1[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[42]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[42] ),
        .O(\r_data1[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[43]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\r_data1[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[43] ),
        .O(\r_data1[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[44]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\r_data1[44]_i_2_n_0 ),
        .I4(uut_n_14),
        .I5(\r_data1_reg_n_0_[44] ),
        .O(\r_data1[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r_data1[44]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(locked),
        .I3(rst),
        .O(\r_data1[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data1[45]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\r_data1[47]_i_3_n_0 ),
        .I4(uut_n_14),
        .I5(\r_data1_reg_n_0_[45] ),
        .O(\r_data1[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[46]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[46] ),
        .O(\r_data1[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[47]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\r_data1[47]_i_3_n_0 ),
        .I5(\r_data1_reg_n_0_[47] ),
        .O(\r_data1[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_data1[47]_i_2 
       (.I0(SD1),
        .I1(state__0[2]),
        .O(\r_data1[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \r_data1[47]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(rst),
        .I2(locked),
        .I3(\cnt_reg_n_0_[4] ),
        .O(\r_data1[47]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data1[4]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(logic_rst),
        .I4(uut_n_9),
        .I5(\r_data1_reg_n_0_[4] ),
        .O(\r_data1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \r_data1[5]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_9),
        .I4(\r_data[45]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[5] ),
        .O(\r_data1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[6]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_9),
        .I4(\r_data[46]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[6] ),
        .O(\r_data1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[7]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_9),
        .I4(\r_data[47]_i_4_n_0 ),
        .I5(\r_data1_reg_n_0_[7] ),
        .O(\r_data1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data1[8]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(logic_rst),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(uut_n_9),
        .I4(\r_data[44]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[8] ),
        .O(\r_data1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r_data1[9]_i_1 
       (.I0(\r_data1[47]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(uut_n_10),
        .I3(logic_rst),
        .I4(\r_data[41]_i_2_n_0 ),
        .I5(\r_data1_reg_n_0_[9] ),
        .O(\r_data1[9]_i_1_n_0 ));
  FDRE \r_data1_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[0]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r_data1_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[10]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_data1_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[11]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \r_data1_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[12]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \r_data1_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[13]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \r_data1_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[14]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \r_data1_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[15]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \r_data1_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[16]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \r_data1_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[17]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \r_data1_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[18]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \r_data1_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[19]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \r_data1_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[1]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r_data1_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[20]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \r_data1_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[21]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \r_data1_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[22]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \r_data1_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[23]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \r_data1_reg[24] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[24]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \r_data1_reg[25] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[25]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \r_data1_reg[26] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[26]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \r_data1_reg[27] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[27]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \r_data1_reg[28] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[28]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \r_data1_reg[29] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[29]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \r_data1_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[2]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \r_data1_reg[30] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[30]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \r_data1_reg[31] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[31]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \r_data1_reg[32] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[32]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \r_data1_reg[33] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[33]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \r_data1_reg[34] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[34]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \r_data1_reg[35] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[35]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \r_data1_reg[36] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[36]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \r_data1_reg[37] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[37]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \r_data1_reg[38] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[38]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \r_data1_reg[39] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[39]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \r_data1_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[3]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \r_data1_reg[40] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[40]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \r_data1_reg[41] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[41]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \r_data1_reg[42] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[42]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \r_data1_reg[43] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[43]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \r_data1_reg[44] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[44]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \r_data1_reg[45] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[45]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \r_data1_reg[46] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[46]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \r_data1_reg[47] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[47]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \r_data1_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[4]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \r_data1_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[5]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \r_data1_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[6]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \r_data1_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[7]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \r_data1_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[8]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \r_data1_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .D(\r_data1[9]_i_1_n_0 ),
        .Q(\r_data1_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_data[0]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\r_data[44]_i_2_n_0 ),
        .I4(uut_n_10),
        .I5(\r_data_reg_n_0_[0] ),
        .O(\r_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[10]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_10),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[10] ),
        .O(\r_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[11]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[11] ),
        .O(\r_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data[12]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_10),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[12] ),
        .O(\r_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data[13]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[45]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(uut_n_10),
        .I5(\r_data_reg_n_0_[13] ),
        .O(\r_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[14]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(uut_n_10),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[14] ),
        .O(\r_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[15]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(uut_n_10),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[15] ),
        .O(\r_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[16]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(uut_n_10),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[16] ),
        .O(\r_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data[17]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_11),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\r_data_reg_n_0_[17] ),
        .O(\r_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[18]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_11),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[18] ),
        .O(\r_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[19]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_11),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[19] ),
        .O(\r_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data[1]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_9),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\r_data_reg_n_0_[1] ),
        .O(\r_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_data[20]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_11),
        .I5(\r_data_reg_n_0_[20] ),
        .O(\r_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_data[21]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_11),
        .I5(\r_data_reg_n_0_[21] ),
        .O(\r_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_data[22]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_11),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[22] ),
        .O(\r_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \r_data[23]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_11),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[23] ),
        .O(\r_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_data[24]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\r_data[44]_i_2_n_0 ),
        .I4(uut_n_12),
        .I5(\r_data_reg_n_0_[24] ),
        .O(\r_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_data[25]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_13),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\r_data_reg_n_0_[25] ),
        .O(\r_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[26]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[26] ),
        .O(\r_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[27]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[27] ),
        .O(\r_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_data[28]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[28] ),
        .O(\r_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_data[29]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[29] ),
        .O(\r_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[2]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[2] ),
        .O(\r_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_data[30]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[30] ),
        .O(\r_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_data[31]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[31] ),
        .O(\r_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data[32]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_13),
        .I5(\r_data_reg_n_0_[32] ),
        .O(\r_data[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data[33]_i_1 
       (.I0(SD),
        .I1(state__0[2]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_12),
        .I5(\r_data_reg_n_0_[33] ),
        .O(\r_data[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[34]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(uut_n_12),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[34] ),
        .O(\r_data[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \r_data[35]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[35] ),
        .O(\r_data[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_data[36]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(uut_n_12),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[36] ),
        .O(\r_data[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data[37]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[45]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(uut_n_12),
        .I5(\r_data_reg_n_0_[37] ),
        .O(\r_data[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[38]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[46]_i_2_n_0 ),
        .I2(uut_n_12),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[38] ),
        .O(\r_data[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[39]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[47]_i_4_n_0 ),
        .I2(uut_n_12),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[39] ),
        .O(\r_data[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[3]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[3] ),
        .O(\r_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[40]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(uut_n_12),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[40] ),
        .O(\r_data[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data[41]_i_1 
       (.I0(SD),
        .I1(state__0[2]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_14),
        .I5(\r_data_reg_n_0_[41] ),
        .O(\r_data[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_data[41]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\r_data[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[42]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[42] ),
        .O(\r_data[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[43]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_14),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\r_data[43]_i_2_n_0 ),
        .I5(\r_data_reg_n_0_[43] ),
        .O(\r_data[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data[43]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\r_data[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \r_data[44]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[44]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(uut_n_14),
        .I5(\r_data_reg_n_0_[44] ),
        .O(\r_data[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_data[44]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\r_data[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data[45]_i_1 
       (.I0(r_data0_in),
        .I1(\r_data[45]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(uut_n_14),
        .I5(\r_data_reg_n_0_[45] ),
        .O(\r_data[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_data[45]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\r_data[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[46]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_14),
        .I2(\r_data[46]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[46] ),
        .O(\r_data[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data[46]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(\r_data[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_data[47]_i_1 
       (.I0(r_data0_in),
        .I1(uut_n_14),
        .I2(\r_data[47]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\r_data_reg_n_0_[47] ),
        .O(\r_data[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_data[47]_i_2 
       (.I0(SD),
        .I1(state__0[2]),
        .O(r_data0_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_data[47]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\r_data[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_data[47]_i_5 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\r_data[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \r_data[4]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[4] ),
        .O(\r_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_data[5]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[5] ),
        .O(\r_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_data[6]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[6] ),
        .O(\r_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_data[7]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[7] ),
        .O(\r_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_data[8]_i_1 
       (.I0(r_data0_in),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(uut_n_9),
        .I5(\r_data_reg_n_0_[8] ),
        .O(\r_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFFF00020000)) 
    \r_data[9]_i_1 
       (.I0(SD),
        .I1(state__0[2]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\r_data[41]_i_2_n_0 ),
        .I4(uut_n_10),
        .I5(\r_data_reg_n_0_[9] ),
        .O(\r_data[9]_i_1_n_0 ));
  FDCE \r_data_reg[0] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[0]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[0] ));
  FDCE \r_data_reg[10] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[10]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[10] ));
  FDCE \r_data_reg[11] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[11]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[11] ));
  FDCE \r_data_reg[12] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[12]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[12] ));
  FDCE \r_data_reg[13] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[13]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[13] ));
  FDCE \r_data_reg[14] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[14]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[14] ));
  FDCE \r_data_reg[15] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[15]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[15] ));
  FDCE \r_data_reg[16] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[16]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[16] ));
  FDCE \r_data_reg[17] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[17]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[17] ));
  FDCE \r_data_reg[18] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[18]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[18] ));
  FDCE \r_data_reg[19] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[19]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[19] ));
  FDCE \r_data_reg[1] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[1]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[1] ));
  FDCE \r_data_reg[20] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[20]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[20] ));
  FDCE \r_data_reg[21] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[21]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[21] ));
  FDCE \r_data_reg[22] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[22]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[22] ));
  FDCE \r_data_reg[23] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[23]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[23] ));
  FDCE \r_data_reg[24] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[24]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[24] ));
  FDCE \r_data_reg[25] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[25]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[25] ));
  FDCE \r_data_reg[26] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[26]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[26] ));
  FDCE \r_data_reg[27] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[27]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[27] ));
  FDCE \r_data_reg[28] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[28]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[28] ));
  FDCE \r_data_reg[29] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[29]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[29] ));
  FDCE \r_data_reg[2] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[2]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[2] ));
  FDCE \r_data_reg[30] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[30]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[30] ));
  FDCE \r_data_reg[31] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[31]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[31] ));
  FDCE \r_data_reg[32] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[32]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[32] ));
  FDCE \r_data_reg[33] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[33]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[33] ));
  FDCE \r_data_reg[34] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[34]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[34] ));
  FDCE \r_data_reg[35] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[35]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[35] ));
  FDCE \r_data_reg[36] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[36]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[36] ));
  FDCE \r_data_reg[37] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[37]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[37] ));
  FDCE \r_data_reg[38] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[38]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[38] ));
  FDCE \r_data_reg[39] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[39]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[39] ));
  FDCE \r_data_reg[3] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[3]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[3] ));
  FDCE \r_data_reg[40] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[40]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[40] ));
  FDCE \r_data_reg[41] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[41]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[41] ));
  FDCE \r_data_reg[42] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[42]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[42] ));
  FDCE \r_data_reg[43] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[43]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[43] ));
  FDCE \r_data_reg[44] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[44]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[44] ));
  FDCE \r_data_reg[45] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[45]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[45] ));
  FDCE \r_data_reg[46] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[46]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[46] ));
  FDCE \r_data_reg[47] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[47]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[47] ));
  FDCE \r_data_reg[4] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[4]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[4] ));
  FDCE \r_data_reg[5] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[5]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[5] ));
  FDCE \r_data_reg[6] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[6]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[6] ));
  FDCE \r_data_reg[7] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[7]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[7] ));
  FDCE \r_data_reg[8] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[8]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[8] ));
  FDCE \r_data_reg[9] 
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\r_data[9]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[9] ));
  FDCE sample_valid_reg
       (.C(MMCM_CLOCK),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(uut_n_7),
        .Q(sample_valid));
  core_I2S_drive_0_1_I2C_clock uut
       (.E(uut_n_6),
        .\FSM_sequential_state_reg[0] (uut_n_3),
        .\FSM_sequential_state_reg[0]_0 (uut_n_4),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state[2]_i_4_n_0 ),
        .\FSM_sequential_state_reg[0]_2 (\FSM_sequential_state[2]_i_6_n_0 ),
        .\FSM_sequential_state_reg[1] (uut_n_11),
        .\FSM_sequential_state_reg[1]_0 (uut_n_12),
        .\FSM_sequential_state_reg[1]_1 (uut_n_14),
        .\FSM_sequential_state_reg[2] (uut_n_5),
        .MMCM_CLOCK(MMCM_CLOCK),
        .Q({\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] }),
        .SCK1_reg(SCK1_reg_n_0),
        .SCK_reg_0(SCK_reg),
        .SCK_reg_1(uut_n_7),
        .SCK_reg_2(uut_n_10),
        .SCK_reg_3(uut_n_15),
        .WS1(WS1),
        .WS1_reg(uut_n_8),
        .WS_reg_0(WS_reg),
        .\cnt_reg[3] (uut_n_9),
        .\cnt_reg[3]_0 (uut_n_13),
        .\data4_reg[0] (\data1[23]_i_2_n_0 ),
        .locked(locked),
        .logic_rst(logic_rst),
        .\r_data1_reg[0] (\r_data[47]_i_5_n_0 ),
        .rst(rst),
        .state__0(state__0));
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
