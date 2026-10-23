// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 17:20:19 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Write_Ctrl_0_0/core_Write_Ctrl_0_0_sim_netlist.v
// Design      : core_Write_Ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_Write_Ctrl_0_0,Write_Ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Write_Ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_Write_Ctrl_0_0
   (ena,
    wna,
    read_toggle,
    Write_addra,
    data,
    Ram_en,
    Ram_ready,
    fifo_full,
    data1,
    data2,
    data3,
    data4,
    clk,
    rst);
  output ena;
  output wna;
  output read_toggle;
  output [11:0]Write_addra;
  output [95:0]data;
  output Ram_en;
  output Ram_ready;
  input fifo_full;
  input [23:0]data1;
  input [23:0]data2;
  input [23:0]data3;
  input [23:0]data4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire \<const0> ;
  wire Ram_en;
  wire Ram_ready;
  wire [10:0]\^Write_addra ;
  wire clk;
  wire [23:0]data1;
  wire [23:0]data2;
  wire [23:0]data3;
  wire [23:0]data4;
  wire fifo_full;
  wire read_toggle;
  wire rst;
  wire wna;

  assign Write_addra[11] = \<const0> ;
  assign Write_addra[10:0] = \^Write_addra [10:0];
  assign data[95:72] = data4;
  assign data[71:48] = data3;
  assign data[47:24] = data2;
  assign data[23:0] = data1;
  assign ena = wna;
  GND GND
       (.G(\<const0> ));
  core_Write_Ctrl_0_0_Write_Ctrl inst
       (.Ram_en(Ram_en),
        .Ram_ready(Ram_ready),
        .Write_addra(\^Write_addra ),
        .clk(clk),
        .fifo_full(fifo_full),
        .read_toggle(read_toggle),
        .rst(rst),
        .wna(wna));
endmodule

(* ORIG_REF_NAME = "Write_Ctrl" *) 
module core_Write_Ctrl_0_0_Write_Ctrl
   (wna,
    read_toggle,
    Write_addra,
    Ram_en,
    Ram_ready,
    clk,
    fifo_full,
    rst);
  output wna;
  output read_toggle;
  output [10:0]Write_addra;
  output Ram_en;
  output Ram_ready;
  input clk;
  input fifo_full;
  input rst;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire Ram_en;
  wire Ram_en_i_1_n_0;
  wire Ram_ready;
  wire Ram_ready_i_1_n_0;
  wire [10:0]Write_addra;
  wire clk;
  wire [10:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[10]_i_2_n_0 ;
  wire \count[10]_i_3_n_0 ;
  wire \count[10]_i_4_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire ena_i_1_n_0;
  wire fifo_full;
  (* async_reg = "true" *) wire full_meta;
  wire full_seen_low_i_1_n_0;
  wire full_seen_low_reg_n_0;
  (* async_reg = "true" *) wire full_sync;
  wire p_0_in;
  wire read_toggle;
  wire rst;
  wire wna;

  LUT6 #(
    .INIT(64'hAAAABFAABFAABFAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(full_seen_low_reg_n_0),
        .I5(full_sync),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FA10FA10FA10)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(full_seen_low_reg_n_0),
        .I5(full_sync),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0E0E0E0E0E0E0)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(full_seen_low_reg_n_0),
        .I5(full_sync),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(\count[7]_i_2_n_0 ),
        .I2(count[9]),
        .I3(count[8]),
        .I4(count[10]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(count[5]),
        .I1(count[4]),
        .I2(count[7]),
        .I3(count[6]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FULL:001,WRITE_WORD:010,FINISH:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(ena_i_1_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "WAIT_FULL:001,WRITE_WORD:010,FINISH:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "WAIT_FULL:001,WRITE_WORD:010,FINISH:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h7F70)) 
    Ram_en_i_1
       (.I0(full_seen_low_reg_n_0),
        .I1(full_sync),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(Ram_en),
        .O(Ram_en_i_1_n_0));
  FDCE Ram_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(Ram_en_i_1_n_0),
        .Q(Ram_en));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    Ram_ready_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(full_sync),
        .I2(full_seen_low_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(Ram_ready),
        .O(Ram_ready_i_1_n_0));
  FDCE Ram_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(Ram_ready_i_1_n_0),
        .Q(Ram_ready));
  FDCE \Write_addra_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[0]),
        .Q(Write_addra[0]));
  FDCE \Write_addra_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[10]),
        .Q(Write_addra[10]));
  FDCE \Write_addra_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[1]),
        .Q(Write_addra[1]));
  FDCE \Write_addra_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[2]),
        .Q(Write_addra[2]));
  FDCE \Write_addra_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[3]),
        .Q(Write_addra[3]));
  FDCE \Write_addra_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[4]),
        .Q(Write_addra[4]));
  FDCE \Write_addra_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[5]),
        .Q(Write_addra[5]));
  FDCE \Write_addra_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[6]),
        .Q(Write_addra[6]));
  FDCE \Write_addra_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[7]),
        .Q(Write_addra[7]));
  FDCE \Write_addra_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[8]),
        .Q(Write_addra[8]));
  FDCE \Write_addra_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(count[9]),
        .Q(Write_addra[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFAAAAAAAA)) 
    \count[10]_i_1 
       (.I0(\count[10]_i_3_n_0 ),
        .I1(\count[10]_i_4_n_0 ),
        .I2(count[9]),
        .I3(count[8]),
        .I4(count[10]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \count[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\count[10]_i_4_n_0 ),
        .I2(count[8]),
        .I3(count[9]),
        .I4(count[10]),
        .O(\count[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \count[10]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(full_sync),
        .I2(full_seen_low_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \count[10]_i_4 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(count[6]),
        .I2(count[7]),
        .I3(count[4]),
        .I4(count[5]),
        .O(\count[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[3]),
        .I4(count[2]),
        .I5(count[4]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \count[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\count[7]_i_2_n_0 ),
        .I2(count[4]),
        .I3(count[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \count[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[5]),
        .I2(count[4]),
        .I3(\count[7]_i_2_n_0 ),
        .I4(count[6]),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \count[7]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(count[4]),
        .I2(count[5]),
        .I3(count[6]),
        .I4(count[7]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[7]_i_2 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[3]),
        .I3(count[2]),
        .O(\count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\count[10]_i_4_n_0 ),
        .I2(count[8]),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \count[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(count[8]),
        .I2(\count[10]_i_4_n_0 ),
        .I3(count[9]),
        .O(\count[9]_i_1_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[10]_i_2_n_0 ),
        .Q(count[10]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[3]_i_1_n_0 ),
        .Q(count[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[4]_i_1_n_0 ),
        .Q(count[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[5]_i_1_n_0 ),
        .Q(count[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[6]_i_1_n_0 ),
        .Q(count[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[7]_i_1_n_0 ),
        .Q(count[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[8]_i_1_n_0 ),
        .Q(count[8]));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(\count[10]_i_1_n_0 ),
        .CLR(ena_i_1_n_0),
        .D(\count[9]_i_1_n_0 ),
        .Q(count[9]));
  LUT1 #(
    .INIT(2'h1)) 
    ena_i_1
       (.I0(rst),
        .O(ena_i_1_n_0));
  FDCE ena_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(wna));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE full_meta_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_full),
        .PRE(ena_i_1_n_0),
        .Q(full_meta));
  LUT3 #(
    .INIT(8'h4E)) 
    full_seen_low_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(full_seen_low_reg_n_0),
        .I2(full_sync),
        .O(full_seen_low_i_1_n_0));
  FDCE full_seen_low_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ena_i_1_n_0),
        .D(full_seen_low_i_1_n_0),
        .Q(full_seen_low_reg_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE full_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(full_meta),
        .PRE(ena_i_1_n_0),
        .Q(full_sync));
  LUT1 #(
    .INIT(2'h1)) 
    read_toggle_i_1
       (.I0(read_toggle),
        .O(p_0_in));
  FDCE read_toggle_reg
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(ena_i_1_n_0),
        .D(p_0_in),
        .Q(read_toggle));
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
