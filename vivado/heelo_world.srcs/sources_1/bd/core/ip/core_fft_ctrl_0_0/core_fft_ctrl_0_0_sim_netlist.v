// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fft_ctrl_0_0/core_fft_ctrl_0_0_sim_netlist.v
// Design      : core_fft_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_fft_ctrl_0_0,fft_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft_ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_fft_ctrl_0_0
   (clk,
    rst,
    Ram_ready,
    addrb,
    enb,
    data,
    ifft_data,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    tdata,
    s_axis_data_tvalid,
    s_axis_data_tlast,
    s_axis_data_tready,
    fft_rx_start,
    channel_sel,
    fft_frame_done,
    busy,
    batch_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_config:s_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input Ram_ready;
  output [12:0]addrb;
  output enb;
  input [23:0]data;
  input [47:0]ifft_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TDATA" *) output [7:0]s_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TVALID" *) output s_axis_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) output [47:0]tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) output s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TLAST" *) output s_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tready;
  output fft_rx_start;
  output [1:0]channel_sel;
  input fft_frame_done;
  output busy;
  output batch_done;

  wire \<const0> ;
  wire \<const1> ;
  wire Ram_ready;
  wire [12:0]addrb;
  wire batch_done;
  wire busy;
  wire [1:0]channel_sel;
  wire clk;
  wire [23:0]data;
  wire enb;
  wire fft_frame_done;
  wire fft_rx_start;
  wire rst;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid;
  wire s_axis_data_tlast;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire [23:0]\^tdata ;

  assign s_axis_config_tdata[7] = \<const0> ;
  assign s_axis_config_tdata[6] = \<const0> ;
  assign s_axis_config_tdata[5] = \<const0> ;
  assign s_axis_config_tdata[4] = \<const0> ;
  assign s_axis_config_tdata[3] = \<const0> ;
  assign s_axis_config_tdata[2] = \<const0> ;
  assign s_axis_config_tdata[1] = \<const0> ;
  assign s_axis_config_tdata[0] = \<const1> ;
  assign tdata[47] = \<const0> ;
  assign tdata[46] = \<const0> ;
  assign tdata[45] = \<const0> ;
  assign tdata[44] = \<const0> ;
  assign tdata[43] = \<const0> ;
  assign tdata[42] = \<const0> ;
  assign tdata[41] = \<const0> ;
  assign tdata[40] = \<const0> ;
  assign tdata[39] = \<const0> ;
  assign tdata[38] = \<const0> ;
  assign tdata[37] = \<const0> ;
  assign tdata[36] = \<const0> ;
  assign tdata[35] = \<const0> ;
  assign tdata[34] = \<const0> ;
  assign tdata[33] = \<const0> ;
  assign tdata[32] = \<const0> ;
  assign tdata[31] = \<const0> ;
  assign tdata[30] = \<const0> ;
  assign tdata[29] = \<const0> ;
  assign tdata[28] = \<const0> ;
  assign tdata[27] = \<const0> ;
  assign tdata[26] = \<const0> ;
  assign tdata[25] = \<const0> ;
  assign tdata[24] = \<const0> ;
  assign tdata[23:0] = \^tdata [23:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  core_fft_ctrl_0_0_fft_ctrl inst
       (.Ram_ready(Ram_ready),
        .addrb(addrb),
        .batch_done(batch_done),
        .busy(busy),
        .\channel_sel_reg[0]_0 (channel_sel[0]),
        .\channel_sel_reg[1]_0 (channel_sel[1]),
        .clk(clk),
        .data(data),
        .enb(enb),
        .fft_frame_done(fft_frame_done),
        .fft_rx_start(fft_rx_start),
        .rst(rst),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_config_tvalid_reg_0(s_axis_config_tvalid),
        .s_axis_data_tlast(s_axis_data_tlast),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid_reg_0(s_axis_data_tvalid),
        .tdata(\^tdata ));
endmodule

(* ORIG_REF_NAME = "fft_ctrl" *) 
module core_fft_ctrl_0_0_fft_ctrl
   (\channel_sel_reg[0]_0 ,
    \channel_sel_reg[1]_0 ,
    addrb,
    tdata,
    batch_done,
    s_axis_config_tvalid_reg_0,
    fft_rx_start,
    s_axis_data_tvalid_reg_0,
    enb,
    busy,
    s_axis_data_tlast,
    clk,
    Ram_ready,
    fft_frame_done,
    s_axis_config_tready,
    rst,
    s_axis_data_tready,
    data);
  output \channel_sel_reg[0]_0 ;
  output \channel_sel_reg[1]_0 ;
  output [12:0]addrb;
  output [23:0]tdata;
  output batch_done;
  output s_axis_config_tvalid_reg_0;
  output fft_rx_start;
  output s_axis_data_tvalid_reg_0;
  output enb;
  output busy;
  output s_axis_data_tlast;
  input clk;
  input Ram_ready;
  input fft_frame_done;
  input s_axis_config_tready;
  input rst;
  input s_axis_data_tready;
  input [23:0]data;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire Ram_ready;
  wire Ram_ready_d;
  wire [12:0]addrb;
  wire \addrb[12]_i_1_n_0 ;
  wire \addrb[12]_i_2_n_0 ;
  wire batch_done;
  wire batch_done_i_1_n_0;
  wire busy;
  wire busy_i_1_n_0;
  wire \channel_sel[0]_i_1_n_0 ;
  wire \channel_sel[1]_i_1_n_0 ;
  wire \channel_sel[1]_i_2_n_0 ;
  wire \channel_sel_reg[0]_0 ;
  wire \channel_sel_reg[1]_0 ;
  wire clk;
  wire [23:0]data;
  wire enb;
  wire enb_i_1_n_0;
  wire fft_frame_done;
  wire fft_rx_start;
  wire [11:1]in9;
  wire rst;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid_i_1_n_0;
  wire s_axis_config_tvalid_i_2_n_0;
  wire s_axis_config_tvalid_i_3_n_0;
  wire s_axis_config_tvalid_i_4_n_0;
  wire s_axis_config_tvalid_reg_0;
  wire s_axis_data_tlast;
  wire s_axis_data_tlast_i_1_n_0;
  wire s_axis_data_tlast_i_2_n_0;
  wire s_axis_data_tlast_i_3_n_0;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid_i_1_n_0;
  wire s_axis_data_tvalid_i_2_n_0;
  wire s_axis_data_tvalid_i_3_n_0;
  wire s_axis_data_tvalid_reg_0;
  wire [11:0]send_index;
  wire send_index0_carry__0_n_0;
  wire send_index0_carry__0_n_1;
  wire send_index0_carry__0_n_2;
  wire send_index0_carry__0_n_3;
  wire send_index0_carry__1_n_2;
  wire send_index0_carry__1_n_3;
  wire send_index0_carry_n_0;
  wire send_index0_carry_n_1;
  wire send_index0_carry_n_2;
  wire send_index0_carry_n_3;
  wire \send_index[11]_i_1_n_0 ;
  wire \send_index_reg_n_0_[0] ;
  wire \send_index_reg_n_0_[10] ;
  wire \send_index_reg_n_0_[11] ;
  wire \send_index_reg_n_0_[1] ;
  wire \send_index_reg_n_0_[2] ;
  wire \send_index_reg_n_0_[3] ;
  wire \send_index_reg_n_0_[4] ;
  wire \send_index_reg_n_0_[5] ;
  wire \send_index_reg_n_0_[6] ;
  wire \send_index_reg_n_0_[7] ;
  wire \send_index_reg_n_0_[8] ;
  wire \send_index_reg_n_0_[9] ;
  wire [2:0]state__0;
  wire [23:0]tdata;
  wire \tdata[0]_i_1_n_0 ;
  wire \tdata[10]_i_1_n_0 ;
  wire \tdata[11]_i_1_n_0 ;
  wire \tdata[12]_i_1_n_0 ;
  wire \tdata[13]_i_1_n_0 ;
  wire \tdata[14]_i_1_n_0 ;
  wire \tdata[15]_i_1_n_0 ;
  wire \tdata[16]_i_1_n_0 ;
  wire \tdata[17]_i_1_n_0 ;
  wire \tdata[18]_i_1_n_0 ;
  wire \tdata[19]_i_1_n_0 ;
  wire \tdata[1]_i_1_n_0 ;
  wire \tdata[20]_i_1_n_0 ;
  wire \tdata[21]_i_1_n_0 ;
  wire \tdata[22]_i_1_n_0 ;
  wire \tdata[23]_i_1_n_0 ;
  wire \tdata[23]_i_2_n_0 ;
  wire \tdata[23]_i_3_n_0 ;
  wire \tdata[23]_i_4_n_0 ;
  wire \tdata[23]_i_5_n_0 ;
  wire \tdata[2]_i_1_n_0 ;
  wire \tdata[3]_i_1_n_0 ;
  wire \tdata[4]_i_1_n_0 ;
  wire \tdata[5]_i_1_n_0 ;
  wire \tdata[6]_i_1_n_0 ;
  wire \tdata[7]_i_1_n_0 ;
  wire \tdata[8]_i_1_n_0 ;
  wire \tdata[9]_i_1_n_0 ;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire [3:2]NLW_send_index0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_send_index0_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h000F0F0FBBB0B0B0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(s_axis_data_tvalid_i_2_n_0),
        .I4(s_axis_data_tlast_i_3_n_0),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\channel_sel_reg[0]_0 ),
        .I1(\channel_sel_reg[1]_0 ),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h111F1F1FCCC0C0C0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(s_axis_data_tvalid_i_2_n_0),
        .I4(s_axis_data_tlast_i_3_n_0),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222F2F2F88808080)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(s_axis_data_tvalid_i_2_n_0),
        .I4(s_axis_data_tlast_i_3_n_0),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAA55555555)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[1]),
        .I1(\send_index_reg_n_0_[11] ),
        .I2(s_axis_data_tvalid_i_3_n_0),
        .I3(\tdata[23]_i_5_n_0 ),
        .I4(\send_index_reg_n_0_[0] ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00FFCCCCFCCC)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(fft_frame_done),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF000F2F2)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(Ram_ready),
        .I1(Ram_ready_d),
        .I2(state__0[1]),
        .I3(\wait_count_reg_n_0_[0] ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(s_axis_config_tvalid_reg_0),
        .I1(s_axis_config_tready),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  FDCE Ram_ready_d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(Ram_ready),
        .Q(Ram_ready_d));
  LUT3 #(
    .INIT(8'h10)) 
    \addrb[12]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\addrb[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addrb[12]_i_2 
       (.I0(rst),
        .O(\addrb[12]_i_2_n_0 ));
  FDCE \addrb_reg[0] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\channel_sel_reg[0]_0 ),
        .Q(addrb[0]));
  FDCE \addrb_reg[10] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[8] ),
        .Q(addrb[10]));
  FDCE \addrb_reg[11] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[9] ),
        .Q(addrb[11]));
  FDCE \addrb_reg[12] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[10] ),
        .Q(addrb[12]));
  FDCE \addrb_reg[1] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\channel_sel_reg[1]_0 ),
        .Q(addrb[1]));
  FDCE \addrb_reg[2] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[0] ),
        .Q(addrb[2]));
  FDCE \addrb_reg[3] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[1] ),
        .Q(addrb[3]));
  FDCE \addrb_reg[4] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[2] ),
        .Q(addrb[4]));
  FDCE \addrb_reg[5] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[3] ),
        .Q(addrb[5]));
  FDCE \addrb_reg[6] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[4] ),
        .Q(addrb[6]));
  FDCE \addrb_reg[7] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[5] ),
        .Q(addrb[7]));
  FDCE \addrb_reg[8] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[6] ),
        .Q(addrb[8]));
  FDCE \addrb_reg[9] 
       (.C(clk),
        .CE(\addrb[12]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\send_index_reg_n_0_[7] ),
        .Q(addrb[9]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    batch_done_i_1
       (.I0(fft_frame_done),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\channel_sel_reg[1]_0 ),
        .I5(\channel_sel_reg[0]_0 ),
        .O(batch_done_i_1_n_0));
  FDCE batch_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(batch_done_i_1_n_0),
        .Q(batch_done));
  LUT6 #(
    .INIT(64'h5F555F550A000B00)) 
    busy_i_1
       (.I0(batch_done_i_1_n_0),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(s_axis_config_tvalid_i_2_n_0),
        .I4(state__0[1]),
        .I5(busy),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(busy_i_1_n_0),
        .Q(busy));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \channel_sel[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\channel_sel[1]_i_2_n_0 ),
        .I3(\channel_sel_reg[0]_0 ),
        .O(\channel_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FF2000)) 
    \channel_sel[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\channel_sel_reg[0]_0 ),
        .I3(\channel_sel[1]_i_2_n_0 ),
        .I4(\channel_sel_reg[1]_0 ),
        .O(\channel_sel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \channel_sel[1]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(Ram_ready_d),
        .I3(Ram_ready),
        .I4(state__0[1]),
        .I5(s_axis_config_tvalid_i_4_n_0),
        .O(\channel_sel[1]_i_2_n_0 ));
  FDCE \channel_sel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\channel_sel[0]_i_1_n_0 ),
        .Q(\channel_sel_reg[0]_0 ));
  FDCE \channel_sel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\channel_sel[1]_i_1_n_0 ),
        .Q(\channel_sel_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFA02)) 
    enb_i_1
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(enb),
        .O(enb_i_1_n_0));
  FDCE enb_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(enb_i_1_n_0),
        .Q(enb));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    fft_rx_start_INST_0
       (.I0(s_axis_config_tready),
        .I1(s_axis_config_tvalid_reg_0),
        .I2(rst),
        .O(fft_rx_start));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    s_axis_config_tvalid_i_1
       (.I0(fft_frame_done),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(s_axis_config_tvalid_i_2_n_0),
        .I4(s_axis_config_tvalid_i_3_n_0),
        .I5(s_axis_config_tvalid_reg_0),
        .O(s_axis_config_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_config_tvalid_i_2
       (.I0(Ram_ready),
        .I1(Ram_ready_d),
        .O(s_axis_config_tvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF05010101)) 
    s_axis_config_tvalid_i_3
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(s_axis_config_tready),
        .I4(s_axis_config_tvalid_reg_0),
        .I5(s_axis_config_tvalid_i_4_n_0),
        .O(s_axis_config_tvalid_i_3_n_0));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    s_axis_config_tvalid_i_4
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\channel_sel_reg[1]_0 ),
        .I3(\channel_sel_reg[0]_0 ),
        .I4(state__0[2]),
        .I5(fft_frame_done),
        .O(s_axis_config_tvalid_i_4_n_0));
  FDCE s_axis_config_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(s_axis_config_tvalid_i_1_n_0),
        .Q(s_axis_config_tvalid_reg_0));
  LUT5 #(
    .INIT(32'hAAFEAA02)) 
    s_axis_data_tlast_i_1
       (.I0(s_axis_data_tlast_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(s_axis_data_tlast_i_3_n_0),
        .I4(s_axis_data_tlast),
        .O(s_axis_data_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000001100000)) 
    s_axis_data_tlast_i_2
       (.I0(s_axis_data_tvalid_i_3_n_0),
        .I1(\tdata[23]_i_5_n_0 ),
        .I2(\send_index_reg_n_0_[0] ),
        .I3(state__0[0]),
        .I4(\send_index_reg_n_0_[11] ),
        .I5(\tdata[23]_i_4_n_0 ),
        .O(s_axis_data_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    s_axis_data_tlast_i_3
       (.I0(s_axis_data_tready),
        .I1(s_axis_data_tvalid_reg_0),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(s_axis_data_tlast_i_3_n_0));
  FDCE s_axis_data_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(s_axis_data_tlast_i_1_n_0),
        .Q(s_axis_data_tlast));
  LUT6 #(
    .INIT(64'hF7FC0300FFFC0300)) 
    s_axis_data_tvalid_i_1
       (.I0(s_axis_data_tvalid_i_2_n_0),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(s_axis_data_tvalid_reg_0),
        .I5(s_axis_data_tready),
        .O(s_axis_data_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h10EF)) 
    s_axis_data_tvalid_i_2
       (.I0(s_axis_data_tvalid_i_3_n_0),
        .I1(\tdata[23]_i_5_n_0 ),
        .I2(\send_index_reg_n_0_[0] ),
        .I3(\send_index_reg_n_0_[11] ),
        .O(s_axis_data_tvalid_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    s_axis_data_tvalid_i_3
       (.I0(\send_index_reg_n_0_[5] ),
        .I1(\send_index_reg_n_0_[6] ),
        .I2(\send_index_reg_n_0_[1] ),
        .I3(\send_index_reg_n_0_[4] ),
        .O(s_axis_data_tvalid_i_3_n_0));
  FDCE s_axis_data_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(s_axis_data_tvalid_i_1_n_0),
        .Q(s_axis_data_tvalid_reg_0));
  CARRY4 send_index0_carry
       (.CI(1'b0),
        .CO({send_index0_carry_n_0,send_index0_carry_n_1,send_index0_carry_n_2,send_index0_carry_n_3}),
        .CYINIT(\send_index_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S({\send_index_reg_n_0_[4] ,\send_index_reg_n_0_[3] ,\send_index_reg_n_0_[2] ,\send_index_reg_n_0_[1] }));
  CARRY4 send_index0_carry__0
       (.CI(send_index0_carry_n_0),
        .CO({send_index0_carry__0_n_0,send_index0_carry__0_n_1,send_index0_carry__0_n_2,send_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\send_index_reg_n_0_[8] ,\send_index_reg_n_0_[7] ,\send_index_reg_n_0_[6] ,\send_index_reg_n_0_[5] }));
  CARRY4 send_index0_carry__1
       (.CI(send_index0_carry__0_n_0),
        .CO({NLW_send_index0_carry__1_CO_UNCONNECTED[3:2],send_index0_carry__1_n_2,send_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_send_index0_carry__1_O_UNCONNECTED[3],in9[11:9]}),
        .S({1'b0,\send_index_reg_n_0_[11] ,\send_index_reg_n_0_[10] ,\send_index_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \send_index[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(\send_index_reg_n_0_[0] ),
        .O(send_index[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[10]_i_1 
       (.I0(in9[10]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[10]));
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \send_index[11]_i_1 
       (.I0(\send_index_reg_n_0_[11] ),
        .I1(\tdata[23]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(s_axis_data_tlast_i_3_n_0),
        .I4(\channel_sel[1]_i_2_n_0 ),
        .O(\send_index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[11]_i_2 
       (.I0(in9[11]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[1]_i_1 
       (.I0(in9[1]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[2]_i_1 
       (.I0(in9[2]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[3]_i_1 
       (.I0(in9[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[4]_i_1 
       (.I0(in9[4]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[5]_i_1 
       (.I0(in9[5]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[6]_i_1 
       (.I0(in9[6]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[7]_i_1 
       (.I0(in9[7]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[8]_i_1 
       (.I0(in9[8]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send_index[9]_i_1 
       (.I0(in9[9]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(send_index[9]));
  FDCE \send_index_reg[0] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[0]),
        .Q(\send_index_reg_n_0_[0] ));
  FDCE \send_index_reg[10] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[10]),
        .Q(\send_index_reg_n_0_[10] ));
  FDCE \send_index_reg[11] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[11]),
        .Q(\send_index_reg_n_0_[11] ));
  FDCE \send_index_reg[1] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[1]),
        .Q(\send_index_reg_n_0_[1] ));
  FDCE \send_index_reg[2] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[2]),
        .Q(\send_index_reg_n_0_[2] ));
  FDCE \send_index_reg[3] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[3]),
        .Q(\send_index_reg_n_0_[3] ));
  FDCE \send_index_reg[4] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[4]),
        .Q(\send_index_reg_n_0_[4] ));
  FDCE \send_index_reg[5] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[5]),
        .Q(\send_index_reg_n_0_[5] ));
  FDCE \send_index_reg[6] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[6]),
        .Q(\send_index_reg_n_0_[6] ));
  FDCE \send_index_reg[7] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[7]),
        .Q(\send_index_reg_n_0_[7] ));
  FDCE \send_index_reg[8] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[8]),
        .Q(\send_index_reg_n_0_[8] ));
  FDCE \send_index_reg[9] 
       (.C(clk),
        .CE(\send_index[11]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(send_index[9]),
        .Q(\send_index_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[0]_i_1 
       (.I0(data[0]),
        .I1(state__0[0]),
        .O(\tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[10]_i_1 
       (.I0(data[10]),
        .I1(state__0[0]),
        .O(\tdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[11]_i_1 
       (.I0(data[11]),
        .I1(state__0[0]),
        .O(\tdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[12]_i_1 
       (.I0(data[12]),
        .I1(state__0[0]),
        .O(\tdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[13]_i_1 
       (.I0(data[13]),
        .I1(state__0[0]),
        .O(\tdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[14]_i_1 
       (.I0(data[14]),
        .I1(state__0[0]),
        .O(\tdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[15]_i_1 
       (.I0(data[15]),
        .I1(state__0[0]),
        .O(\tdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[16]_i_1 
       (.I0(data[16]),
        .I1(state__0[0]),
        .O(\tdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[17]_i_1 
       (.I0(data[17]),
        .I1(state__0[0]),
        .O(\tdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[18]_i_1 
       (.I0(data[18]),
        .I1(state__0[0]),
        .O(\tdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[19]_i_1 
       (.I0(data[19]),
        .I1(state__0[0]),
        .O(\tdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[1]_i_1 
       (.I0(data[1]),
        .I1(state__0[0]),
        .O(\tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[20]_i_1 
       (.I0(data[20]),
        .I1(state__0[0]),
        .O(\tdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[21]_i_1 
       (.I0(data[21]),
        .I1(state__0[0]),
        .O(\tdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[22]_i_1 
       (.I0(data[22]),
        .I1(state__0[0]),
        .O(\tdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009000FFFF)) 
    \tdata[23]_i_1 
       (.I0(\tdata[23]_i_3_n_0 ),
        .I1(\send_index_reg_n_0_[11] ),
        .I2(s_axis_data_tready),
        .I3(s_axis_data_tvalid_reg_0),
        .I4(state__0[0]),
        .I5(\tdata[23]_i_4_n_0 ),
        .O(\tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[23]_i_2 
       (.I0(data[23]),
        .I1(state__0[0]),
        .O(\tdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \tdata[23]_i_3 
       (.I0(\send_index_reg_n_0_[5] ),
        .I1(\send_index_reg_n_0_[6] ),
        .I2(\send_index_reg_n_0_[1] ),
        .I3(\send_index_reg_n_0_[4] ),
        .I4(\tdata[23]_i_5_n_0 ),
        .I5(\send_index_reg_n_0_[0] ),
        .O(\tdata[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tdata[23]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\tdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tdata[23]_i_5 
       (.I0(\send_index_reg_n_0_[9] ),
        .I1(\send_index_reg_n_0_[8] ),
        .I2(\send_index_reg_n_0_[3] ),
        .I3(\send_index_reg_n_0_[2] ),
        .I4(\send_index_reg_n_0_[7] ),
        .I5(\send_index_reg_n_0_[10] ),
        .O(\tdata[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[2]_i_1 
       (.I0(data[2]),
        .I1(state__0[0]),
        .O(\tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[3]_i_1 
       (.I0(data[3]),
        .I1(state__0[0]),
        .O(\tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[4]_i_1 
       (.I0(data[4]),
        .I1(state__0[0]),
        .O(\tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[5]_i_1 
       (.I0(data[5]),
        .I1(state__0[0]),
        .O(\tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[6]_i_1 
       (.I0(data[6]),
        .I1(state__0[0]),
        .O(\tdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[7]_i_1 
       (.I0(data[7]),
        .I1(state__0[0]),
        .O(\tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[8]_i_1 
       (.I0(data[8]),
        .I1(state__0[0]),
        .O(\tdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdata[9]_i_1 
       (.I0(data[9]),
        .I1(state__0[0]),
        .O(\tdata[9]_i_1_n_0 ));
  FDCE \tdata_reg[0] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[0]_i_1_n_0 ),
        .Q(tdata[0]));
  FDCE \tdata_reg[10] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[10]_i_1_n_0 ),
        .Q(tdata[10]));
  FDCE \tdata_reg[11] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[11]_i_1_n_0 ),
        .Q(tdata[11]));
  FDCE \tdata_reg[12] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[12]_i_1_n_0 ),
        .Q(tdata[12]));
  FDCE \tdata_reg[13] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[13]_i_1_n_0 ),
        .Q(tdata[13]));
  FDCE \tdata_reg[14] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[14]_i_1_n_0 ),
        .Q(tdata[14]));
  FDCE \tdata_reg[15] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[15]_i_1_n_0 ),
        .Q(tdata[15]));
  FDCE \tdata_reg[16] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[16]_i_1_n_0 ),
        .Q(tdata[16]));
  FDCE \tdata_reg[17] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[17]_i_1_n_0 ),
        .Q(tdata[17]));
  FDCE \tdata_reg[18] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[18]_i_1_n_0 ),
        .Q(tdata[18]));
  FDCE \tdata_reg[19] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[19]_i_1_n_0 ),
        .Q(tdata[19]));
  FDCE \tdata_reg[1] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[1]_i_1_n_0 ),
        .Q(tdata[1]));
  FDCE \tdata_reg[20] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[20]_i_1_n_0 ),
        .Q(tdata[20]));
  FDCE \tdata_reg[21] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[21]_i_1_n_0 ),
        .Q(tdata[21]));
  FDCE \tdata_reg[22] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[22]_i_1_n_0 ),
        .Q(tdata[22]));
  FDCE \tdata_reg[23] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[23]_i_2_n_0 ),
        .Q(tdata[23]));
  FDCE \tdata_reg[2] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[2]_i_1_n_0 ),
        .Q(tdata[2]));
  FDCE \tdata_reg[3] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[3]_i_1_n_0 ),
        .Q(tdata[3]));
  FDCE \tdata_reg[4] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[4]_i_1_n_0 ),
        .Q(tdata[4]));
  FDCE \tdata_reg[5] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[5]_i_1_n_0 ),
        .Q(tdata[5]));
  FDCE \tdata_reg[6] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[6]_i_1_n_0 ),
        .Q(tdata[6]));
  FDCE \tdata_reg[7] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[7]_i_1_n_0 ),
        .Q(tdata[7]));
  FDCE \tdata_reg[8] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[8]_i_1_n_0 ),
        .Q(tdata[8]));
  FDCE \tdata_reg[9] 
       (.C(clk),
        .CE(\tdata[23]_i_1_n_0 ),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\tdata[9]_i_1_n_0 ),
        .Q(tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \wait_count[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[0]_i_1_n_0 ));
  FDCE \wait_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addrb[12]_i_2_n_0 ),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[0] ));
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
