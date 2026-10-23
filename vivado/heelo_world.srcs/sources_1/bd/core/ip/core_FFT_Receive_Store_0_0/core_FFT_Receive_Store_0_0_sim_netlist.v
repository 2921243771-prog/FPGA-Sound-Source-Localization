// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:56 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_Receive_Store_0_0/core_FFT_Receive_Store_0_0_sim_netlist.v
// Design      : core_FFT_Receive_Store_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_FFT_Receive_Store_0_0,FFT_Receive_Store,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFT_Receive_Store,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_FFT_Receive_Store_0_0
   (clk,
    rst,
    start,
    channel_sel,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tlast,
    m_axis_data_tready,
    ram_ena,
    ram_wea,
    ram_addra,
    ram_dina,
    busy,
    frame_done,
    frame_channel,
    channel_valid,
    all_channels_ready,
    tlast_error);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [1:0]channel_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) input [47:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) input m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *) input m_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tready;
  output ram_ena;
  output ram_wea;
  output [13:0]ram_addra;
  output [47:0]ram_dina;
  output busy;
  output frame_done;
  output [1:0]frame_channel;
  output [3:0]channel_valid;
  output all_channels_ready;
  output tlast_error;

  wire all_channels_ready;
  wire busy;
  wire [1:0]channel_sel;
  wire [3:0]channel_valid;
  wire clk;
  wire frame_done;
  wire [47:0]m_axis_data_tdata;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire [13:0]ram_addra;
  wire ram_ena;
  wire rst;
  wire start;
  wire tlast_error;

  assign frame_channel[1:0] = ram_addra[13:12];
  assign ram_dina[47:0] = m_axis_data_tdata;
  assign ram_wea = ram_ena;
  core_FFT_Receive_Store_0_0_FFT_Receive_Store inst
       (.all_channels_ready(all_channels_ready),
        .busy_reg_0(busy),
        .\channel_latched_reg[0]_0 (ram_addra[12]),
        .\channel_latched_reg[1]_0 (ram_addra[13]),
        .channel_sel(channel_sel),
        .\channel_valid_reg[0]_0 (channel_valid[0]),
        .\channel_valid_reg[1]_0 (channel_valid[1]),
        .\channel_valid_reg[2]_0 (channel_valid[2]),
        .\channel_valid_reg[3]_0 (channel_valid[3]),
        .clk(clk),
        .frame_done(frame_done),
        .m_axis_data_tlast(m_axis_data_tlast),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_data_tvalid_0(ram_ena),
        .ram_addra(ram_addra[11:0]),
        .rst(rst),
        .start(start),
        .tlast_error(tlast_error));
endmodule

(* ORIG_REF_NAME = "FFT_Receive_Store" *) 
module core_FFT_Receive_Store_0_0_FFT_Receive_Store
   (busy_reg_0,
    \channel_latched_reg[1]_0 ,
    \channel_latched_reg[0]_0 ,
    frame_done,
    m_axis_data_tvalid_0,
    \channel_valid_reg[3]_0 ,
    \channel_valid_reg[2]_0 ,
    \channel_valid_reg[1]_0 ,
    \channel_valid_reg[0]_0 ,
    ram_addra,
    m_axis_data_tready,
    all_channels_ready,
    tlast_error,
    channel_sel,
    start,
    clk,
    rst,
    m_axis_data_tvalid,
    m_axis_data_tlast);
  output busy_reg_0;
  output \channel_latched_reg[1]_0 ;
  output \channel_latched_reg[0]_0 ;
  output frame_done;
  output m_axis_data_tvalid_0;
  output \channel_valid_reg[3]_0 ;
  output \channel_valid_reg[2]_0 ;
  output \channel_valid_reg[1]_0 ;
  output \channel_valid_reg[0]_0 ;
  output [11:0]ram_addra;
  output m_axis_data_tready;
  output all_channels_ready;
  output tlast_error;
  input [1:0]channel_sel;
  input start;
  input clk;
  input rst;
  input m_axis_data_tvalid;
  input m_axis_data_tlast;

  wire all_channels_ready;
  wire busy_i_1_n_0;
  wire busy_reg_0;
  wire \channel_latched[0]_i_1_n_0 ;
  wire \channel_latched[1]_i_1_n_0 ;
  wire \channel_latched[1]_i_2_n_0 ;
  wire \channel_latched_reg[0]_0 ;
  wire \channel_latched_reg[1]_0 ;
  wire [1:0]channel_sel;
  wire \channel_valid[0]_i_1_n_0 ;
  wire \channel_valid[0]_i_2_n_0 ;
  wire \channel_valid[0]_i_3_n_0 ;
  wire \channel_valid[1]_i_1_n_0 ;
  wire \channel_valid[1]_i_2_n_0 ;
  wire \channel_valid[1]_i_3_n_0 ;
  wire \channel_valid[2]_i_1_n_0 ;
  wire \channel_valid[2]_i_2_n_0 ;
  wire \channel_valid[2]_i_3_n_0 ;
  wire \channel_valid[3]_i_1_n_0 ;
  wire \channel_valid[3]_i_2_n_0 ;
  wire \channel_valid[3]_i_3_n_0 ;
  wire \channel_valid[3]_i_4_n_0 ;
  wire \channel_valid_reg[0]_0 ;
  wire \channel_valid_reg[1]_0 ;
  wire \channel_valid_reg[2]_0 ;
  wire \channel_valid_reg[3]_0 ;
  wire clk;
  wire frame_done;
  wire frame_done_i_1_n_0;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire m_axis_data_tvalid_0;
  wire \point_index[11]_i_1_n_0 ;
  wire \point_index[11]_i_3_n_0 ;
  wire \point_index[11]_i_4_n_0 ;
  wire \point_index[11]_i_5_n_0 ;
  wire \point_index[11]_i_6_n_0 ;
  wire \point_index[11]_i_7_n_0 ;
  wire \point_index[11]_i_8_n_0 ;
  wire \point_index[11]_i_9_n_0 ;
  wire \point_index[3]_i_2_n_0 ;
  wire \point_index[3]_i_3_n_0 ;
  wire \point_index[3]_i_4_n_0 ;
  wire \point_index[3]_i_5_n_0 ;
  wire \point_index[7]_i_2_n_0 ;
  wire \point_index[7]_i_3_n_0 ;
  wire \point_index[7]_i_4_n_0 ;
  wire \point_index[7]_i_5_n_0 ;
  wire \point_index_reg[11]_i_2_n_1 ;
  wire \point_index_reg[11]_i_2_n_2 ;
  wire \point_index_reg[11]_i_2_n_3 ;
  wire \point_index_reg[11]_i_2_n_4 ;
  wire \point_index_reg[11]_i_2_n_5 ;
  wire \point_index_reg[11]_i_2_n_6 ;
  wire \point_index_reg[11]_i_2_n_7 ;
  wire \point_index_reg[3]_i_1_n_0 ;
  wire \point_index_reg[3]_i_1_n_1 ;
  wire \point_index_reg[3]_i_1_n_2 ;
  wire \point_index_reg[3]_i_1_n_3 ;
  wire \point_index_reg[3]_i_1_n_4 ;
  wire \point_index_reg[3]_i_1_n_5 ;
  wire \point_index_reg[3]_i_1_n_6 ;
  wire \point_index_reg[3]_i_1_n_7 ;
  wire \point_index_reg[7]_i_1_n_0 ;
  wire \point_index_reg[7]_i_1_n_1 ;
  wire \point_index_reg[7]_i_1_n_2 ;
  wire \point_index_reg[7]_i_1_n_3 ;
  wire \point_index_reg[7]_i_1_n_4 ;
  wire \point_index_reg[7]_i_1_n_5 ;
  wire \point_index_reg[7]_i_1_n_6 ;
  wire \point_index_reg[7]_i_1_n_7 ;
  wire [11:0]ram_addra;
  wire rst;
  wire start;
  wire tlast_error;
  wire tlast_error_i_1_n_0;
  wire [3:3]\NLW_point_index_reg[11]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    all_channels_ready_INST_0
       (.I0(\channel_valid_reg[2]_0 ),
        .I1(\channel_valid_reg[1]_0 ),
        .I2(\channel_valid_reg[3]_0 ),
        .I3(\channel_valid_reg[0]_0 ),
        .O(all_channels_ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCFFFAAAA)) 
    busy_i_1
       (.I0(start),
        .I1(\point_index[11]_i_3_n_0 ),
        .I2(m_axis_data_tvalid),
        .I3(rst),
        .I4(busy_reg_0),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(busy_i_1_n_0),
        .Q(busy_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \channel_latched[0]_i_1 
       (.I0(channel_sel[0]),
        .I1(start),
        .I2(busy_reg_0),
        .I3(\channel_latched_reg[0]_0 ),
        .O(\channel_latched[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \channel_latched[1]_i_1 
       (.I0(channel_sel[1]),
        .I1(start),
        .I2(busy_reg_0),
        .I3(\channel_latched_reg[1]_0 ),
        .O(\channel_latched[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \channel_latched[1]_i_2 
       (.I0(rst),
        .O(\channel_latched[1]_i_2_n_0 ));
  FDCE \channel_latched_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_latched[0]_i_1_n_0 ),
        .Q(\channel_latched_reg[0]_0 ));
  FDCE \channel_latched_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_latched[1]_i_1_n_0 ),
        .Q(\channel_latched_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \channel_valid[0]_i_1 
       (.I0(busy_reg_0),
        .I1(\channel_valid[0]_i_2_n_0 ),
        .I2(\point_index[11]_i_3_n_0 ),
        .I3(\channel_valid[0]_i_3_n_0 ),
        .I4(m_axis_data_tvalid_0),
        .I5(\channel_valid_reg[0]_0 ),
        .O(\channel_valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00044444)) 
    \channel_valid[0]_i_2 
       (.I0(busy_reg_0),
        .I1(start),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(\channel_valid[3]_i_4_n_0 ),
        .O(\channel_valid[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \channel_valid[0]_i_3 
       (.I0(\channel_latched_reg[0]_0 ),
        .I1(\channel_latched_reg[1]_0 ),
        .O(\channel_valid[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \channel_valid[1]_i_1 
       (.I0(busy_reg_0),
        .I1(\channel_valid[1]_i_2_n_0 ),
        .I2(\point_index[11]_i_3_n_0 ),
        .I3(\channel_valid[1]_i_3_n_0 ),
        .I4(m_axis_data_tvalid_0),
        .I5(\channel_valid_reg[1]_0 ),
        .O(\channel_valid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00404444)) 
    \channel_valid[1]_i_2 
       (.I0(busy_reg_0),
        .I1(start),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(\channel_valid[3]_i_4_n_0 ),
        .O(\channel_valid[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \channel_valid[1]_i_3 
       (.I0(\channel_latched_reg[1]_0 ),
        .I1(\channel_latched_reg[0]_0 ),
        .O(\channel_valid[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \channel_valid[2]_i_1 
       (.I0(busy_reg_0),
        .I1(\channel_valid[2]_i_2_n_0 ),
        .I2(\point_index[11]_i_3_n_0 ),
        .I3(\channel_valid[2]_i_3_n_0 ),
        .I4(m_axis_data_tvalid_0),
        .I5(\channel_valid_reg[2]_0 ),
        .O(\channel_valid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00404444)) 
    \channel_valid[2]_i_2 
       (.I0(busy_reg_0),
        .I1(start),
        .I2(channel_sel[1]),
        .I3(channel_sel[0]),
        .I4(\channel_valid[3]_i_4_n_0 ),
        .O(\channel_valid[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \channel_valid[2]_i_3 
       (.I0(\channel_latched_reg[0]_0 ),
        .I1(\channel_latched_reg[1]_0 ),
        .O(\channel_valid[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    \channel_valid[3]_i_1 
       (.I0(busy_reg_0),
        .I1(\channel_valid[3]_i_2_n_0 ),
        .I2(\point_index[11]_i_3_n_0 ),
        .I3(\channel_valid[3]_i_3_n_0 ),
        .I4(m_axis_data_tvalid_0),
        .I5(\channel_valid_reg[3]_0 ),
        .O(\channel_valid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40004444)) 
    \channel_valid[3]_i_2 
       (.I0(busy_reg_0),
        .I1(start),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(\channel_valid[3]_i_4_n_0 ),
        .O(\channel_valid[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \channel_valid[3]_i_3 
       (.I0(\channel_latched_reg[0]_0 ),
        .I1(\channel_latched_reg[1]_0 ),
        .O(\channel_valid[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \channel_valid[3]_i_4 
       (.I0(\channel_valid_reg[0]_0 ),
        .I1(\channel_valid_reg[3]_0 ),
        .I2(\channel_valid_reg[1]_0 ),
        .I3(\channel_valid_reg[2]_0 ),
        .O(\channel_valid[3]_i_4_n_0 ));
  FDCE \channel_valid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_valid[0]_i_1_n_0 ),
        .Q(\channel_valid_reg[0]_0 ));
  FDCE \channel_valid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_valid[1]_i_1_n_0 ),
        .Q(\channel_valid_reg[1]_0 ));
  FDCE \channel_valid_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_valid[2]_i_1_n_0 ),
        .Q(\channel_valid_reg[2]_0 ));
  FDCE \channel_valid_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\channel_valid[3]_i_1_n_0 ),
        .Q(\channel_valid_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    frame_done_i_1
       (.I0(busy_reg_0),
        .I1(rst),
        .I2(m_axis_data_tvalid),
        .I3(\point_index[11]_i_3_n_0 ),
        .O(frame_done_i_1_n_0));
  FDCE frame_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(frame_done_i_1_n_0),
        .Q(frame_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_data_tready_INST_0
       (.I0(rst),
        .I1(busy_reg_0),
        .O(m_axis_data_tready));
  LUT5 #(
    .INIT(32'hC000AAAA)) 
    \point_index[11]_i_1 
       (.I0(start),
        .I1(\point_index[11]_i_3_n_0 ),
        .I2(m_axis_data_tvalid),
        .I3(rst),
        .I4(busy_reg_0),
        .O(\point_index[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \point_index[11]_i_3 
       (.I0(\point_index[11]_i_8_n_0 ),
        .I1(\point_index[11]_i_9_n_0 ),
        .O(\point_index[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[11]_i_4 
       (.I0(busy_reg_0),
        .I1(ram_addra[11]),
        .O(\point_index[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[11]_i_5 
       (.I0(busy_reg_0),
        .I1(ram_addra[10]),
        .O(\point_index[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[11]_i_6 
       (.I0(busy_reg_0),
        .I1(ram_addra[9]),
        .O(\point_index[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[11]_i_7 
       (.I0(busy_reg_0),
        .I1(ram_addra[8]),
        .O(\point_index[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \point_index[11]_i_8 
       (.I0(ram_addra[4]),
        .I1(ram_addra[3]),
        .I2(ram_addra[5]),
        .I3(ram_addra[1]),
        .I4(ram_addra[0]),
        .I5(ram_addra[2]),
        .O(\point_index[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \point_index[11]_i_9 
       (.I0(ram_addra[7]),
        .I1(ram_addra[6]),
        .I2(ram_addra[8]),
        .I3(ram_addra[11]),
        .I4(ram_addra[9]),
        .I5(ram_addra[10]),
        .O(\point_index[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[3]_i_2 
       (.I0(busy_reg_0),
        .I1(ram_addra[3]),
        .O(\point_index[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[3]_i_3 
       (.I0(busy_reg_0),
        .I1(ram_addra[2]),
        .O(\point_index[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[3]_i_4 
       (.I0(busy_reg_0),
        .I1(ram_addra[1]),
        .O(\point_index[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \point_index[3]_i_5 
       (.I0(ram_addra[0]),
        .I1(busy_reg_0),
        .O(\point_index[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[7]_i_2 
       (.I0(busy_reg_0),
        .I1(ram_addra[7]),
        .O(\point_index[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[7]_i_3 
       (.I0(busy_reg_0),
        .I1(ram_addra[6]),
        .O(\point_index[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[7]_i_4 
       (.I0(busy_reg_0),
        .I1(ram_addra[5]),
        .O(\point_index[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \point_index[7]_i_5 
       (.I0(busy_reg_0),
        .I1(ram_addra[4]),
        .O(\point_index[7]_i_5_n_0 ));
  FDCE \point_index_reg[0] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[3]_i_1_n_7 ),
        .Q(ram_addra[0]));
  FDCE \point_index_reg[10] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[11]_i_2_n_5 ),
        .Q(ram_addra[10]));
  FDCE \point_index_reg[11] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[11]_i_2_n_4 ),
        .Q(ram_addra[11]));
  CARRY4 \point_index_reg[11]_i_2 
       (.CI(\point_index_reg[7]_i_1_n_0 ),
        .CO({\NLW_point_index_reg[11]_i_2_CO_UNCONNECTED [3],\point_index_reg[11]_i_2_n_1 ,\point_index_reg[11]_i_2_n_2 ,\point_index_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\point_index_reg[11]_i_2_n_4 ,\point_index_reg[11]_i_2_n_5 ,\point_index_reg[11]_i_2_n_6 ,\point_index_reg[11]_i_2_n_7 }),
        .S({\point_index[11]_i_4_n_0 ,\point_index[11]_i_5_n_0 ,\point_index[11]_i_6_n_0 ,\point_index[11]_i_7_n_0 }));
  FDCE \point_index_reg[1] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[3]_i_1_n_6 ),
        .Q(ram_addra[1]));
  FDCE \point_index_reg[2] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[3]_i_1_n_5 ),
        .Q(ram_addra[2]));
  FDCE \point_index_reg[3] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[3]_i_1_n_4 ),
        .Q(ram_addra[3]));
  CARRY4 \point_index_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\point_index_reg[3]_i_1_n_0 ,\point_index_reg[3]_i_1_n_1 ,\point_index_reg[3]_i_1_n_2 ,\point_index_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,busy_reg_0}),
        .O({\point_index_reg[3]_i_1_n_4 ,\point_index_reg[3]_i_1_n_5 ,\point_index_reg[3]_i_1_n_6 ,\point_index_reg[3]_i_1_n_7 }),
        .S({\point_index[3]_i_2_n_0 ,\point_index[3]_i_3_n_0 ,\point_index[3]_i_4_n_0 ,\point_index[3]_i_5_n_0 }));
  FDCE \point_index_reg[4] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[7]_i_1_n_7 ),
        .Q(ram_addra[4]));
  FDCE \point_index_reg[5] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[7]_i_1_n_6 ),
        .Q(ram_addra[5]));
  FDCE \point_index_reg[6] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[7]_i_1_n_5 ),
        .Q(ram_addra[6]));
  FDCE \point_index_reg[7] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[7]_i_1_n_4 ),
        .Q(ram_addra[7]));
  CARRY4 \point_index_reg[7]_i_1 
       (.CI(\point_index_reg[3]_i_1_n_0 ),
        .CO({\point_index_reg[7]_i_1_n_0 ,\point_index_reg[7]_i_1_n_1 ,\point_index_reg[7]_i_1_n_2 ,\point_index_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\point_index_reg[7]_i_1_n_4 ,\point_index_reg[7]_i_1_n_5 ,\point_index_reg[7]_i_1_n_6 ,\point_index_reg[7]_i_1_n_7 }),
        .S({\point_index[7]_i_2_n_0 ,\point_index[7]_i_3_n_0 ,\point_index[7]_i_4_n_0 ,\point_index[7]_i_5_n_0 }));
  FDCE \point_index_reg[8] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[11]_i_2_n_7 ),
        .Q(ram_addra[8]));
  FDCE \point_index_reg[9] 
       (.C(clk),
        .CE(\point_index[11]_i_1_n_0 ),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(\point_index_reg[11]_i_2_n_6 ),
        .Q(ram_addra[9]));
  LUT3 #(
    .INIT(8'h80)) 
    ram_wea_INST_0
       (.I0(m_axis_data_tvalid),
        .I1(rst),
        .I2(busy_reg_0),
        .O(m_axis_data_tvalid_0));
  LUT6 #(
    .INIT(64'hABBABBBBA00A0000)) 
    tlast_error_i_1
       (.I0(busy_reg_0),
        .I1(start),
        .I2(m_axis_data_tlast),
        .I3(\point_index[11]_i_3_n_0 ),
        .I4(m_axis_data_tvalid_0),
        .I5(tlast_error),
        .O(tlast_error_i_1_n_0));
  FDCE tlast_error_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\channel_latched[1]_i_2_n_0 ),
        .D(tlast_error_i_1_n_0),
        .Q(tlast_error));
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
