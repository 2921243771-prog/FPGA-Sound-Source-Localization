// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 16:28:41 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_PHAT_IFFT_Ctrl_0_0/core_PHAT_IFFT_Ctrl_0_0_sim_netlist.v
// Design      : core_PHAT_IFFT_Ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_PHAT_IFFT_Ctrl_0_0,PHAT_IFFT_Ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "PHAT_IFFT_Ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_PHAT_IFFT_Ctrl_0_0
   (clk,
    rst,
    start,
    busy,
    done,
    spectrum_addrb,
    spectrum_enb,
    spectrum_doutb,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tlast,
    s_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tlast,
    m_axis_data_tready,
    pair_index,
    pair_done,
    pair_lag,
    pair_peak,
    lag12,
    lag13,
    lag14,
    lag23,
    lag24,
    lag34,
    lag_valid,
    frame_error);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data:s_axis_config:s_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  output busy;
  output done;
  output [13:0]spectrum_addrb;
  output spectrum_enb;
  input [47:0]spectrum_doutb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TDATA" *) output [7:0]s_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TVALID" *) output s_axis_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) output [47:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) output s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TLAST" *) output s_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) input [47:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) input m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *) input m_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tready;
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

  wire \<const0> ;
  wire busy;
  wire clk;
  wire done;
  wire frame_error;
  wire [14:0]\^lag12 ;
  wire [14:0]\^lag13 ;
  wire [14:0]\^lag14 ;
  wire [14:0]\^lag23 ;
  wire [14:0]\^lag24 ;
  wire [14:0]\^lag34 ;
  wire [5:0]lag_valid;
  wire [47:0]m_axis_data_tdata;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire \out_im[4]_i_3_n_0 ;
  wire \out_re[4]_i_3_n_0 ;
  wire pair_done;
  wire [2:0]pair_index;
  wire [14:0]\^pair_lag ;
  wire [23:0]pair_peak;
  wire \radicand[97]_i_4_n_0 ;
  wire \radicand[97]_i_5_n_0 ;
  wire rst;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid;
  wire [47:0]s_axis_data_tdata;
  wire s_axis_data_tlast;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire [13:0]spectrum_addrb;
  wire [47:0]spectrum_doutb;
  wire spectrum_enb;
  wire start;
  wire \weight/arithmetic/im_bit ;
  wire [0:0]\weight/arithmetic/p_0_in0_in ;
  wire [97:96]\weight/arithmetic/square_im ;
  wire [97:96]\weight/arithmetic/square_re ;

  assign lag12[15] = \^lag12 [14];
  assign lag12[14] = \^lag12 [14];
  assign lag12[13] = \^lag12 [14];
  assign lag12[12] = \^lag12 [14];
  assign lag12[11] = \^lag12 [14];
  assign lag12[10:0] = \^lag12 [10:0];
  assign lag13[15] = \^lag13 [14];
  assign lag13[14] = \^lag13 [14];
  assign lag13[13] = \^lag13 [14];
  assign lag13[12] = \^lag13 [14];
  assign lag13[11] = \^lag13 [14];
  assign lag13[10:0] = \^lag13 [10:0];
  assign lag14[15] = \^lag14 [14];
  assign lag14[14] = \^lag14 [14];
  assign lag14[13] = \^lag14 [14];
  assign lag14[12] = \^lag14 [14];
  assign lag14[11] = \^lag14 [14];
  assign lag14[10:0] = \^lag14 [10:0];
  assign lag23[15] = \^lag23 [14];
  assign lag23[14] = \^lag23 [14];
  assign lag23[13] = \^lag23 [14];
  assign lag23[12] = \^lag23 [14];
  assign lag23[11] = \^lag23 [14];
  assign lag23[10:0] = \^lag23 [10:0];
  assign lag24[15] = \^lag24 [14];
  assign lag24[14] = \^lag24 [14];
  assign lag24[13] = \^lag24 [14];
  assign lag24[12] = \^lag24 [14];
  assign lag24[11] = \^lag24 [14];
  assign lag24[10:0] = \^lag24 [10:0];
  assign lag34[15] = \^lag34 [14];
  assign lag34[14] = \^lag34 [14];
  assign lag34[13] = \^lag34 [14];
  assign lag34[12] = \^lag34 [14];
  assign lag34[11] = \^lag34 [14];
  assign lag34[10:0] = \^lag34 [10:0];
  assign pair_lag[15] = \^pair_lag [14];
  assign pair_lag[14] = \^pair_lag [14];
  assign pair_lag[13] = \^pair_lag [14];
  assign pair_lag[12] = \^pair_lag [14];
  assign pair_lag[11] = \^pair_lag [14];
  assign pair_lag[10:0] = \^pair_lag [10:0];
  assign s_axis_config_tdata[7] = \<const0> ;
  assign s_axis_config_tdata[6] = \<const0> ;
  assign s_axis_config_tdata[5] = \<const0> ;
  assign s_axis_config_tdata[4] = \<const0> ;
  assign s_axis_config_tdata[3] = \<const0> ;
  assign s_axis_config_tdata[2] = \<const0> ;
  assign s_axis_config_tdata[1] = \<const0> ;
  assign s_axis_config_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  core_PHAT_IFFT_Ctrl_0_0_PHAT_IFFT_Ctrl inst
       (.CO(\weight/arithmetic/p_0_in0_in ),
        .S({\radicand[97]_i_4_n_0 ,\radicand[97]_i_5_n_0 }),
        .busy_reg_0(busy),
        .clk(clk),
        .\div_rem_im_reg[48] (\weight/arithmetic/im_bit ),
        .done(done),
        .frame_error(frame_error),
        .lag12({\^lag12 [14],\^lag12 [10:0]}),
        .lag13({\^lag13 [14],\^lag13 [10:0]}),
        .lag14({\^lag14 [14],\^lag14 [10:0]}),
        .lag23({\^lag23 [14],\^lag23 [10:0]}),
        .lag24({\^lag24 [14],\^lag24 [10:0]}),
        .lag34({\^lag34 [14],\^lag34 [10:0]}),
        .lag_valid(lag_valid),
        .m_axis_data_tdata(m_axis_data_tdata[23:0]),
        .m_axis_data_tlast(m_axis_data_tlast),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .\out_im_reg[4] (\out_im[4]_i_3_n_0 ),
        .\out_re_reg[4] (\out_re[4]_i_3_n_0 ),
        .pair_done(pair_done),
        .pair_index(pair_index),
        .pair_lag({\^pair_lag [14],\^pair_lag [10:0]}),
        .pair_peak(pair_peak),
        .rst(rst),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_config_tvalid_reg_0(s_axis_config_tvalid),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tlast(s_axis_data_tlast),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid_reg_0(s_axis_data_tvalid),
        .spectrum_addrb(spectrum_addrb),
        .spectrum_doutb(spectrum_doutb),
        .spectrum_enb(spectrum_enb),
        .square_im__1(\weight/arithmetic/square_im ),
        .square_re__1(\weight/arithmetic/square_re ),
        .start(start));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[4]_i_3 
       (.I0(\weight/arithmetic/im_bit ),
        .O(\out_im[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[4]_i_3 
       (.I0(\weight/arithmetic/p_0_in0_in ),
        .O(\out_re[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[97]_i_4 
       (.I0(\weight/arithmetic/square_im [97]),
        .I1(\weight/arithmetic/square_re [97]),
        .O(\radicand[97]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[97]_i_5 
       (.I0(\weight/arithmetic/square_re [96]),
        .I1(\weight/arithmetic/square_im [96]),
        .O(\radicand[97]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "PHAT_IFFT_Ctrl" *) 
module core_PHAT_IFFT_Ctrl_0_0_PHAT_IFFT_Ctrl
   (done,
    pair_done,
    s_axis_config_tvalid_reg_0,
    s_axis_data_tvalid_reg_0,
    busy_reg_0,
    spectrum_enb,
    s_axis_data_tlast,
    frame_error,
    CO,
    \div_rem_im_reg[48] ,
    square_im__1,
    square_re__1,
    spectrum_addrb,
    s_axis_data_tdata,
    pair_index,
    pair_lag,
    pair_peak,
    lag12,
    lag13,
    lag14,
    lag23,
    lag24,
    lag34,
    lag_valid,
    m_axis_data_tready,
    clk,
    start,
    S,
    \out_re_reg[4] ,
    \out_im_reg[4] ,
    s_axis_config_tready,
    m_axis_data_tlast,
    rst,
    spectrum_doutb,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tready);
  output done;
  output pair_done;
  output s_axis_config_tvalid_reg_0;
  output s_axis_data_tvalid_reg_0;
  output busy_reg_0;
  output spectrum_enb;
  output s_axis_data_tlast;
  output frame_error;
  output [0:0]CO;
  output [0:0]\div_rem_im_reg[48] ;
  output [1:0]square_im__1;
  output [1:0]square_re__1;
  output [13:0]spectrum_addrb;
  output [47:0]s_axis_data_tdata;
  output [2:0]pair_index;
  output [11:0]pair_lag;
  output [23:0]pair_peak;
  output [11:0]lag12;
  output [11:0]lag13;
  output [11:0]lag14;
  output [11:0]lag23;
  output [11:0]lag24;
  output [11:0]lag34;
  output [5:0]lag_valid;
  output m_axis_data_tready;
  input clk;
  input start;
  input [1:0]S;
  input \out_re_reg[4] ;
  input \out_im_reg[4] ;
  input s_axis_config_tready;
  input m_axis_data_tlast;
  input rst;
  input [47:0]spectrum_doutb;
  input m_axis_data_tvalid;
  input [23:0]m_axis_data_tdata;
  input s_axis_data_tready;

  wire [0:0]CO;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire [1:0]S;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry__0_n_1 ;
  wire \_inferred__3/i__carry__0_n_2 ;
  wire \_inferred__3/i__carry__0_n_3 ;
  wire \_inferred__3/i__carry__1_n_0 ;
  wire \_inferred__3/i__carry__1_n_2 ;
  wire \_inferred__3/i__carry__1_n_3 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire \_inferred__3/i__carry_n_1 ;
  wire \_inferred__3/i__carry_n_2 ;
  wire \_inferred__3/i__carry_n_3 ;
  wire [15:1]best_abs_lag0;
  wire [15:0]best_lag;
  wire \best_lag[15]_i_1_n_0 ;
  wire \best_lag[15]_i_3_n_0 ;
  wire \best_lag_reg_n_0_[0] ;
  wire \best_lag_reg_n_0_[10] ;
  wire \best_lag_reg_n_0_[15] ;
  wire \best_lag_reg_n_0_[1] ;
  wire \best_lag_reg_n_0_[2] ;
  wire \best_lag_reg_n_0_[3] ;
  wire \best_lag_reg_n_0_[4] ;
  wire \best_lag_reg_n_0_[5] ;
  wire \best_lag_reg_n_0_[6] ;
  wire \best_lag_reg_n_0_[7] ;
  wire \best_lag_reg_n_0_[8] ;
  wire \best_lag_reg_n_0_[9] ;
  wire [23:0]best_peak;
  wire \best_peak_reg_n_0_[0] ;
  wire \best_peak_reg_n_0_[10] ;
  wire \best_peak_reg_n_0_[11] ;
  wire \best_peak_reg_n_0_[12] ;
  wire \best_peak_reg_n_0_[13] ;
  wire \best_peak_reg_n_0_[14] ;
  wire \best_peak_reg_n_0_[15] ;
  wire \best_peak_reg_n_0_[16] ;
  wire \best_peak_reg_n_0_[17] ;
  wire \best_peak_reg_n_0_[18] ;
  wire \best_peak_reg_n_0_[19] ;
  wire \best_peak_reg_n_0_[1] ;
  wire \best_peak_reg_n_0_[20] ;
  wire \best_peak_reg_n_0_[21] ;
  wire \best_peak_reg_n_0_[22] ;
  wire \best_peak_reg_n_0_[23] ;
  wire \best_peak_reg_n_0_[2] ;
  wire \best_peak_reg_n_0_[3] ;
  wire \best_peak_reg_n_0_[4] ;
  wire \best_peak_reg_n_0_[5] ;
  wire \best_peak_reg_n_0_[6] ;
  wire \best_peak_reg_n_0_[7] ;
  wire \best_peak_reg_n_0_[8] ;
  wire \best_peak_reg_n_0_[9] ;
  wire better_peak11_in;
  wire better_peak1_carry__0_i_1_n_0;
  wire better_peak1_carry__0_i_2_n_0;
  wire better_peak1_carry__0_i_3_n_0;
  wire better_peak1_carry__0_i_4_n_0;
  wire better_peak1_carry__0_i_5_n_0;
  wire better_peak1_carry__0_i_6_n_0;
  wire better_peak1_carry__0_i_7_n_0;
  wire better_peak1_carry__0_i_8_n_0;
  wire better_peak1_carry__0_n_0;
  wire better_peak1_carry__0_n_1;
  wire better_peak1_carry__0_n_2;
  wire better_peak1_carry__0_n_3;
  wire better_peak1_carry__1_i_1_n_0;
  wire better_peak1_carry__1_i_2_n_0;
  wire better_peak1_carry__1_i_3_n_0;
  wire better_peak1_carry__1_i_4_n_0;
  wire better_peak1_carry__1_i_5_n_0;
  wire better_peak1_carry__1_i_6_n_0;
  wire better_peak1_carry__1_i_7_n_0;
  wire better_peak1_carry__1_i_8_n_0;
  wire better_peak1_carry__1_n_1;
  wire better_peak1_carry__1_n_2;
  wire better_peak1_carry__1_n_3;
  wire better_peak1_carry_i_1_n_0;
  wire better_peak1_carry_i_2_n_0;
  wire better_peak1_carry_i_3_n_0;
  wire better_peak1_carry_i_4_n_0;
  wire better_peak1_carry_i_5_n_0;
  wire better_peak1_carry_i_6_n_0;
  wire better_peak1_carry_i_7_n_0;
  wire better_peak1_carry_i_8_n_0;
  wire better_peak1_carry_n_0;
  wire better_peak1_carry_n_1;
  wire better_peak1_carry_n_2;
  wire better_peak1_carry_n_3;
  wire better_peak2;
  wire better_peak28_in;
  wire better_peak2_carry__0_i_10_n_0;
  wire better_peak2_carry__0_i_10_n_1;
  wire better_peak2_carry__0_i_10_n_2;
  wire better_peak2_carry__0_i_10_n_3;
  wire better_peak2_carry__0_i_11_n_0;
  wire better_peak2_carry__0_i_12_n_0;
  wire better_peak2_carry__0_i_13_n_0;
  wire better_peak2_carry__0_i_14_n_0;
  wire better_peak2_carry__0_i_15_n_0;
  wire better_peak2_carry__0_i_16_n_0;
  wire better_peak2_carry__0_i_17_n_0;
  wire better_peak2_carry__0_i_18_n_0;
  wire better_peak2_carry__0_i_19_n_0;
  wire better_peak2_carry__0_i_1_n_0;
  wire better_peak2_carry__0_i_20_n_0;
  wire better_peak2_carry__0_i_21_n_0;
  wire better_peak2_carry__0_i_22_n_0;
  wire better_peak2_carry__0_i_23_n_0;
  wire better_peak2_carry__0_i_2_n_0;
  wire better_peak2_carry__0_i_3_n_0;
  wire better_peak2_carry__0_i_4_n_0;
  wire better_peak2_carry__0_i_5_n_0;
  wire better_peak2_carry__0_i_6_n_0;
  wire better_peak2_carry__0_i_7_n_0;
  wire better_peak2_carry__0_i_8_n_0;
  wire better_peak2_carry__0_i_9_n_2;
  wire better_peak2_carry__0_i_9_n_3;
  wire better_peak2_carry__0_n_1;
  wire better_peak2_carry__0_n_2;
  wire better_peak2_carry__0_n_3;
  wire better_peak2_carry_i_10_n_0;
  wire better_peak2_carry_i_11_n_0;
  wire better_peak2_carry_i_12_n_0;
  wire better_peak2_carry_i_13_n_0;
  wire better_peak2_carry_i_14_n_0;
  wire better_peak2_carry_i_14_n_1;
  wire better_peak2_carry_i_14_n_2;
  wire better_peak2_carry_i_14_n_3;
  wire better_peak2_carry_i_15_n_0;
  wire better_peak2_carry_i_16_n_0;
  wire better_peak2_carry_i_17_n_0;
  wire better_peak2_carry_i_18_n_0;
  wire better_peak2_carry_i_19_n_0;
  wire better_peak2_carry_i_1_n_0;
  wire better_peak2_carry_i_20_n_0;
  wire better_peak2_carry_i_21_n_0;
  wire better_peak2_carry_i_22_n_0;
  wire better_peak2_carry_i_23_n_0;
  wire better_peak2_carry_i_24_n_0;
  wire better_peak2_carry_i_25_n_0;
  wire better_peak2_carry_i_26_n_0;
  wire better_peak2_carry_i_27_n_0;
  wire better_peak2_carry_i_28_n_0;
  wire better_peak2_carry_i_29_n_0;
  wire better_peak2_carry_i_2_n_0;
  wire better_peak2_carry_i_30_n_0;
  wire better_peak2_carry_i_31_n_0;
  wire better_peak2_carry_i_32_n_0;
  wire better_peak2_carry_i_33_n_0;
  wire better_peak2_carry_i_3_n_0;
  wire better_peak2_carry_i_4_n_0;
  wire better_peak2_carry_i_5_n_0;
  wire better_peak2_carry_i_6_n_0;
  wire better_peak2_carry_i_7_n_0;
  wire better_peak2_carry_i_8_n_0;
  wire better_peak2_carry_i_9_n_0;
  wire better_peak2_carry_i_9_n_1;
  wire better_peak2_carry_i_9_n_2;
  wire better_peak2_carry_i_9_n_3;
  wire better_peak2_carry_n_0;
  wire better_peak2_carry_n_1;
  wire better_peak2_carry_n_2;
  wire better_peak2_carry_n_3;
  wire \better_peak2_inferred__0/i__carry__0_n_1 ;
  wire \better_peak2_inferred__0/i__carry__0_n_2 ;
  wire \better_peak2_inferred__0/i__carry__0_n_3 ;
  wire \better_peak2_inferred__0/i__carry_n_0 ;
  wire \better_peak2_inferred__0/i__carry_n_1 ;
  wire \better_peak2_inferred__0/i__carry_n_2 ;
  wire \better_peak2_inferred__0/i__carry_n_3 ;
  wire bin_a;
  wire \bin_a_reg_n_0_[0] ;
  wire \bin_a_reg_n_0_[10] ;
  wire \bin_a_reg_n_0_[11] ;
  wire \bin_a_reg_n_0_[12] ;
  wire \bin_a_reg_n_0_[13] ;
  wire \bin_a_reg_n_0_[14] ;
  wire \bin_a_reg_n_0_[15] ;
  wire \bin_a_reg_n_0_[16] ;
  wire \bin_a_reg_n_0_[17] ;
  wire \bin_a_reg_n_0_[18] ;
  wire \bin_a_reg_n_0_[19] ;
  wire \bin_a_reg_n_0_[1] ;
  wire \bin_a_reg_n_0_[20] ;
  wire \bin_a_reg_n_0_[21] ;
  wire \bin_a_reg_n_0_[22] ;
  wire \bin_a_reg_n_0_[23] ;
  wire \bin_a_reg_n_0_[24] ;
  wire \bin_a_reg_n_0_[25] ;
  wire \bin_a_reg_n_0_[26] ;
  wire \bin_a_reg_n_0_[27] ;
  wire \bin_a_reg_n_0_[28] ;
  wire \bin_a_reg_n_0_[29] ;
  wire \bin_a_reg_n_0_[2] ;
  wire \bin_a_reg_n_0_[30] ;
  wire \bin_a_reg_n_0_[31] ;
  wire \bin_a_reg_n_0_[32] ;
  wire \bin_a_reg_n_0_[33] ;
  wire \bin_a_reg_n_0_[34] ;
  wire \bin_a_reg_n_0_[35] ;
  wire \bin_a_reg_n_0_[36] ;
  wire \bin_a_reg_n_0_[37] ;
  wire \bin_a_reg_n_0_[38] ;
  wire \bin_a_reg_n_0_[39] ;
  wire \bin_a_reg_n_0_[3] ;
  wire \bin_a_reg_n_0_[40] ;
  wire \bin_a_reg_n_0_[41] ;
  wire \bin_a_reg_n_0_[42] ;
  wire \bin_a_reg_n_0_[43] ;
  wire \bin_a_reg_n_0_[44] ;
  wire \bin_a_reg_n_0_[45] ;
  wire \bin_a_reg_n_0_[46] ;
  wire \bin_a_reg_n_0_[47] ;
  wire \bin_a_reg_n_0_[4] ;
  wire \bin_a_reg_n_0_[5] ;
  wire \bin_a_reg_n_0_[6] ;
  wire \bin_a_reg_n_0_[7] ;
  wire \bin_a_reg_n_0_[8] ;
  wire \bin_a_reg_n_0_[9] ;
  wire bin_b;
  wire \bin_b_reg_n_0_[0] ;
  wire \bin_b_reg_n_0_[10] ;
  wire \bin_b_reg_n_0_[11] ;
  wire \bin_b_reg_n_0_[12] ;
  wire \bin_b_reg_n_0_[13] ;
  wire \bin_b_reg_n_0_[14] ;
  wire \bin_b_reg_n_0_[15] ;
  wire \bin_b_reg_n_0_[16] ;
  wire \bin_b_reg_n_0_[17] ;
  wire \bin_b_reg_n_0_[18] ;
  wire \bin_b_reg_n_0_[19] ;
  wire \bin_b_reg_n_0_[1] ;
  wire \bin_b_reg_n_0_[20] ;
  wire \bin_b_reg_n_0_[21] ;
  wire \bin_b_reg_n_0_[22] ;
  wire \bin_b_reg_n_0_[23] ;
  wire \bin_b_reg_n_0_[24] ;
  wire \bin_b_reg_n_0_[25] ;
  wire \bin_b_reg_n_0_[26] ;
  wire \bin_b_reg_n_0_[27] ;
  wire \bin_b_reg_n_0_[28] ;
  wire \bin_b_reg_n_0_[29] ;
  wire \bin_b_reg_n_0_[2] ;
  wire \bin_b_reg_n_0_[30] ;
  wire \bin_b_reg_n_0_[31] ;
  wire \bin_b_reg_n_0_[32] ;
  wire \bin_b_reg_n_0_[33] ;
  wire \bin_b_reg_n_0_[34] ;
  wire \bin_b_reg_n_0_[35] ;
  wire \bin_b_reg_n_0_[36] ;
  wire \bin_b_reg_n_0_[37] ;
  wire \bin_b_reg_n_0_[38] ;
  wire \bin_b_reg_n_0_[39] ;
  wire \bin_b_reg_n_0_[3] ;
  wire \bin_b_reg_n_0_[40] ;
  wire \bin_b_reg_n_0_[41] ;
  wire \bin_b_reg_n_0_[42] ;
  wire \bin_b_reg_n_0_[43] ;
  wire \bin_b_reg_n_0_[44] ;
  wire \bin_b_reg_n_0_[45] ;
  wire \bin_b_reg_n_0_[46] ;
  wire \bin_b_reg_n_0_[47] ;
  wire \bin_b_reg_n_0_[4] ;
  wire \bin_b_reg_n_0_[5] ;
  wire \bin_b_reg_n_0_[6] ;
  wire \bin_b_reg_n_0_[7] ;
  wire \bin_b_reg_n_0_[8] ;
  wire \bin_b_reg_n_0_[9] ;
  wire [11:0]bin_index;
  wire \bin_index[11]_i_1_n_0 ;
  wire \bin_index[11]_i_3_n_0 ;
  wire \bin_index_reg[11]_i_4_n_2 ;
  wire \bin_index_reg[11]_i_4_n_3 ;
  wire \bin_index_reg[4]_i_2_n_0 ;
  wire \bin_index_reg[4]_i_2_n_1 ;
  wire \bin_index_reg[4]_i_2_n_2 ;
  wire \bin_index_reg[4]_i_2_n_3 ;
  wire \bin_index_reg[8]_i_2_n_0 ;
  wire \bin_index_reg[8]_i_2_n_1 ;
  wire \bin_index_reg[8]_i_2_n_2 ;
  wire \bin_index_reg[8]_i_2_n_3 ;
  wire busy_i_1_n_0;
  wire busy_i_3_n_0;
  wire busy_i_4_n_0;
  wire busy_reg_0;
  wire clk;
  wire [0:0]\div_rem_im_reg[48] ;
  wire done;
  wire done_i_1_n_0;
  wire [12:1]folded_bin0;
  wire frame_error;
  wire frame_error_i_1_n_0;
  wire frame_error_i_2_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire [11:0]in11;
  wire [11:1]in38;
  wire in_search0;
  wire in_search02_in;
  wire in_search0_carry__0_i_1_n_0;
  wire in_search0_carry__0_i_2_n_0;
  wire in_search0_carry__0_n_3;
  wire in_search0_carry_i_1_n_0;
  wire in_search0_carry_i_2_n_0;
  wire in_search0_carry_i_3_n_0;
  wire in_search0_carry_i_4_n_0;
  wire in_search0_carry_i_5_n_0;
  wire in_search0_carry_n_0;
  wire in_search0_carry_n_1;
  wire in_search0_carry_n_2;
  wire in_search0_carry_n_3;
  wire \in_search0_inferred__0/i__carry__0_n_3 ;
  wire \in_search0_inferred__0/i__carry_n_0 ;
  wire \in_search0_inferred__0/i__carry_n_1 ;
  wire \in_search0_inferred__0/i__carry_n_2 ;
  wire \in_search0_inferred__0/i__carry_n_3 ;
  wire [11:0]lag12;
  wire \lag12[15]_i_1_n_0 ;
  wire [11:0]lag13;
  wire \lag13[15]_i_1_n_0 ;
  wire [11:0]lag14;
  wire \lag14[15]_i_1_n_0 ;
  wire [11:0]lag23;
  wire \lag23[15]_i_1_n_0 ;
  wire [11:0]lag24;
  wire \lag24[15]_i_1_n_0 ;
  wire [11:0]lag34;
  wire [5:0]lag_valid;
  wire \lag_valid[0]_i_1_n_0 ;
  wire \lag_valid[0]_i_2_n_0 ;
  wire \lag_valid[1]_i_1_n_0 ;
  wire \lag_valid[1]_i_2_n_0 ;
  wire \lag_valid[2]_i_1_n_0 ;
  wire \lag_valid[2]_i_2_n_0 ;
  wire \lag_valid[3]_i_1_n_0 ;
  wire \lag_valid[3]_i_2_n_0 ;
  wire \lag_valid[4]_i_1_n_0 ;
  wire \lag_valid[4]_i_2_n_0 ;
  wire \lag_valid[4]_i_3_n_0 ;
  wire \lag_valid[4]_i_4_n_0 ;
  wire \lag_valid[5]_i_1_n_0 ;
  wire \lag_valid[5]_i_2_n_0 ;
  wire [23:0]m_axis_data_tdata;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire mic_a;
  wire \mic_a[0]_i_1_n_0 ;
  wire \mic_a[1]_i_1_n_0 ;
  wire \mic_a_reg_n_0_[0] ;
  wire \mic_a_reg_n_0_[1] ;
  wire \mic_b[0]_i_1_n_0 ;
  wire \mic_b[1]_i_1_n_0 ;
  wire \mic_b_reg_n_0_[0] ;
  wire \mic_b_reg_n_0_[1] ;
  wire \out_im_reg[4] ;
  wire \out_re_reg[4] ;
  wire pair_done;
  wire [2:0]pair_index;
  wire \pair_index[2]_i_1_n_0 ;
  wire [11:0]pair_lag;
  wire pair_lag36_in;
  wire pair_lag3_carry__0_i_1_n_0;
  wire pair_lag3_carry__0_i_2_n_0;
  wire pair_lag3_carry__0_i_3_n_0;
  wire pair_lag3_carry__0_i_4_n_0;
  wire pair_lag3_carry__0_i_5_n_0;
  wire pair_lag3_carry__0_i_6_n_0;
  wire pair_lag3_carry__0_i_7_n_0;
  wire pair_lag3_carry__0_i_8_n_0;
  wire pair_lag3_carry__0_n_0;
  wire pair_lag3_carry__0_n_1;
  wire pair_lag3_carry__0_n_2;
  wire pair_lag3_carry__0_n_3;
  wire pair_lag3_carry__1_i_1_n_0;
  wire pair_lag3_carry__1_i_2_n_0;
  wire pair_lag3_carry__1_i_3_n_0;
  wire pair_lag3_carry__1_i_4_n_0;
  wire pair_lag3_carry__1_i_5_n_0;
  wire pair_lag3_carry__1_i_6_n_0;
  wire pair_lag3_carry__1_i_7_n_0;
  wire pair_lag3_carry__1_i_8_n_0;
  wire pair_lag3_carry__1_n_1;
  wire pair_lag3_carry__1_n_2;
  wire pair_lag3_carry__1_n_3;
  wire pair_lag3_carry_i_1_n_0;
  wire pair_lag3_carry_i_2_n_0;
  wire pair_lag3_carry_i_3_n_0;
  wire pair_lag3_carry_i_4_n_0;
  wire pair_lag3_carry_i_5_n_0;
  wire pair_lag3_carry_i_6_n_0;
  wire pair_lag3_carry_i_7_n_0;
  wire pair_lag3_carry_n_0;
  wire pair_lag3_carry_n_1;
  wire pair_lag3_carry_n_2;
  wire pair_lag3_carry_n_3;
  wire \pair_lag[0]_i_1_n_0 ;
  wire \pair_lag[10]_i_1_n_0 ;
  wire \pair_lag[15]_i_1_n_0 ;
  wire \pair_lag[1]_i_1_n_0 ;
  wire \pair_lag[2]_i_1_n_0 ;
  wire \pair_lag[3]_i_1_n_0 ;
  wire \pair_lag[4]_i_1_n_0 ;
  wire \pair_lag[5]_i_1_n_0 ;
  wire \pair_lag[6]_i_1_n_0 ;
  wire \pair_lag[7]_i_1_n_0 ;
  wire \pair_lag[8]_i_1_n_0 ;
  wire \pair_lag[9]_i_1_n_0 ;
  wire [23:0]pair_peak;
  wire pair_tlast_error_i_1_n_0;
  wire pair_tlast_error_reg_n_0;
  wire receiving_i_1_n_0;
  wire receiving_i_2_n_0;
  wire receiving_reg_n_0;
  wire rst;
  wire [11:1]rx_abs_lag0;
  wire rx_finished_i_1_n_0;
  wire rx_finished_i_2_n_0;
  wire rx_finished_reg_n_0;
  wire [11:1]rx_index;
  wire \rx_index[0]_i_1_n_0 ;
  wire \rx_index[11]_i_1_n_0 ;
  wire \rx_index[11]_i_3_n_0 ;
  wire \rx_index[11]_i_5_n_0 ;
  wire \rx_index[11]_i_6_n_0 ;
  wire \rx_index_reg[11]_i_4_n_2 ;
  wire \rx_index_reg[11]_i_4_n_3 ;
  wire \rx_index_reg[4]_i_2_n_0 ;
  wire \rx_index_reg[4]_i_2_n_1 ;
  wire \rx_index_reg[4]_i_2_n_2 ;
  wire \rx_index_reg[4]_i_2_n_3 ;
  wire \rx_index_reg[8]_i_2_n_0 ;
  wire \rx_index_reg[8]_i_2_n_1 ;
  wire \rx_index_reg[8]_i_2_n_2 ;
  wire \rx_index_reg[8]_i_2_n_3 ;
  wire \rx_index_reg_n_0_[0] ;
  wire \rx_index_reg_n_0_[10] ;
  wire \rx_index_reg_n_0_[11] ;
  wire \rx_index_reg_n_0_[1] ;
  wire \rx_index_reg_n_0_[2] ;
  wire \rx_index_reg_n_0_[3] ;
  wire \rx_index_reg_n_0_[4] ;
  wire \rx_index_reg_n_0_[5] ;
  wire \rx_index_reg_n_0_[6] ;
  wire \rx_index_reg_n_0_[7] ;
  wire \rx_index_reg_n_0_[8] ;
  wire \rx_index_reg_n_0_[9] ;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid_i_1_n_0;
  wire s_axis_config_tvalid_reg_0;
  wire [47:0]s_axis_data_tdata;
  wire [47:0]s_axis_data_tdata0_in;
  wire \s_axis_data_tdata[47]_i_10_n_0 ;
  wire \s_axis_data_tdata[47]_i_12_n_0 ;
  wire \s_axis_data_tdata[47]_i_14_n_0 ;
  wire \s_axis_data_tdata[47]_i_16_n_0 ;
  wire \s_axis_data_tdata[47]_i_17_n_0 ;
  wire \s_axis_data_tdata[47]_i_18_n_0 ;
  wire \s_axis_data_tdata[47]_i_19_n_0 ;
  wire \s_axis_data_tdata[47]_i_20_n_0 ;
  wire \s_axis_data_tdata[47]_i_21_n_0 ;
  wire \s_axis_data_tdata[47]_i_22_n_0 ;
  wire \s_axis_data_tdata[47]_i_23_n_0 ;
  wire \s_axis_data_tdata[47]_i_24_n_0 ;
  wire \s_axis_data_tdata[47]_i_25_n_0 ;
  wire \s_axis_data_tdata[47]_i_26_n_0 ;
  wire \s_axis_data_tdata[47]_i_27_n_0 ;
  wire \s_axis_data_tdata[47]_i_28_n_0 ;
  wire \s_axis_data_tdata[47]_i_29_n_0 ;
  wire \s_axis_data_tdata[47]_i_30_n_0 ;
  wire \s_axis_data_tdata[47]_i_3_n_0 ;
  wire \s_axis_data_tdata[47]_i_4_n_0 ;
  wire \s_axis_data_tdata[47]_i_5_n_0 ;
  wire \s_axis_data_tdata[47]_i_6_n_0 ;
  wire \s_axis_data_tdata[47]_i_7_n_0 ;
  wire \s_axis_data_tdata[47]_i_8_n_0 ;
  wire \s_axis_data_tdata[47]_i_9_n_0 ;
  wire \s_axis_data_tdata_reg[47]_i_11_n_0 ;
  wire \s_axis_data_tdata_reg[47]_i_11_n_1 ;
  wire \s_axis_data_tdata_reg[47]_i_11_n_2 ;
  wire \s_axis_data_tdata_reg[47]_i_11_n_3 ;
  wire \s_axis_data_tdata_reg[47]_i_13_n_2 ;
  wire \s_axis_data_tdata_reg[47]_i_13_n_3 ;
  wire \s_axis_data_tdata_reg[47]_i_15_n_0 ;
  wire \s_axis_data_tdata_reg[47]_i_15_n_1 ;
  wire \s_axis_data_tdata_reg[47]_i_15_n_2 ;
  wire \s_axis_data_tdata_reg[47]_i_15_n_3 ;
  wire s_axis_data_tlast;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid_i_4_n_0;
  wire s_axis_data_tvalid_reg_0;
  wire [2:2]search_limit;
  wire \search_limit[2]_i_2_n_0 ;
  wire [13:0]spectrum_addrb;
  wire [13:0]spectrum_addrb0_in;
  wire \spectrum_addrb[13]_i_1_n_0 ;
  wire [47:0]spectrum_doutb;
  wire spectrum_enb;
  wire spectrum_enb_i_1_n_0;
  wire [1:0]square_im__1;
  wire [1:0]square_re__1;
  wire start;
  wire start_d;
  wire [3:0]state;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire weight_n_0;
  wire weight_n_10;
  wire weight_n_11;
  wire weight_n_12;
  wire weight_n_7;
  wire weight_n_8;
  wire weight_n_9;
  wire \work_pair[0]_i_1_n_0 ;
  wire \work_pair[1]_i_1_n_0 ;
  wire \work_pair[2]_i_1_n_0 ;
  wire \work_pair[2]_i_2_n_0 ;
  wire \work_pair_reg_n_0_[0] ;
  wire \work_pair_reg_n_0_[1] ;
  wire \work_pair_reg_n_0_[2] ;
  wire [2:2]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_better_peak1_carry_O_UNCONNECTED;
  wire [3:0]NLW_better_peak1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_better_peak1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_better_peak2_carry_O_UNCONNECTED;
  wire [3:0]NLW_better_peak2_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_better_peak2_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_better_peak2_carry__0_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_better_peak2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_better_peak2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bin_index_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bin_index_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_in_search0_carry_O_UNCONNECTED;
  wire [3:2]NLW_in_search0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_in_search0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_in_search0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_in_search0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_in_search0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_pair_lag3_carry_O_UNCONNECTED;
  wire [3:0]NLW_pair_lag3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pair_lag3_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_rx_index_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_index_reg[11]_i_4_O_UNCONNECTED ;
  wire [2:2]\NLW_s_axis_data_tdata_reg[47]_i_13_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_axis_data_tdata_reg[47]_i_13_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF7000000FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\work_pair_reg_n_0_[0] ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h15551AAA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h23CC2F00)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22FFCCC022FF0000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(state[0]),
        .I2(\s_axis_data_tdata[47]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[1]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(spectrum_addrb0_in[11]),
        .I2(spectrum_addrb0_in[10]),
        .I3(spectrum_addrb0_in[8]),
        .I4(spectrum_addrb0_in[9]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A202A2A)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(start_d),
        .I4(start),
        .I5(state[2]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(spectrum_addrb0_in[0]),
        .I1(spectrum_addrb0_in[1]),
        .I2(weight_n_12),
        .I3(spectrum_addrb0_in[6]),
        .I4(spectrum_addrb0_in[7]),
        .I5(weight_n_11),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h700F7F0F7F0F7F0F)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(state[3]),
        .I1(rx_finished_reg_n_0),
        .I2(state[0]),
        .I3(state[2]),
        .I4(s_axis_data_tready),
        .I5(s_axis_data_tvalid_reg_0),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "PICK_BIN:0011,READ_A:0100,WAIT_RESULT:1101,CONFIGURE:0010,SEND_BIN:1100,WEIGHT_WAIT:1011,WEIGHT_START:1010,PREPARE:0001,IDLE:0000,LATCH_B:1001,READ_B:0111,WAIT_B:1000,LATCH_A:0110,WAIT_A:0101" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(weight_n_9),
        .CLR(weight_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "PICK_BIN:0011,READ_A:0100,WAIT_RESULT:1101,CONFIGURE:0010,SEND_BIN:1100,WEIGHT_WAIT:1011,WEIGHT_START:1010,PREPARE:0001,IDLE:0000,LATCH_B:1001,READ_B:0111,WAIT_B:1000,LATCH_A:0110,WAIT_A:0101" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(weight_n_9),
        .CLR(weight_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "PICK_BIN:0011,READ_A:0100,WAIT_RESULT:1101,CONFIGURE:0010,SEND_BIN:1100,WEIGHT_WAIT:1011,WEIGHT_START:1010,PREPARE:0001,IDLE:0000,LATCH_B:1001,READ_B:0111,WAIT_B:1000,LATCH_A:0110,WAIT_A:0101" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(weight_n_9),
        .CLR(weight_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "PICK_BIN:0011,READ_A:0100,WAIT_RESULT:1101,CONFIGURE:0010,SEND_BIN:1100,WEIGHT_WAIT:1011,WEIGHT_START:1010,PREPARE:0001,IDLE:0000,LATCH_B:1001,READ_B:0111,WAIT_B:1000,LATCH_A:0110,WAIT_A:0101" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(weight_n_9),
        .CLR(weight_n_0),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state[3]));
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(in11[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_abs_lag0[4:1]),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0}));
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_abs_lag0[8:5]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\_inferred__3/i__carry__1_n_0 ,\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [2],\_inferred__3/i__carry__1_n_2 ,\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3],rx_abs_lag0[11:9]}),
        .S({1'b1,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[0]_i_1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[0]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[10]_i_1 
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[10]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \best_lag[15]_i_1 
       (.I0(mic_a),
        .I1(\best_lag[15]_i_3_n_0 ),
        .I2(m_axis_data_tvalid),
        .I3(rst),
        .I4(busy_reg_0),
        .I5(receiving_reg_n_0),
        .O(\best_lag[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[15]_i_2 
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[15]));
  LUT5 #(
    .INIT(32'h151515FF)) 
    \best_lag[15]_i_3 
       (.I0(better_peak11_in),
        .I1(better_peak2),
        .I2(better_peak28_in),
        .I3(in_search02_in),
        .I4(in_search0),
        .O(\best_lag[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[1]_i_1 
       (.I0(\rx_index_reg_n_0_[1] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[2]_i_1 
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[3]_i_1 
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[4]_i_1 
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[5]_i_1 
       (.I0(\rx_index_reg_n_0_[5] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[6]_i_1 
       (.I0(\rx_index_reg_n_0_[6] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[7]_i_1 
       (.I0(\rx_index_reg_n_0_[7] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[8]_i_1 
       (.I0(\rx_index_reg_n_0_[8] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_lag[9]_i_1 
       (.I0(\rx_index_reg_n_0_[9] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_lag[9]));
  FDCE \best_lag_reg[0] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[0]),
        .Q(\best_lag_reg_n_0_[0] ));
  FDCE \best_lag_reg[10] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[10]),
        .Q(\best_lag_reg_n_0_[10] ));
  FDCE \best_lag_reg[15] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[15]),
        .Q(\best_lag_reg_n_0_[15] ));
  FDCE \best_lag_reg[1] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[1]),
        .Q(\best_lag_reg_n_0_[1] ));
  FDCE \best_lag_reg[2] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[2]),
        .Q(\best_lag_reg_n_0_[2] ));
  FDCE \best_lag_reg[3] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[3]),
        .Q(\best_lag_reg_n_0_[3] ));
  FDCE \best_lag_reg[4] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[4]),
        .Q(\best_lag_reg_n_0_[4] ));
  FDCE \best_lag_reg[5] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[5]),
        .Q(\best_lag_reg_n_0_[5] ));
  FDCE \best_lag_reg[6] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[6]),
        .Q(\best_lag_reg_n_0_[6] ));
  FDCE \best_lag_reg[7] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[7]),
        .Q(\best_lag_reg_n_0_[7] ));
  FDCE \best_lag_reg[8] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[8]),
        .Q(\best_lag_reg_n_0_[8] ));
  FDCE \best_lag_reg[9] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_lag[9]),
        .Q(\best_lag_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[0]_i_1 
       (.I0(m_axis_data_tdata[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[0]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[10]_i_1 
       (.I0(m_axis_data_tdata[10]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[10]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[11]_i_1 
       (.I0(m_axis_data_tdata[11]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[11]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[12]_i_1 
       (.I0(m_axis_data_tdata[12]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[12]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[13]_i_1 
       (.I0(m_axis_data_tdata[13]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[13]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[14]_i_1 
       (.I0(m_axis_data_tdata[14]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[14]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[15]_i_1 
       (.I0(m_axis_data_tdata[15]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[15]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[16]_i_1 
       (.I0(m_axis_data_tdata[16]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[16]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[17]_i_1 
       (.I0(m_axis_data_tdata[17]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[17]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[18]_i_1 
       (.I0(m_axis_data_tdata[18]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[18]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[19]_i_1 
       (.I0(m_axis_data_tdata[19]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[19]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[1]_i_1 
       (.I0(m_axis_data_tdata[1]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[20]_i_1 
       (.I0(m_axis_data_tdata[20]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[20]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[21]_i_1 
       (.I0(m_axis_data_tdata[21]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[21]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[22]_i_1 
       (.I0(m_axis_data_tdata[22]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[22]));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \best_peak[23]_i_1 
       (.I0(m_axis_data_tdata[23]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[23]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[2]_i_1 
       (.I0(m_axis_data_tdata[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[3]_i_1 
       (.I0(m_axis_data_tdata[3]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[4]_i_1 
       (.I0(m_axis_data_tdata[4]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[5]_i_1 
       (.I0(m_axis_data_tdata[5]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[6]_i_1 
       (.I0(m_axis_data_tdata[6]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[7]_i_1 
       (.I0(m_axis_data_tdata[7]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[8]_i_1 
       (.I0(m_axis_data_tdata[8]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \best_peak[9]_i_1 
       (.I0(m_axis_data_tdata[9]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(best_peak[9]));
  FDCE \best_peak_reg[0] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[0]),
        .Q(\best_peak_reg_n_0_[0] ));
  FDCE \best_peak_reg[10] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[10]),
        .Q(\best_peak_reg_n_0_[10] ));
  FDCE \best_peak_reg[11] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[11]),
        .Q(\best_peak_reg_n_0_[11] ));
  FDCE \best_peak_reg[12] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[12]),
        .Q(\best_peak_reg_n_0_[12] ));
  FDCE \best_peak_reg[13] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[13]),
        .Q(\best_peak_reg_n_0_[13] ));
  FDCE \best_peak_reg[14] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[14]),
        .Q(\best_peak_reg_n_0_[14] ));
  FDCE \best_peak_reg[15] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[15]),
        .Q(\best_peak_reg_n_0_[15] ));
  FDCE \best_peak_reg[16] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[16]),
        .Q(\best_peak_reg_n_0_[16] ));
  FDCE \best_peak_reg[17] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[17]),
        .Q(\best_peak_reg_n_0_[17] ));
  FDCE \best_peak_reg[18] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[18]),
        .Q(\best_peak_reg_n_0_[18] ));
  FDCE \best_peak_reg[19] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[19]),
        .Q(\best_peak_reg_n_0_[19] ));
  FDCE \best_peak_reg[1] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[1]),
        .Q(\best_peak_reg_n_0_[1] ));
  FDCE \best_peak_reg[20] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[20]),
        .Q(\best_peak_reg_n_0_[20] ));
  FDCE \best_peak_reg[21] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[21]),
        .Q(\best_peak_reg_n_0_[21] ));
  FDCE \best_peak_reg[22] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[22]),
        .Q(\best_peak_reg_n_0_[22] ));
  FDPE \best_peak_reg[23] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .D(best_peak[23]),
        .PRE(weight_n_0),
        .Q(\best_peak_reg_n_0_[23] ));
  FDCE \best_peak_reg[2] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[2]),
        .Q(\best_peak_reg_n_0_[2] ));
  FDCE \best_peak_reg[3] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[3]),
        .Q(\best_peak_reg_n_0_[3] ));
  FDCE \best_peak_reg[4] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[4]),
        .Q(\best_peak_reg_n_0_[4] ));
  FDCE \best_peak_reg[5] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[5]),
        .Q(\best_peak_reg_n_0_[5] ));
  FDCE \best_peak_reg[6] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[6]),
        .Q(\best_peak_reg_n_0_[6] ));
  FDCE \best_peak_reg[7] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[7]),
        .Q(\best_peak_reg_n_0_[7] ));
  FDCE \best_peak_reg[8] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[8]),
        .Q(\best_peak_reg_n_0_[8] ));
  FDCE \best_peak_reg[9] 
       (.C(clk),
        .CE(\best_lag[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(best_peak[9]),
        .Q(\best_peak_reg_n_0_[9] ));
  CARRY4 better_peak1_carry
       (.CI(1'b0),
        .CO({better_peak1_carry_n_0,better_peak1_carry_n_1,better_peak1_carry_n_2,better_peak1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({better_peak1_carry_i_1_n_0,better_peak1_carry_i_2_n_0,better_peak1_carry_i_3_n_0,better_peak1_carry_i_4_n_0}),
        .O(NLW_better_peak1_carry_O_UNCONNECTED[3:0]),
        .S({better_peak1_carry_i_5_n_0,better_peak1_carry_i_6_n_0,better_peak1_carry_i_7_n_0,better_peak1_carry_i_8_n_0}));
  CARRY4 better_peak1_carry__0
       (.CI(better_peak1_carry_n_0),
        .CO({better_peak1_carry__0_n_0,better_peak1_carry__0_n_1,better_peak1_carry__0_n_2,better_peak1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({better_peak1_carry__0_i_1_n_0,better_peak1_carry__0_i_2_n_0,better_peak1_carry__0_i_3_n_0,better_peak1_carry__0_i_4_n_0}),
        .O(NLW_better_peak1_carry__0_O_UNCONNECTED[3:0]),
        .S({better_peak1_carry__0_i_5_n_0,better_peak1_carry__0_i_6_n_0,better_peak1_carry__0_i_7_n_0,better_peak1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__0_i_1
       (.I0(m_axis_data_tdata[15]),
        .I1(\best_peak_reg_n_0_[15] ),
        .I2(m_axis_data_tdata[14]),
        .I3(\best_peak_reg_n_0_[14] ),
        .O(better_peak1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__0_i_2
       (.I0(m_axis_data_tdata[13]),
        .I1(\best_peak_reg_n_0_[13] ),
        .I2(m_axis_data_tdata[12]),
        .I3(\best_peak_reg_n_0_[12] ),
        .O(better_peak1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__0_i_3
       (.I0(m_axis_data_tdata[11]),
        .I1(\best_peak_reg_n_0_[11] ),
        .I2(m_axis_data_tdata[10]),
        .I3(\best_peak_reg_n_0_[10] ),
        .O(better_peak1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__0_i_4
       (.I0(m_axis_data_tdata[9]),
        .I1(\best_peak_reg_n_0_[9] ),
        .I2(m_axis_data_tdata[8]),
        .I3(\best_peak_reg_n_0_[8] ),
        .O(better_peak1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__0_i_5
       (.I0(\best_peak_reg_n_0_[14] ),
        .I1(m_axis_data_tdata[14]),
        .I2(\best_peak_reg_n_0_[15] ),
        .I3(m_axis_data_tdata[15]),
        .O(better_peak1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__0_i_6
       (.I0(\best_peak_reg_n_0_[13] ),
        .I1(m_axis_data_tdata[13]),
        .I2(\best_peak_reg_n_0_[12] ),
        .I3(m_axis_data_tdata[12]),
        .O(better_peak1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__0_i_7
       (.I0(\best_peak_reg_n_0_[11] ),
        .I1(m_axis_data_tdata[11]),
        .I2(\best_peak_reg_n_0_[10] ),
        .I3(m_axis_data_tdata[10]),
        .O(better_peak1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__0_i_8
       (.I0(\best_peak_reg_n_0_[8] ),
        .I1(m_axis_data_tdata[8]),
        .I2(\best_peak_reg_n_0_[9] ),
        .I3(m_axis_data_tdata[9]),
        .O(better_peak1_carry__0_i_8_n_0));
  CARRY4 better_peak1_carry__1
       (.CI(better_peak1_carry__0_n_0),
        .CO({better_peak11_in,better_peak1_carry__1_n_1,better_peak1_carry__1_n_2,better_peak1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({better_peak1_carry__1_i_1_n_0,better_peak1_carry__1_i_2_n_0,better_peak1_carry__1_i_3_n_0,better_peak1_carry__1_i_4_n_0}),
        .O(NLW_better_peak1_carry__1_O_UNCONNECTED[3:0]),
        .S({better_peak1_carry__1_i_5_n_0,better_peak1_carry__1_i_6_n_0,better_peak1_carry__1_i_7_n_0,better_peak1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    better_peak1_carry__1_i_1
       (.I0(m_axis_data_tdata[23]),
        .I1(\best_peak_reg_n_0_[23] ),
        .I2(m_axis_data_tdata[22]),
        .I3(\best_peak_reg_n_0_[22] ),
        .O(better_peak1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__1_i_2
       (.I0(m_axis_data_tdata[21]),
        .I1(\best_peak_reg_n_0_[21] ),
        .I2(m_axis_data_tdata[20]),
        .I3(\best_peak_reg_n_0_[20] ),
        .O(better_peak1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__1_i_3
       (.I0(m_axis_data_tdata[19]),
        .I1(\best_peak_reg_n_0_[19] ),
        .I2(m_axis_data_tdata[18]),
        .I3(\best_peak_reg_n_0_[18] ),
        .O(better_peak1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry__1_i_4
       (.I0(m_axis_data_tdata[17]),
        .I1(\best_peak_reg_n_0_[17] ),
        .I2(m_axis_data_tdata[16]),
        .I3(\best_peak_reg_n_0_[16] ),
        .O(better_peak1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__1_i_5
       (.I0(\best_peak_reg_n_0_[23] ),
        .I1(m_axis_data_tdata[23]),
        .I2(\best_peak_reg_n_0_[22] ),
        .I3(m_axis_data_tdata[22]),
        .O(better_peak1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__1_i_6
       (.I0(\best_peak_reg_n_0_[20] ),
        .I1(m_axis_data_tdata[20]),
        .I2(\best_peak_reg_n_0_[21] ),
        .I3(m_axis_data_tdata[21]),
        .O(better_peak1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__1_i_7
       (.I0(\best_peak_reg_n_0_[19] ),
        .I1(m_axis_data_tdata[19]),
        .I2(\best_peak_reg_n_0_[18] ),
        .I3(m_axis_data_tdata[18]),
        .O(better_peak1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry__1_i_8
       (.I0(\best_peak_reg_n_0_[17] ),
        .I1(m_axis_data_tdata[17]),
        .I2(\best_peak_reg_n_0_[16] ),
        .I3(m_axis_data_tdata[16]),
        .O(better_peak1_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry_i_1
       (.I0(m_axis_data_tdata[7]),
        .I1(\best_peak_reg_n_0_[7] ),
        .I2(m_axis_data_tdata[6]),
        .I3(\best_peak_reg_n_0_[6] ),
        .O(better_peak1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry_i_2
       (.I0(m_axis_data_tdata[5]),
        .I1(\best_peak_reg_n_0_[5] ),
        .I2(m_axis_data_tdata[4]),
        .I3(\best_peak_reg_n_0_[4] ),
        .O(better_peak1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry_i_3
       (.I0(m_axis_data_tdata[3]),
        .I1(\best_peak_reg_n_0_[3] ),
        .I2(m_axis_data_tdata[2]),
        .I3(\best_peak_reg_n_0_[2] ),
        .O(better_peak1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    better_peak1_carry_i_4
       (.I0(m_axis_data_tdata[1]),
        .I1(\best_peak_reg_n_0_[1] ),
        .I2(m_axis_data_tdata[0]),
        .I3(\best_peak_reg_n_0_[0] ),
        .O(better_peak1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry_i_5
       (.I0(\best_peak_reg_n_0_[7] ),
        .I1(m_axis_data_tdata[7]),
        .I2(\best_peak_reg_n_0_[6] ),
        .I3(m_axis_data_tdata[6]),
        .O(better_peak1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry_i_6
       (.I0(\best_peak_reg_n_0_[5] ),
        .I1(m_axis_data_tdata[5]),
        .I2(\best_peak_reg_n_0_[4] ),
        .I3(m_axis_data_tdata[4]),
        .O(better_peak1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry_i_7
       (.I0(\best_peak_reg_n_0_[2] ),
        .I1(m_axis_data_tdata[2]),
        .I2(\best_peak_reg_n_0_[3] ),
        .I3(m_axis_data_tdata[3]),
        .O(better_peak1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    better_peak1_carry_i_8
       (.I0(\best_peak_reg_n_0_[1] ),
        .I1(m_axis_data_tdata[1]),
        .I2(\best_peak_reg_n_0_[0] ),
        .I3(m_axis_data_tdata[0]),
        .O(better_peak1_carry_i_8_n_0));
  CARRY4 better_peak2_carry
       (.CI(1'b0),
        .CO({better_peak2_carry_n_0,better_peak2_carry_n_1,better_peak2_carry_n_2,better_peak2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({better_peak2_carry_i_1_n_0,better_peak2_carry_i_2_n_0,better_peak2_carry_i_3_n_0,better_peak2_carry_i_4_n_0}),
        .O(NLW_better_peak2_carry_O_UNCONNECTED[3:0]),
        .S({better_peak2_carry_i_5_n_0,better_peak2_carry_i_6_n_0,better_peak2_carry_i_7_n_0,better_peak2_carry_i_8_n_0}));
  CARRY4 better_peak2_carry__0
       (.CI(better_peak2_carry_n_0),
        .CO({better_peak2,better_peak2_carry__0_n_1,better_peak2_carry__0_n_2,better_peak2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({better_peak2_carry__0_i_1_n_0,better_peak2_carry__0_i_2_n_0,better_peak2_carry__0_i_3_n_0,better_peak2_carry__0_i_4_n_0}),
        .O(NLW_better_peak2_carry__0_O_UNCONNECTED[3:0]),
        .S({better_peak2_carry__0_i_5_n_0,better_peak2_carry__0_i_6_n_0,better_peak2_carry__0_i_7_n_0,better_peak2_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hD0D0D000)) 
    better_peak2_carry__0_i_1
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(\_inferred__3/i__carry__1_n_0 ),
        .I2(\best_lag_reg_n_0_[15] ),
        .I3(best_abs_lag0[14]),
        .I4(best_abs_lag0[15]),
        .O(better_peak2_carry__0_i_1_n_0));
  CARRY4 better_peak2_carry__0_i_10
       (.CI(better_peak2_carry_i_9_n_0),
        .CO({better_peak2_carry__0_i_10_n_0,better_peak2_carry__0_i_10_n_1,better_peak2_carry__0_i_10_n_2,better_peak2_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(best_abs_lag0[12:9]),
        .S({better_peak2_carry__0_i_20_n_0,better_peak2_carry__0_i_21_n_0,better_peak2_carry__0_i_22_n_0,better_peak2_carry__0_i_23_n_0}));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    better_peak2_carry__0_i_11
       (.I0(\best_lag_reg_n_0_[10] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[10]),
        .I3(\rx_index_reg_n_0_[10] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[10]),
        .O(better_peak2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry__0_i_12
       (.I0(rx_abs_lag0[9]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[9] ),
        .O(better_peak2_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    better_peak2_carry__0_i_13
       (.I0(\best_lag_reg_n_0_[8] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[8]),
        .I3(\rx_index_reg_n_0_[8] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[8]),
        .O(better_peak2_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry__0_i_14
       (.I0(\rx_index_reg_n_0_[10] ),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(rx_abs_lag0[10]),
        .I3(\best_lag_reg_n_0_[10] ),
        .I4(\best_lag_reg_n_0_[15] ),
        .I5(best_abs_lag0[10]),
        .O(better_peak2_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry__0_i_15
       (.I0(\best_lag_reg_n_0_[9] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[9]),
        .I3(\rx_index_reg_n_0_[9] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[9]),
        .O(better_peak2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry__0_i_16
       (.I0(rx_abs_lag0[8]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[8] ),
        .O(better_peak2_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_17
       (.I0(\best_lag_reg_n_0_[15] ),
        .O(better_peak2_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_18
       (.I0(\best_lag_reg_n_0_[15] ),
        .O(better_peak2_carry__0_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_19
       (.I0(\best_lag_reg_n_0_[15] ),
        .O(better_peak2_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hD0D0D000)) 
    better_peak2_carry__0_i_2
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(\_inferred__3/i__carry__1_n_0 ),
        .I2(\best_lag_reg_n_0_[15] ),
        .I3(best_abs_lag0[12]),
        .I4(best_abs_lag0[13]),
        .O(better_peak2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_20
       (.I0(\best_lag_reg_n_0_[15] ),
        .O(better_peak2_carry__0_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_21
       (.I0(\best_lag_reg_n_0_[15] ),
        .O(better_peak2_carry__0_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_22
       (.I0(\best_lag_reg_n_0_[10] ),
        .O(better_peak2_carry__0_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry__0_i_23
       (.I0(\best_lag_reg_n_0_[9] ),
        .O(better_peak2_carry__0_i_23_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    better_peak2_carry__0_i_3
       (.I0(best_abs_lag0[11]),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(rx_abs_lag0[11]),
        .I3(\rx_index_reg_n_0_[11] ),
        .I4(better_peak2_carry__0_i_11_n_0),
        .O(better_peak2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    better_peak2_carry__0_i_4
       (.I0(\best_lag_reg_n_0_[9] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[9]),
        .I3(better_peak2_carry__0_i_12_n_0),
        .I4(better_peak2_carry__0_i_13_n_0),
        .O(better_peak2_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h1F801F1F)) 
    better_peak2_carry__0_i_5
       (.I0(best_abs_lag0[15]),
        .I1(best_abs_lag0[14]),
        .I2(\best_lag_reg_n_0_[15] ),
        .I3(\_inferred__3/i__carry__1_n_0 ),
        .I4(\rx_index_reg_n_0_[11] ),
        .O(better_peak2_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h1F801F1F)) 
    better_peak2_carry__0_i_6
       (.I0(best_abs_lag0[13]),
        .I1(best_abs_lag0[12]),
        .I2(\best_lag_reg_n_0_[15] ),
        .I3(\_inferred__3/i__carry__1_n_0 ),
        .I4(\rx_index_reg_n_0_[11] ),
        .O(better_peak2_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h00008777)) 
    better_peak2_carry__0_i_7
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(rx_abs_lag0[11]),
        .I2(\best_lag_reg_n_0_[15] ),
        .I3(best_abs_lag0[11]),
        .I4(better_peak2_carry__0_i_14_n_0),
        .O(better_peak2_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    better_peak2_carry__0_i_8
       (.I0(better_peak2_carry__0_i_15_n_0),
        .I1(better_peak2_carry__0_i_16_n_0),
        .I2(best_abs_lag0[8]),
        .I3(\best_lag_reg_n_0_[15] ),
        .I4(\best_lag_reg_n_0_[8] ),
        .O(better_peak2_carry__0_i_8_n_0));
  CARRY4 better_peak2_carry__0_i_9
       (.CI(better_peak2_carry__0_i_10_n_0),
        .CO({NLW_better_peak2_carry__0_i_9_CO_UNCONNECTED[3:2],better_peak2_carry__0_i_9_n_2,better_peak2_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_better_peak2_carry__0_i_9_O_UNCONNECTED[3],best_abs_lag0[15:13]}),
        .S({1'b0,better_peak2_carry__0_i_17_n_0,better_peak2_carry__0_i_18_n_0,better_peak2_carry__0_i_19_n_0}));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    better_peak2_carry_i_1
       (.I0(\best_lag_reg_n_0_[7] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[7]),
        .I3(better_peak2_carry_i_10_n_0),
        .I4(better_peak2_carry_i_11_n_0),
        .O(better_peak2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_10
       (.I0(rx_abs_lag0[7]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[7] ),
        .O(better_peak2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    better_peak2_carry_i_11
       (.I0(\best_lag_reg_n_0_[6] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[6]),
        .I3(\rx_index_reg_n_0_[6] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[6]),
        .O(better_peak2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_12
       (.I0(rx_abs_lag0[5]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[5] ),
        .O(better_peak2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    better_peak2_carry_i_13
       (.I0(\best_lag_reg_n_0_[4] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[4]),
        .I3(\rx_index_reg_n_0_[4] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[4]),
        .O(better_peak2_carry_i_13_n_0));
  CARRY4 better_peak2_carry_i_14
       (.CI(1'b0),
        .CO({better_peak2_carry_i_14_n_0,better_peak2_carry_i_14_n_1,better_peak2_carry_i_14_n_2,better_peak2_carry_i_14_n_3}),
        .CYINIT(better_peak2_carry_i_29_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(best_abs_lag0[4:1]),
        .S({better_peak2_carry_i_30_n_0,better_peak2_carry_i_31_n_0,better_peak2_carry_i_32_n_0,better_peak2_carry_i_33_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_15
       (.I0(rx_abs_lag0[3]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[3] ),
        .O(better_peak2_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    better_peak2_carry_i_16
       (.I0(\best_lag_reg_n_0_[2] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[2]),
        .I3(\rx_index_reg_n_0_[2] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[2]),
        .O(better_peak2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_17
       (.I0(rx_abs_lag0[1]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[1] ),
        .O(better_peak2_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry_i_18
       (.I0(\best_lag_reg_n_0_[7] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[7]),
        .I3(\rx_index_reg_n_0_[7] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[7]),
        .O(better_peak2_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_19
       (.I0(rx_abs_lag0[6]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[6] ),
        .O(better_peak2_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    better_peak2_carry_i_2
       (.I0(\best_lag_reg_n_0_[5] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[5]),
        .I3(better_peak2_carry_i_12_n_0),
        .I4(better_peak2_carry_i_13_n_0),
        .O(better_peak2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry_i_20
       (.I0(\best_lag_reg_n_0_[5] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[5]),
        .I3(\rx_index_reg_n_0_[5] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[5]),
        .O(better_peak2_carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_21
       (.I0(rx_abs_lag0[4]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[4] ),
        .O(better_peak2_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry_i_22
       (.I0(\best_lag_reg_n_0_[3] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[3]),
        .I3(\rx_index_reg_n_0_[3] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[3]),
        .O(better_peak2_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    better_peak2_carry_i_23
       (.I0(rx_abs_lag0[2]),
        .I1(\rx_index_reg_n_0_[11] ),
        .I2(\rx_index_reg_n_0_[2] ),
        .O(better_peak2_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    better_peak2_carry_i_24
       (.I0(\best_lag_reg_n_0_[1] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[1]),
        .I3(\rx_index_reg_n_0_[1] ),
        .I4(\rx_index_reg_n_0_[11] ),
        .I5(rx_abs_lag0[1]),
        .O(better_peak2_carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_25
       (.I0(\best_lag_reg_n_0_[8] ),
        .O(better_peak2_carry_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_26
       (.I0(\best_lag_reg_n_0_[7] ),
        .O(better_peak2_carry_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_27
       (.I0(\best_lag_reg_n_0_[6] ),
        .O(better_peak2_carry_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_28
       (.I0(\best_lag_reg_n_0_[5] ),
        .O(better_peak2_carry_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_29
       (.I0(\best_lag_reg_n_0_[0] ),
        .O(better_peak2_carry_i_29_n_0));
  LUT5 #(
    .INIT(32'hE2FF00E2)) 
    better_peak2_carry_i_3
       (.I0(\best_lag_reg_n_0_[3] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[3]),
        .I3(better_peak2_carry_i_15_n_0),
        .I4(better_peak2_carry_i_16_n_0),
        .O(better_peak2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_30
       (.I0(\best_lag_reg_n_0_[4] ),
        .O(better_peak2_carry_i_30_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_31
       (.I0(\best_lag_reg_n_0_[3] ),
        .O(better_peak2_carry_i_31_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_32
       (.I0(\best_lag_reg_n_0_[2] ),
        .O(better_peak2_carry_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    better_peak2_carry_i_33
       (.I0(\best_lag_reg_n_0_[1] ),
        .O(better_peak2_carry_i_33_n_0));
  LUT6 #(
    .INIT(64'h00E200E2E2FF00E2)) 
    better_peak2_carry_i_4
       (.I0(\best_lag_reg_n_0_[1] ),
        .I1(\best_lag_reg_n_0_[15] ),
        .I2(best_abs_lag0[1]),
        .I3(better_peak2_carry_i_17_n_0),
        .I4(\best_lag_reg_n_0_[0] ),
        .I5(\rx_index_reg_n_0_[0] ),
        .O(better_peak2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    better_peak2_carry_i_5
       (.I0(better_peak2_carry_i_18_n_0),
        .I1(better_peak2_carry_i_19_n_0),
        .I2(best_abs_lag0[6]),
        .I3(\best_lag_reg_n_0_[15] ),
        .I4(\best_lag_reg_n_0_[6] ),
        .O(better_peak2_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    better_peak2_carry_i_6
       (.I0(better_peak2_carry_i_20_n_0),
        .I1(better_peak2_carry_i_21_n_0),
        .I2(best_abs_lag0[4]),
        .I3(\best_lag_reg_n_0_[15] ),
        .I4(\best_lag_reg_n_0_[4] ),
        .O(better_peak2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    better_peak2_carry_i_7
       (.I0(better_peak2_carry_i_22_n_0),
        .I1(better_peak2_carry_i_23_n_0),
        .I2(best_abs_lag0[2]),
        .I3(\best_lag_reg_n_0_[15] ),
        .I4(\best_lag_reg_n_0_[2] ),
        .O(better_peak2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    better_peak2_carry_i_8
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\best_lag_reg_n_0_[0] ),
        .I2(better_peak2_carry_i_24_n_0),
        .O(better_peak2_carry_i_8_n_0));
  CARRY4 better_peak2_carry_i_9
       (.CI(better_peak2_carry_i_14_n_0),
        .CO({better_peak2_carry_i_9_n_0,better_peak2_carry_i_9_n_1,better_peak2_carry_i_9_n_2,better_peak2_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(best_abs_lag0[8:5]),
        .S({better_peak2_carry_i_25_n_0,better_peak2_carry_i_26_n_0,better_peak2_carry_i_27_n_0,better_peak2_carry_i_28_n_0}));
  CARRY4 \better_peak2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\better_peak2_inferred__0/i__carry_n_0 ,\better_peak2_inferred__0/i__carry_n_1 ,\better_peak2_inferred__0/i__carry_n_2 ,\better_peak2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_better_peak2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \better_peak2_inferred__0/i__carry__0 
       (.CI(\better_peak2_inferred__0/i__carry_n_0 ),
        .CO({better_peak28_in,\better_peak2_inferred__0/i__carry__0_n_1 ,\better_peak2_inferred__0/i__carry__0_n_2 ,\better_peak2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_better_peak2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0400)) 
    \bin_a[47]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(bin_a));
  FDCE \bin_a_reg[0] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[0]),
        .Q(\bin_a_reg_n_0_[0] ));
  FDCE \bin_a_reg[10] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[10]),
        .Q(\bin_a_reg_n_0_[10] ));
  FDCE \bin_a_reg[11] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[11]),
        .Q(\bin_a_reg_n_0_[11] ));
  FDCE \bin_a_reg[12] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[12]),
        .Q(\bin_a_reg_n_0_[12] ));
  FDCE \bin_a_reg[13] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[13]),
        .Q(\bin_a_reg_n_0_[13] ));
  FDCE \bin_a_reg[14] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[14]),
        .Q(\bin_a_reg_n_0_[14] ));
  FDCE \bin_a_reg[15] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[15]),
        .Q(\bin_a_reg_n_0_[15] ));
  FDCE \bin_a_reg[16] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[16]),
        .Q(\bin_a_reg_n_0_[16] ));
  FDCE \bin_a_reg[17] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[17]),
        .Q(\bin_a_reg_n_0_[17] ));
  FDCE \bin_a_reg[18] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[18]),
        .Q(\bin_a_reg_n_0_[18] ));
  FDCE \bin_a_reg[19] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[19]),
        .Q(\bin_a_reg_n_0_[19] ));
  FDCE \bin_a_reg[1] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[1]),
        .Q(\bin_a_reg_n_0_[1] ));
  FDCE \bin_a_reg[20] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[20]),
        .Q(\bin_a_reg_n_0_[20] ));
  FDCE \bin_a_reg[21] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[21]),
        .Q(\bin_a_reg_n_0_[21] ));
  FDCE \bin_a_reg[22] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[22]),
        .Q(\bin_a_reg_n_0_[22] ));
  FDCE \bin_a_reg[23] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[23]),
        .Q(\bin_a_reg_n_0_[23] ));
  FDCE \bin_a_reg[24] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[24]),
        .Q(\bin_a_reg_n_0_[24] ));
  FDCE \bin_a_reg[25] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[25]),
        .Q(\bin_a_reg_n_0_[25] ));
  FDCE \bin_a_reg[26] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[26]),
        .Q(\bin_a_reg_n_0_[26] ));
  FDCE \bin_a_reg[27] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[27]),
        .Q(\bin_a_reg_n_0_[27] ));
  FDCE \bin_a_reg[28] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[28]),
        .Q(\bin_a_reg_n_0_[28] ));
  FDCE \bin_a_reg[29] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[29]),
        .Q(\bin_a_reg_n_0_[29] ));
  FDCE \bin_a_reg[2] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[2]),
        .Q(\bin_a_reg_n_0_[2] ));
  FDCE \bin_a_reg[30] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[30]),
        .Q(\bin_a_reg_n_0_[30] ));
  FDCE \bin_a_reg[31] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[31]),
        .Q(\bin_a_reg_n_0_[31] ));
  FDCE \bin_a_reg[32] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[32]),
        .Q(\bin_a_reg_n_0_[32] ));
  FDCE \bin_a_reg[33] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[33]),
        .Q(\bin_a_reg_n_0_[33] ));
  FDCE \bin_a_reg[34] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[34]),
        .Q(\bin_a_reg_n_0_[34] ));
  FDCE \bin_a_reg[35] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[35]),
        .Q(\bin_a_reg_n_0_[35] ));
  FDCE \bin_a_reg[36] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[36]),
        .Q(\bin_a_reg_n_0_[36] ));
  FDCE \bin_a_reg[37] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[37]),
        .Q(\bin_a_reg_n_0_[37] ));
  FDCE \bin_a_reg[38] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[38]),
        .Q(\bin_a_reg_n_0_[38] ));
  FDCE \bin_a_reg[39] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[39]),
        .Q(\bin_a_reg_n_0_[39] ));
  FDCE \bin_a_reg[3] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[3]),
        .Q(\bin_a_reg_n_0_[3] ));
  FDCE \bin_a_reg[40] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[40]),
        .Q(\bin_a_reg_n_0_[40] ));
  FDCE \bin_a_reg[41] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[41]),
        .Q(\bin_a_reg_n_0_[41] ));
  FDCE \bin_a_reg[42] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[42]),
        .Q(\bin_a_reg_n_0_[42] ));
  FDCE \bin_a_reg[43] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[43]),
        .Q(\bin_a_reg_n_0_[43] ));
  FDCE \bin_a_reg[44] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[44]),
        .Q(\bin_a_reg_n_0_[44] ));
  FDCE \bin_a_reg[45] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[45]),
        .Q(\bin_a_reg_n_0_[45] ));
  FDCE \bin_a_reg[46] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[46]),
        .Q(\bin_a_reg_n_0_[46] ));
  FDCE \bin_a_reg[47] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[47]),
        .Q(\bin_a_reg_n_0_[47] ));
  FDCE \bin_a_reg[4] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[4]),
        .Q(\bin_a_reg_n_0_[4] ));
  FDCE \bin_a_reg[5] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[5]),
        .Q(\bin_a_reg_n_0_[5] ));
  FDCE \bin_a_reg[6] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[6]),
        .Q(\bin_a_reg_n_0_[6] ));
  FDCE \bin_a_reg[7] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[7]),
        .Q(\bin_a_reg_n_0_[7] ));
  FDCE \bin_a_reg[8] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[8]),
        .Q(\bin_a_reg_n_0_[8] ));
  FDCE \bin_a_reg[9] 
       (.C(clk),
        .CE(bin_a),
        .CLR(weight_n_0),
        .D(spectrum_doutb[9]),
        .Q(\bin_a_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bin_b[47]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(bin_b));
  FDCE \bin_b_reg[0] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[0]),
        .Q(\bin_b_reg_n_0_[0] ));
  FDCE \bin_b_reg[10] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[10]),
        .Q(\bin_b_reg_n_0_[10] ));
  FDCE \bin_b_reg[11] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[11]),
        .Q(\bin_b_reg_n_0_[11] ));
  FDCE \bin_b_reg[12] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[12]),
        .Q(\bin_b_reg_n_0_[12] ));
  FDCE \bin_b_reg[13] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[13]),
        .Q(\bin_b_reg_n_0_[13] ));
  FDCE \bin_b_reg[14] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[14]),
        .Q(\bin_b_reg_n_0_[14] ));
  FDCE \bin_b_reg[15] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[15]),
        .Q(\bin_b_reg_n_0_[15] ));
  FDCE \bin_b_reg[16] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[16]),
        .Q(\bin_b_reg_n_0_[16] ));
  FDCE \bin_b_reg[17] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[17]),
        .Q(\bin_b_reg_n_0_[17] ));
  FDCE \bin_b_reg[18] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[18]),
        .Q(\bin_b_reg_n_0_[18] ));
  FDCE \bin_b_reg[19] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[19]),
        .Q(\bin_b_reg_n_0_[19] ));
  FDCE \bin_b_reg[1] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[1]),
        .Q(\bin_b_reg_n_0_[1] ));
  FDCE \bin_b_reg[20] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[20]),
        .Q(\bin_b_reg_n_0_[20] ));
  FDCE \bin_b_reg[21] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[21]),
        .Q(\bin_b_reg_n_0_[21] ));
  FDCE \bin_b_reg[22] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[22]),
        .Q(\bin_b_reg_n_0_[22] ));
  FDCE \bin_b_reg[23] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[23]),
        .Q(\bin_b_reg_n_0_[23] ));
  FDCE \bin_b_reg[24] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[24]),
        .Q(\bin_b_reg_n_0_[24] ));
  FDCE \bin_b_reg[25] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[25]),
        .Q(\bin_b_reg_n_0_[25] ));
  FDCE \bin_b_reg[26] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[26]),
        .Q(\bin_b_reg_n_0_[26] ));
  FDCE \bin_b_reg[27] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[27]),
        .Q(\bin_b_reg_n_0_[27] ));
  FDCE \bin_b_reg[28] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[28]),
        .Q(\bin_b_reg_n_0_[28] ));
  FDCE \bin_b_reg[29] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[29]),
        .Q(\bin_b_reg_n_0_[29] ));
  FDCE \bin_b_reg[2] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[2]),
        .Q(\bin_b_reg_n_0_[2] ));
  FDCE \bin_b_reg[30] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[30]),
        .Q(\bin_b_reg_n_0_[30] ));
  FDCE \bin_b_reg[31] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[31]),
        .Q(\bin_b_reg_n_0_[31] ));
  FDCE \bin_b_reg[32] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[32]),
        .Q(\bin_b_reg_n_0_[32] ));
  FDCE \bin_b_reg[33] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[33]),
        .Q(\bin_b_reg_n_0_[33] ));
  FDCE \bin_b_reg[34] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[34]),
        .Q(\bin_b_reg_n_0_[34] ));
  FDCE \bin_b_reg[35] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[35]),
        .Q(\bin_b_reg_n_0_[35] ));
  FDCE \bin_b_reg[36] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[36]),
        .Q(\bin_b_reg_n_0_[36] ));
  FDCE \bin_b_reg[37] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[37]),
        .Q(\bin_b_reg_n_0_[37] ));
  FDCE \bin_b_reg[38] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[38]),
        .Q(\bin_b_reg_n_0_[38] ));
  FDCE \bin_b_reg[39] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[39]),
        .Q(\bin_b_reg_n_0_[39] ));
  FDCE \bin_b_reg[3] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[3]),
        .Q(\bin_b_reg_n_0_[3] ));
  FDCE \bin_b_reg[40] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[40]),
        .Q(\bin_b_reg_n_0_[40] ));
  FDCE \bin_b_reg[41] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[41]),
        .Q(\bin_b_reg_n_0_[41] ));
  FDCE \bin_b_reg[42] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[42]),
        .Q(\bin_b_reg_n_0_[42] ));
  FDCE \bin_b_reg[43] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[43]),
        .Q(\bin_b_reg_n_0_[43] ));
  FDCE \bin_b_reg[44] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[44]),
        .Q(\bin_b_reg_n_0_[44] ));
  FDCE \bin_b_reg[45] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[45]),
        .Q(\bin_b_reg_n_0_[45] ));
  FDCE \bin_b_reg[46] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[46]),
        .Q(\bin_b_reg_n_0_[46] ));
  FDCE \bin_b_reg[47] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[47]),
        .Q(\bin_b_reg_n_0_[47] ));
  FDCE \bin_b_reg[4] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[4]),
        .Q(\bin_b_reg_n_0_[4] ));
  FDCE \bin_b_reg[5] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[5]),
        .Q(\bin_b_reg_n_0_[5] ));
  FDCE \bin_b_reg[6] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[6]),
        .Q(\bin_b_reg_n_0_[6] ));
  FDCE \bin_b_reg[7] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[7]),
        .Q(\bin_b_reg_n_0_[7] ));
  FDCE \bin_b_reg[8] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[8]),
        .Q(\bin_b_reg_n_0_[8] ));
  FDCE \bin_b_reg[9] 
       (.C(clk),
        .CE(bin_b),
        .CLR(weight_n_0),
        .D(spectrum_doutb[9]),
        .Q(\bin_b_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    \bin_index[0]_i_1 
       (.I0(state[3]),
        .I1(spectrum_addrb0_in[0]),
        .O(bin_index[0]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[10]_i_1 
       (.I0(in38[10]),
        .I1(state[3]),
        .O(bin_index[10]));
  LUT6 #(
    .INIT(64'h00100000000000AA)) 
    \bin_index[11]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\bin_index[11]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[2]),
        .O(\bin_index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[11]_i_2 
       (.I0(in38[11]),
        .I1(state[3]),
        .O(bin_index[11]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[11]_i_3 
       (.I0(s_axis_data_tready),
        .I1(s_axis_data_tvalid_reg_0),
        .O(\bin_index[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[1]_i_1 
       (.I0(in38[1]),
        .I1(state[3]),
        .O(bin_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[2]_i_1 
       (.I0(in38[2]),
        .I1(state[3]),
        .O(bin_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[3]_i_1 
       (.I0(in38[3]),
        .I1(state[3]),
        .O(bin_index[3]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[4]_i_1 
       (.I0(in38[4]),
        .I1(state[3]),
        .O(bin_index[4]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[5]_i_1 
       (.I0(in38[5]),
        .I1(state[3]),
        .O(bin_index[5]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[6]_i_1 
       (.I0(in38[6]),
        .I1(state[3]),
        .O(bin_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[7]_i_1 
       (.I0(in38[7]),
        .I1(state[3]),
        .O(bin_index[7]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[8]_i_1 
       (.I0(in38[8]),
        .I1(state[3]),
        .O(bin_index[8]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin_index[9]_i_1 
       (.I0(in38[9]),
        .I1(state[3]),
        .O(bin_index[9]));
  FDCE \bin_index_reg[0] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[0]),
        .Q(spectrum_addrb0_in[0]));
  FDCE \bin_index_reg[10] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[10]),
        .Q(spectrum_addrb0_in[10]));
  FDCE \bin_index_reg[11] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[11]),
        .Q(spectrum_addrb0_in[11]));
  CARRY4 \bin_index_reg[11]_i_4 
       (.CI(\bin_index_reg[8]_i_2_n_0 ),
        .CO({\NLW_bin_index_reg[11]_i_4_CO_UNCONNECTED [3:2],\bin_index_reg[11]_i_4_n_2 ,\bin_index_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bin_index_reg[11]_i_4_O_UNCONNECTED [3],in38[11:9]}),
        .S({1'b0,spectrum_addrb0_in[11:9]}));
  FDCE \bin_index_reg[1] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[1]),
        .Q(spectrum_addrb0_in[1]));
  FDCE \bin_index_reg[2] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[2]),
        .Q(spectrum_addrb0_in[2]));
  FDCE \bin_index_reg[3] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[3]),
        .Q(spectrum_addrb0_in[3]));
  FDCE \bin_index_reg[4] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[4]),
        .Q(spectrum_addrb0_in[4]));
  CARRY4 \bin_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bin_index_reg[4]_i_2_n_0 ,\bin_index_reg[4]_i_2_n_1 ,\bin_index_reg[4]_i_2_n_2 ,\bin_index_reg[4]_i_2_n_3 }),
        .CYINIT(spectrum_addrb0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in38[4:1]),
        .S(spectrum_addrb0_in[4:1]));
  FDCE \bin_index_reg[5] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[5]),
        .Q(spectrum_addrb0_in[5]));
  FDCE \bin_index_reg[6] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[6]),
        .Q(spectrum_addrb0_in[6]));
  FDCE \bin_index_reg[7] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[7]),
        .Q(spectrum_addrb0_in[7]));
  FDCE \bin_index_reg[8] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[8]),
        .Q(spectrum_addrb0_in[8]));
  CARRY4 \bin_index_reg[8]_i_2 
       (.CI(\bin_index_reg[4]_i_2_n_0 ),
        .CO({\bin_index_reg[8]_i_2_n_0 ,\bin_index_reg[8]_i_2_n_1 ,\bin_index_reg[8]_i_2_n_2 ,\bin_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in38[8:5]),
        .S(spectrum_addrb0_in[8:5]));
  FDCE \bin_index_reg[9] 
       (.C(clk),
        .CE(\bin_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(bin_index[9]),
        .Q(spectrum_addrb0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000FF00)) 
    busy_i_1
       (.I0(\mic_a[1]_i_1_n_0 ),
        .I1(state[3]),
        .I2(rx_finished_reg_n_0),
        .I3(busy_i_3_n_0),
        .I4(busy_i_4_n_0),
        .I5(busy_reg_0),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h04)) 
    busy_i_3
       (.I0(state[3]),
        .I1(start),
        .I2(start_d),
        .O(busy_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hDFFE)) 
    busy_i_4
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(busy_i_4_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(busy_i_1_n_0),
        .Q(busy_reg_0));
  LUT4 #(
    .INIT(16'h4000)) 
    done_i_1
       (.I0(\work_pair_reg_n_0_[1] ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[0] ),
        .I3(\pair_index[2]_i_1_n_0 ),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(done_i_1_n_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hFFFF88BF00008880)) 
    frame_error_i_1
       (.I0(frame_error_i_2_n_0),
        .I1(pair_tlast_error_reg_n_0),
        .I2(\lag_valid[4]_i_4_n_0 ),
        .I3(busy_i_3_n_0),
        .I4(busy_i_4_n_0),
        .I5(frame_error),
        .O(frame_error_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    frame_error_i_2
       (.I0(state[3]),
        .I1(state[1]),
        .O(frame_error_i_2_n_0));
  FDCE frame_error_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(frame_error_i_1_n_0),
        .Q(frame_error));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(m_axis_data_tdata[22]),
        .I1(\best_peak_reg_n_0_[22] ),
        .I2(m_axis_data_tdata[23]),
        .I3(\best_peak_reg_n_0_[23] ),
        .I4(\best_peak_reg_n_0_[21] ),
        .I5(m_axis_data_tdata[21]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(\rx_index_reg_n_0_[8] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1__1
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(\rx_index_reg_n_0_[10] ),
        .O(i__carry__0_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(m_axis_data_tdata[18]),
        .I1(\best_peak_reg_n_0_[18] ),
        .I2(m_axis_data_tdata[19]),
        .I3(\best_peak_reg_n_0_[19] ),
        .I4(\best_peak_reg_n_0_[20] ),
        .I5(m_axis_data_tdata[20]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(\rx_index_reg_n_0_[7] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__1
       (.I0(\rx_index_reg_n_0_[8] ),
        .I1(\rx_index_reg_n_0_[9] ),
        .O(i__carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(m_axis_data_tdata[16]),
        .I1(\best_peak_reg_n_0_[16] ),
        .I2(m_axis_data_tdata[17]),
        .I3(\best_peak_reg_n_0_[17] ),
        .I4(\best_peak_reg_n_0_[15] ),
        .I5(m_axis_data_tdata[15]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(\rx_index_reg_n_0_[6] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(m_axis_data_tdata[12]),
        .I1(\best_peak_reg_n_0_[12] ),
        .I2(m_axis_data_tdata[13]),
        .I3(\best_peak_reg_n_0_[13] ),
        .I4(\best_peak_reg_n_0_[14] ),
        .I5(m_axis_data_tdata[14]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(\rx_index_reg_n_0_[5] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(\rx_index_reg_n_0_[11] ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\rx_index_reg_n_0_[10] ),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\rx_index_reg_n_0_[9] ),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\rx_index_reg_n_0_[0] ),
        .O(in11[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(m_axis_data_tdata[10]),
        .I1(\best_peak_reg_n_0_[10] ),
        .I2(m_axis_data_tdata[11]),
        .I3(\best_peak_reg_n_0_[11] ),
        .I4(\best_peak_reg_n_0_[9] ),
        .I5(m_axis_data_tdata[9]),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    i__carry_i_1__1
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(search_limit),
        .I2(\rx_index_reg_n_0_[3] ),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(m_axis_data_tdata[6]),
        .I1(\best_peak_reg_n_0_[6] ),
        .I2(m_axis_data_tdata[7]),
        .I3(\best_peak_reg_n_0_[7] ),
        .I4(\best_peak_reg_n_0_[8] ),
        .I5(m_axis_data_tdata[8]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__0
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(\rx_index_reg_n_0_[4] ),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(m_axis_data_tdata[4]),
        .I1(\best_peak_reg_n_0_[4] ),
        .I2(m_axis_data_tdata[5]),
        .I3(\best_peak_reg_n_0_[5] ),
        .I4(\best_peak_reg_n_0_[3] ),
        .I5(m_axis_data_tdata[3]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(\rx_index_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__1
       (.I0(\rx_index_reg_n_0_[6] ),
        .I1(\rx_index_reg_n_0_[7] ),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(m_axis_data_tdata[0]),
        .I1(\best_peak_reg_n_0_[0] ),
        .I2(m_axis_data_tdata[1]),
        .I3(\best_peak_reg_n_0_[1] ),
        .I4(\best_peak_reg_n_0_[2] ),
        .I5(m_axis_data_tdata[2]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__0
       (.I0(\rx_index_reg_n_0_[2] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__1
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .O(i__carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    i__carry_i_5
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(\rx_index_reg_n_0_[2] ),
        .I2(search_limit),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5__0
       (.I0(\rx_index_reg_n_0_[1] ),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .O(i__carry_i_6_n_0));
  CARRY4 in_search0_carry
       (.CI(1'b0),
        .CO({in_search0_carry_n_0,in_search0_carry_n_1,in_search0_carry_n_2,in_search0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,in_search0_carry_i_1_n_0,1'b0}),
        .O(NLW_in_search0_carry_O_UNCONNECTED[3:0]),
        .S({in_search0_carry_i_2_n_0,in_search0_carry_i_3_n_0,in_search0_carry_i_4_n_0,in_search0_carry_i_5_n_0}));
  CARRY4 in_search0_carry__0
       (.CI(in_search0_carry_n_0),
        .CO({NLW_in_search0_carry__0_CO_UNCONNECTED[3:2],in_search0,in_search0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_in_search0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,in_search0_carry__0_i_1_n_0,in_search0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    in_search0_carry__0_i_1
       (.I0(\rx_index_reg_n_0_[11] ),
        .I1(\rx_index_reg_n_0_[10] ),
        .O(in_search0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    in_search0_carry__0_i_2
       (.I0(\rx_index_reg_n_0_[8] ),
        .I1(\rx_index_reg_n_0_[9] ),
        .O(in_search0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    in_search0_carry_i_1
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(\rx_index_reg_n_0_[2] ),
        .I2(search_limit),
        .O(in_search0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    in_search0_carry_i_2
       (.I0(\rx_index_reg_n_0_[6] ),
        .I1(\rx_index_reg_n_0_[7] ),
        .O(in_search0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    in_search0_carry_i_3
       (.I0(\rx_index_reg_n_0_[4] ),
        .I1(\rx_index_reg_n_0_[5] ),
        .O(in_search0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    in_search0_carry_i_4
       (.I0(\rx_index_reg_n_0_[2] ),
        .I1(search_limit),
        .I2(\rx_index_reg_n_0_[3] ),
        .O(in_search0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    in_search0_carry_i_5
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(\rx_index_reg_n_0_[1] ),
        .O(in_search0_carry_i_5_n_0));
  CARRY4 \in_search0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\in_search0_inferred__0/i__carry_n_0 ,\in_search0_inferred__0/i__carry_n_1 ,\in_search0_inferred__0/i__carry_n_2 ,\in_search0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,i__carry_i_1__1_n_0,i__carry_i_2__0_n_0}),
        .O(\NLW_in_search0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  CARRY4 \in_search0_inferred__0/i__carry__0 
       (.CI(\in_search0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_in_search0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],in_search02_in,\in_search0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_in_search0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0}));
  LUT4 #(
    .INIT(16'h0002)) 
    \lag12[15]_i_1 
       (.I0(\pair_index[2]_i_1_n_0 ),
        .I1(\work_pair_reg_n_0_[0] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .I3(\work_pair_reg_n_0_[2] ),
        .O(\lag12[15]_i_1_n_0 ));
  FDCE \lag12_reg[0] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag12[0]));
  FDCE \lag12_reg[10] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag12[10]));
  FDCE \lag12_reg[15] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag12[11]));
  FDCE \lag12_reg[1] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag12[1]));
  FDCE \lag12_reg[2] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag12[2]));
  FDCE \lag12_reg[3] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag12[3]));
  FDCE \lag12_reg[4] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag12[4]));
  FDCE \lag12_reg[5] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag12[5]));
  FDCE \lag12_reg[6] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag12[6]));
  FDCE \lag12_reg[7] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag12[7]));
  FDCE \lag12_reg[8] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag12[8]));
  FDCE \lag12_reg[9] 
       (.C(clk),
        .CE(\lag12[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag12[9]));
  LUT4 #(
    .INIT(16'h0020)) 
    \lag13[15]_i_1 
       (.I0(\pair_index[2]_i_1_n_0 ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[0] ),
        .I3(\work_pair_reg_n_0_[1] ),
        .O(\lag13[15]_i_1_n_0 ));
  FDCE \lag13_reg[0] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag13[0]));
  FDCE \lag13_reg[10] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag13[10]));
  FDCE \lag13_reg[15] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag13[11]));
  FDCE \lag13_reg[1] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag13[1]));
  FDCE \lag13_reg[2] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag13[2]));
  FDCE \lag13_reg[3] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag13[3]));
  FDCE \lag13_reg[4] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag13[4]));
  FDCE \lag13_reg[5] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag13[5]));
  FDCE \lag13_reg[6] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag13[6]));
  FDCE \lag13_reg[7] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag13[7]));
  FDCE \lag13_reg[8] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag13[8]));
  FDCE \lag13_reg[9] 
       (.C(clk),
        .CE(\lag13[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag13[9]));
  LUT4 #(
    .INIT(16'h0008)) 
    \lag14[15]_i_1 
       (.I0(\pair_index[2]_i_1_n_0 ),
        .I1(\work_pair_reg_n_0_[1] ),
        .I2(\work_pair_reg_n_0_[2] ),
        .I3(\work_pair_reg_n_0_[0] ),
        .O(\lag14[15]_i_1_n_0 ));
  FDCE \lag14_reg[0] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag14[0]));
  FDCE \lag14_reg[10] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag14[10]));
  FDCE \lag14_reg[15] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag14[11]));
  FDCE \lag14_reg[1] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag14[1]));
  FDCE \lag14_reg[2] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag14[2]));
  FDCE \lag14_reg[3] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag14[3]));
  FDCE \lag14_reg[4] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag14[4]));
  FDCE \lag14_reg[5] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag14[5]));
  FDCE \lag14_reg[6] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag14[6]));
  FDCE \lag14_reg[7] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag14[7]));
  FDCE \lag14_reg[8] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag14[8]));
  FDCE \lag14_reg[9] 
       (.C(clk),
        .CE(\lag14[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag14[9]));
  LUT4 #(
    .INIT(16'h2000)) 
    \lag23[15]_i_1 
       (.I0(\pair_index[2]_i_1_n_0 ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[0] ),
        .I3(\work_pair_reg_n_0_[1] ),
        .O(\lag23[15]_i_1_n_0 ));
  FDCE \lag23_reg[0] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag23[0]));
  FDCE \lag23_reg[10] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag23[10]));
  FDCE \lag23_reg[15] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag23[11]));
  FDCE \lag23_reg[1] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag23[1]));
  FDCE \lag23_reg[2] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag23[2]));
  FDCE \lag23_reg[3] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag23[3]));
  FDCE \lag23_reg[4] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag23[4]));
  FDCE \lag23_reg[5] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag23[5]));
  FDCE \lag23_reg[6] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag23[6]));
  FDCE \lag23_reg[7] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag23[7]));
  FDCE \lag23_reg[8] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag23[8]));
  FDCE \lag23_reg[9] 
       (.C(clk),
        .CE(\lag23[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag23[9]));
  LUT4 #(
    .INIT(16'h0200)) 
    \lag24[15]_i_1 
       (.I0(\pair_index[2]_i_1_n_0 ),
        .I1(\work_pair_reg_n_0_[0] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .I3(\work_pair_reg_n_0_[2] ),
        .O(\lag24[15]_i_1_n_0 ));
  FDCE \lag24_reg[0] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag24[0]));
  FDCE \lag24_reg[10] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag24[10]));
  FDCE \lag24_reg[15] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag24[11]));
  FDCE \lag24_reg[1] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag24[1]));
  FDCE \lag24_reg[2] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag24[2]));
  FDCE \lag24_reg[3] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag24[3]));
  FDCE \lag24_reg[4] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag24[4]));
  FDCE \lag24_reg[5] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag24[5]));
  FDCE \lag24_reg[6] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag24[6]));
  FDCE \lag24_reg[7] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag24[7]));
  FDCE \lag24_reg[8] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag24[8]));
  FDCE \lag24_reg[9] 
       (.C(clk),
        .CE(\lag24[15]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag24[9]));
  FDCE \lag34_reg[0] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(lag34[0]));
  FDCE \lag34_reg[10] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(lag34[10]));
  FDCE \lag34_reg[15] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(lag34[11]));
  FDCE \lag34_reg[1] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(lag34[1]));
  FDCE \lag34_reg[2] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(lag34[2]));
  FDCE \lag34_reg[3] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(lag34[3]));
  FDCE \lag34_reg[4] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(lag34[4]));
  FDCE \lag34_reg[5] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(lag34[5]));
  FDCE \lag34_reg[6] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(lag34[6]));
  FDCE \lag34_reg[7] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(lag34[7]));
  FDCE \lag34_reg[8] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(lag34[8]));
  FDCE \lag34_reg[9] 
       (.C(clk),
        .CE(done_i_1_n_0),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(lag34[9]));
  LUT6 #(
    .INIT(64'hEEEEEFFF22222000)) 
    \lag_valid[0]_i_1 
       (.I0(\lag_valid[4]_i_2_n_0 ),
        .I1(busy_i_4_n_0),
        .I2(\lag_valid[0]_i_2_n_0 ),
        .I3(\lag_valid[4]_i_4_n_0 ),
        .I4(busy_i_3_n_0),
        .I5(lag_valid[0]),
        .O(\lag_valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \lag_valid[0]_i_2 
       (.I0(\work_pair_reg_n_0_[2] ),
        .I1(\work_pair_reg_n_0_[1] ),
        .I2(\work_pair_reg_n_0_[0] ),
        .O(\lag_valid[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFFEF22220020)) 
    \lag_valid[1]_i_1 
       (.I0(\lag_valid[4]_i_2_n_0 ),
        .I1(busy_i_4_n_0),
        .I2(\lag_valid[4]_i_4_n_0 ),
        .I3(\lag_valid[1]_i_2_n_0 ),
        .I4(busy_i_3_n_0),
        .I5(lag_valid[1]),
        .O(\lag_valid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \lag_valid[1]_i_2 
       (.I0(\work_pair_reg_n_0_[1] ),
        .I1(\work_pair_reg_n_0_[0] ),
        .I2(\work_pair_reg_n_0_[2] ),
        .O(\lag_valid[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFFEF22220020)) 
    \lag_valid[2]_i_1 
       (.I0(\lag_valid[4]_i_2_n_0 ),
        .I1(busy_i_4_n_0),
        .I2(\lag_valid[4]_i_4_n_0 ),
        .I3(\lag_valid[2]_i_2_n_0 ),
        .I4(busy_i_3_n_0),
        .I5(lag_valid[2]),
        .O(\lag_valid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \lag_valid[2]_i_2 
       (.I0(\work_pair_reg_n_0_[0] ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .O(\lag_valid[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFFF22222000)) 
    \lag_valid[3]_i_1 
       (.I0(\lag_valid[4]_i_2_n_0 ),
        .I1(busy_i_4_n_0),
        .I2(\lag_valid[3]_i_2_n_0 ),
        .I3(\lag_valid[4]_i_4_n_0 ),
        .I4(busy_i_3_n_0),
        .I5(lag_valid[3]),
        .O(\lag_valid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lag_valid[3]_i_2 
       (.I0(\work_pair_reg_n_0_[1] ),
        .I1(\work_pair_reg_n_0_[0] ),
        .I2(\work_pair_reg_n_0_[2] ),
        .O(\lag_valid[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFFF22222000)) 
    \lag_valid[4]_i_1 
       (.I0(\lag_valid[4]_i_2_n_0 ),
        .I1(busy_i_4_n_0),
        .I2(\lag_valid[4]_i_3_n_0 ),
        .I3(\lag_valid[4]_i_4_n_0 ),
        .I4(busy_i_3_n_0),
        .I5(lag_valid[4]),
        .O(\lag_valid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \lag_valid[4]_i_2 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(pair_lag36_in),
        .I3(pair_tlast_error_reg_n_0),
        .O(\lag_valid[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \lag_valid[4]_i_3 
       (.I0(\work_pair_reg_n_0_[2] ),
        .I1(\work_pair_reg_n_0_[1] ),
        .I2(\work_pair_reg_n_0_[0] ),
        .O(\lag_valid[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lag_valid[4]_i_4 
       (.I0(rx_finished_reg_n_0),
        .I1(state[3]),
        .O(\lag_valid[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \lag_valid[5]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(pair_lag36_in),
        .I3(pair_tlast_error_reg_n_0),
        .I4(\lag_valid[5]_i_2_n_0 ),
        .I5(lag_valid[5]),
        .O(\lag_valid[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008080B380)) 
    \lag_valid[5]_i_2 
       (.I0(\mic_a[1]_i_1_n_0 ),
        .I1(state[3]),
        .I2(rx_finished_reg_n_0),
        .I3(start),
        .I4(start_d),
        .I5(busy_i_4_n_0),
        .O(\lag_valid[5]_i_2_n_0 ));
  FDCE \lag_valid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[0]_i_1_n_0 ),
        .Q(lag_valid[0]));
  FDCE \lag_valid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[1]_i_1_n_0 ),
        .Q(lag_valid[1]));
  FDCE \lag_valid_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[2]_i_1_n_0 ),
        .Q(lag_valid[2]));
  FDCE \lag_valid_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[3]_i_1_n_0 ),
        .Q(lag_valid[3]));
  FDCE \lag_valid_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[4]_i_1_n_0 ),
        .Q(lag_valid[4]));
  FDCE \lag_valid_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\lag_valid[5]_i_1_n_0 ),
        .Q(lag_valid[5]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_data_tready_INST_0
       (.I0(receiving_reg_n_0),
        .I1(busy_reg_0),
        .I2(rst),
        .O(m_axis_data_tready));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \mic_a[0]_i_1 
       (.I0(\work_pair_reg_n_0_[0] ),
        .I1(\work_pair_reg_n_0_[1] ),
        .I2(\work_pair_reg_n_0_[2] ),
        .O(\mic_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mic_a[1]_i_1 
       (.I0(\work_pair_reg_n_0_[0] ),
        .I1(\work_pair_reg_n_0_[2] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .O(\mic_a[1]_i_1_n_0 ));
  FDCE \mic_a_reg[0] 
       (.C(clk),
        .CE(mic_a),
        .CLR(weight_n_0),
        .D(\mic_a[0]_i_1_n_0 ),
        .Q(\mic_a_reg_n_0_[0] ));
  FDCE \mic_a_reg[1] 
       (.C(clk),
        .CE(mic_a),
        .CLR(weight_n_0),
        .D(\mic_a[1]_i_1_n_0 ),
        .Q(\mic_a_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    \mic_b[0]_i_1 
       (.I0(\work_pair_reg_n_0_[2] ),
        .I1(\work_pair_reg_n_0_[0] ),
        .O(\mic_b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h5E)) 
    \mic_b[1]_i_1 
       (.I0(\work_pair_reg_n_0_[2] ),
        .I1(\work_pair_reg_n_0_[0] ),
        .I2(\work_pair_reg_n_0_[1] ),
        .O(\mic_b[1]_i_1_n_0 ));
  FDPE \mic_b_reg[0] 
       (.C(clk),
        .CE(mic_a),
        .D(\mic_b[0]_i_1_n_0 ),
        .PRE(weight_n_0),
        .Q(\mic_b_reg_n_0_[0] ));
  FDCE \mic_b_reg[1] 
       (.C(clk),
        .CE(mic_a),
        .CLR(weight_n_0),
        .D(\mic_b[1]_i_1_n_0 ),
        .Q(\mic_b_reg_n_0_[1] ));
  FDCE pair_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\pair_index[2]_i_1_n_0 ),
        .Q(pair_done));
  LUT5 #(
    .INIT(32'h08000000)) 
    \pair_index[2]_i_1 
       (.I0(rx_finished_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .O(\pair_index[2]_i_1_n_0 ));
  FDCE \pair_index_reg[0] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\work_pair_reg_n_0_[0] ),
        .Q(pair_index[0]));
  FDCE \pair_index_reg[1] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\work_pair_reg_n_0_[1] ),
        .Q(pair_index[1]));
  FDCE \pair_index_reg[2] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\work_pair_reg_n_0_[2] ),
        .Q(pair_index[2]));
  CARRY4 pair_lag3_carry
       (.CI(1'b0),
        .CO({pair_lag3_carry_n_0,pair_lag3_carry_n_1,pair_lag3_carry_n_2,pair_lag3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pair_lag3_carry_i_1_n_0,1'b0,pair_lag3_carry_i_2_n_0,pair_lag3_carry_i_3_n_0}),
        .O(NLW_pair_lag3_carry_O_UNCONNECTED[3:0]),
        .S({pair_lag3_carry_i_4_n_0,pair_lag3_carry_i_5_n_0,pair_lag3_carry_i_6_n_0,pair_lag3_carry_i_7_n_0}));
  CARRY4 pair_lag3_carry__0
       (.CI(pair_lag3_carry_n_0),
        .CO({pair_lag3_carry__0_n_0,pair_lag3_carry__0_n_1,pair_lag3_carry__0_n_2,pair_lag3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pair_lag3_carry__0_i_1_n_0,pair_lag3_carry__0_i_2_n_0,pair_lag3_carry__0_i_3_n_0,pair_lag3_carry__0_i_4_n_0}),
        .O(NLW_pair_lag3_carry__0_O_UNCONNECTED[3:0]),
        .S({pair_lag3_carry__0_i_5_n_0,pair_lag3_carry__0_i_6_n_0,pair_lag3_carry__0_i_7_n_0,pair_lag3_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__0_i_1
       (.I0(\best_peak_reg_n_0_[15] ),
        .I1(\best_peak_reg_n_0_[14] ),
        .O(pair_lag3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__0_i_2
       (.I0(\best_peak_reg_n_0_[13] ),
        .I1(\best_peak_reg_n_0_[12] ),
        .O(pair_lag3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__0_i_3
       (.I0(\best_peak_reg_n_0_[11] ),
        .I1(\best_peak_reg_n_0_[10] ),
        .O(pair_lag3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__0_i_4
       (.I0(\best_peak_reg_n_0_[9] ),
        .I1(\best_peak_reg_n_0_[8] ),
        .O(pair_lag3_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__0_i_5
       (.I0(\best_peak_reg_n_0_[14] ),
        .I1(\best_peak_reg_n_0_[15] ),
        .O(pair_lag3_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__0_i_6
       (.I0(\best_peak_reg_n_0_[12] ),
        .I1(\best_peak_reg_n_0_[13] ),
        .O(pair_lag3_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__0_i_7
       (.I0(\best_peak_reg_n_0_[10] ),
        .I1(\best_peak_reg_n_0_[11] ),
        .O(pair_lag3_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__0_i_8
       (.I0(\best_peak_reg_n_0_[8] ),
        .I1(\best_peak_reg_n_0_[9] ),
        .O(pair_lag3_carry__0_i_8_n_0));
  CARRY4 pair_lag3_carry__1
       (.CI(pair_lag3_carry__0_n_0),
        .CO({pair_lag36_in,pair_lag3_carry__1_n_1,pair_lag3_carry__1_n_2,pair_lag3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({pair_lag3_carry__1_i_1_n_0,pair_lag3_carry__1_i_2_n_0,pair_lag3_carry__1_i_3_n_0,pair_lag3_carry__1_i_4_n_0}),
        .O(NLW_pair_lag3_carry__1_O_UNCONNECTED[3:0]),
        .S({pair_lag3_carry__1_i_5_n_0,pair_lag3_carry__1_i_6_n_0,pair_lag3_carry__1_i_7_n_0,pair_lag3_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    pair_lag3_carry__1_i_1
       (.I0(\best_peak_reg_n_0_[22] ),
        .I1(\best_peak_reg_n_0_[23] ),
        .O(pair_lag3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__1_i_2
       (.I0(\best_peak_reg_n_0_[21] ),
        .I1(\best_peak_reg_n_0_[20] ),
        .O(pair_lag3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__1_i_3
       (.I0(\best_peak_reg_n_0_[19] ),
        .I1(\best_peak_reg_n_0_[18] ),
        .O(pair_lag3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry__1_i_4
       (.I0(\best_peak_reg_n_0_[17] ),
        .I1(\best_peak_reg_n_0_[16] ),
        .O(pair_lag3_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__1_i_5
       (.I0(\best_peak_reg_n_0_[22] ),
        .I1(\best_peak_reg_n_0_[23] ),
        .O(pair_lag3_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__1_i_6
       (.I0(\best_peak_reg_n_0_[20] ),
        .I1(\best_peak_reg_n_0_[21] ),
        .O(pair_lag3_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__1_i_7
       (.I0(\best_peak_reg_n_0_[18] ),
        .I1(\best_peak_reg_n_0_[19] ),
        .O(pair_lag3_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry__1_i_8
       (.I0(\best_peak_reg_n_0_[16] ),
        .I1(\best_peak_reg_n_0_[17] ),
        .O(pair_lag3_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry_i_1
       (.I0(\best_peak_reg_n_0_[7] ),
        .I1(\best_peak_reg_n_0_[6] ),
        .O(pair_lag3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry_i_2
       (.I0(\best_peak_reg_n_0_[3] ),
        .I1(\best_peak_reg_n_0_[2] ),
        .O(pair_lag3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pair_lag3_carry_i_3
       (.I0(\best_peak_reg_n_0_[1] ),
        .I1(\best_peak_reg_n_0_[0] ),
        .O(pair_lag3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry_i_4
       (.I0(\best_peak_reg_n_0_[6] ),
        .I1(\best_peak_reg_n_0_[7] ),
        .O(pair_lag3_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pair_lag3_carry_i_5
       (.I0(\best_peak_reg_n_0_[4] ),
        .I1(\best_peak_reg_n_0_[5] ),
        .O(pair_lag3_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry_i_6
       (.I0(\best_peak_reg_n_0_[2] ),
        .I1(\best_peak_reg_n_0_[3] ),
        .O(pair_lag3_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pair_lag3_carry_i_7
       (.I0(\best_peak_reg_n_0_[0] ),
        .I1(\best_peak_reg_n_0_[1] ),
        .O(pair_lag3_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[0]_i_1 
       (.I0(\best_lag_reg_n_0_[0] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[10]_i_1 
       (.I0(\best_lag_reg_n_0_[10] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[15]_i_1 
       (.I0(\best_lag_reg_n_0_[15] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[1]_i_1 
       (.I0(\best_lag_reg_n_0_[1] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[2]_i_1 
       (.I0(\best_lag_reg_n_0_[2] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[3]_i_1 
       (.I0(\best_lag_reg_n_0_[3] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[4]_i_1 
       (.I0(\best_lag_reg_n_0_[4] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[5]_i_1 
       (.I0(\best_lag_reg_n_0_[5] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[6]_i_1 
       (.I0(\best_lag_reg_n_0_[6] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[7]_i_1 
       (.I0(\best_lag_reg_n_0_[7] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[8]_i_1 
       (.I0(\best_lag_reg_n_0_[8] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pair_lag[9]_i_1 
       (.I0(\best_lag_reg_n_0_[9] ),
        .I1(pair_lag36_in),
        .I2(pair_tlast_error_reg_n_0),
        .O(\pair_lag[9]_i_1_n_0 ));
  FDCE \pair_lag_reg[0] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[0]_i_1_n_0 ),
        .Q(pair_lag[0]));
  FDCE \pair_lag_reg[10] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[10]_i_1_n_0 ),
        .Q(pair_lag[10]));
  FDCE \pair_lag_reg[15] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[15]_i_1_n_0 ),
        .Q(pair_lag[11]));
  FDCE \pair_lag_reg[1] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[1]_i_1_n_0 ),
        .Q(pair_lag[1]));
  FDCE \pair_lag_reg[2] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[2]_i_1_n_0 ),
        .Q(pair_lag[2]));
  FDCE \pair_lag_reg[3] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[3]_i_1_n_0 ),
        .Q(pair_lag[3]));
  FDCE \pair_lag_reg[4] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[4]_i_1_n_0 ),
        .Q(pair_lag[4]));
  FDCE \pair_lag_reg[5] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[5]_i_1_n_0 ),
        .Q(pair_lag[5]));
  FDCE \pair_lag_reg[6] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[6]_i_1_n_0 ),
        .Q(pair_lag[6]));
  FDCE \pair_lag_reg[7] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[7]_i_1_n_0 ),
        .Q(pair_lag[7]));
  FDCE \pair_lag_reg[8] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[8]_i_1_n_0 ),
        .Q(pair_lag[8]));
  FDCE \pair_lag_reg[9] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\pair_lag[9]_i_1_n_0 ),
        .Q(pair_lag[9]));
  FDCE \pair_peak_reg[0] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[0] ),
        .Q(pair_peak[0]));
  FDCE \pair_peak_reg[10] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[10] ),
        .Q(pair_peak[10]));
  FDCE \pair_peak_reg[11] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[11] ),
        .Q(pair_peak[11]));
  FDCE \pair_peak_reg[12] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[12] ),
        .Q(pair_peak[12]));
  FDCE \pair_peak_reg[13] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[13] ),
        .Q(pair_peak[13]));
  FDCE \pair_peak_reg[14] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[14] ),
        .Q(pair_peak[14]));
  FDCE \pair_peak_reg[15] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[15] ),
        .Q(pair_peak[15]));
  FDCE \pair_peak_reg[16] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[16] ),
        .Q(pair_peak[16]));
  FDCE \pair_peak_reg[17] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[17] ),
        .Q(pair_peak[17]));
  FDCE \pair_peak_reg[18] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[18] ),
        .Q(pair_peak[18]));
  FDCE \pair_peak_reg[19] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[19] ),
        .Q(pair_peak[19]));
  FDCE \pair_peak_reg[1] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[1] ),
        .Q(pair_peak[1]));
  FDCE \pair_peak_reg[20] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[20] ),
        .Q(pair_peak[20]));
  FDCE \pair_peak_reg[21] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[21] ),
        .Q(pair_peak[21]));
  FDCE \pair_peak_reg[22] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[22] ),
        .Q(pair_peak[22]));
  FDCE \pair_peak_reg[23] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[23] ),
        .Q(pair_peak[23]));
  FDCE \pair_peak_reg[2] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[2] ),
        .Q(pair_peak[2]));
  FDCE \pair_peak_reg[3] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[3] ),
        .Q(pair_peak[3]));
  FDCE \pair_peak_reg[4] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[4] ),
        .Q(pair_peak[4]));
  FDCE \pair_peak_reg[5] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[5] ),
        .Q(pair_peak[5]));
  FDCE \pair_peak_reg[6] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[6] ),
        .Q(pair_peak[6]));
  FDCE \pair_peak_reg[7] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[7] ),
        .Q(pair_peak[7]));
  FDCE \pair_peak_reg[8] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[8] ),
        .Q(pair_peak[8]));
  FDCE \pair_peak_reg[9] 
       (.C(clk),
        .CE(\pair_index[2]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\best_peak_reg_n_0_[9] ),
        .Q(pair_peak[9]));
  LUT5 #(
    .INIT(32'h55551400)) 
    pair_tlast_error_i_1
       (.I0(mic_a),
        .I1(m_axis_data_tlast),
        .I2(\rx_index[11]_i_3_n_0 ),
        .I3(rx_finished_i_2_n_0),
        .I4(pair_tlast_error_reg_n_0),
        .O(pair_tlast_error_i_1_n_0));
  FDCE pair_tlast_error_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(pair_tlast_error_i_1_n_0),
        .Q(pair_tlast_error_reg_n_0));
  LUT4 #(
    .INIT(16'h0F08)) 
    receiving_i_1
       (.I0(s_axis_config_tvalid_reg_0),
        .I1(s_axis_config_tready),
        .I2(receiving_i_2_n_0),
        .I3(receiving_reg_n_0),
        .O(receiving_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    receiving_i_2
       (.I0(mic_a),
        .I1(\rx_index[11]_i_3_n_0 ),
        .I2(m_axis_data_tvalid),
        .I3(rst),
        .I4(busy_reg_0),
        .I5(receiving_reg_n_0),
        .O(receiving_i_2_n_0));
  FDCE receiving_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(receiving_i_1_n_0),
        .Q(receiving_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    rx_finished_i_1
       (.I0(rx_finished_i_2_n_0),
        .I1(mic_a),
        .I2(receiving_i_2_n_0),
        .I3(rx_finished_reg_n_0),
        .O(rx_finished_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    rx_finished_i_2
       (.I0(m_axis_data_tvalid),
        .I1(rst),
        .I2(busy_reg_0),
        .I3(receiving_reg_n_0),
        .O(rx_finished_i_2_n_0));
  FDCE rx_finished_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(rx_finished_i_1_n_0),
        .Q(rx_finished_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT5 #(
    .INIT(32'h55555455)) 
    \rx_index[0]_i_1 
       (.I0(\rx_index_reg_n_0_[0] ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\rx_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[10]_i_1 
       (.I0(in11[10]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[10]));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \rx_index[11]_i_1 
       (.I0(mic_a),
        .I1(\rx_index[11]_i_3_n_0 ),
        .I2(m_axis_data_tvalid),
        .I3(rst),
        .I4(busy_reg_0),
        .I5(receiving_reg_n_0),
        .O(\rx_index[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[11]_i_2 
       (.I0(in11[11]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[11]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \rx_index[11]_i_3 
       (.I0(\rx_index_reg_n_0_[8] ),
        .I1(\rx_index_reg_n_0_[9] ),
        .I2(\rx_index_reg_n_0_[0] ),
        .I3(\rx_index_reg_n_0_[1] ),
        .I4(\rx_index[11]_i_5_n_0 ),
        .I5(\rx_index[11]_i_6_n_0 ),
        .O(\rx_index[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_index[11]_i_5 
       (.I0(\rx_index_reg_n_0_[3] ),
        .I1(\rx_index_reg_n_0_[2] ),
        .I2(\rx_index_reg_n_0_[10] ),
        .I3(\rx_index_reg_n_0_[11] ),
        .O(\rx_index[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_index[11]_i_6 
       (.I0(\rx_index_reg_n_0_[5] ),
        .I1(\rx_index_reg_n_0_[4] ),
        .I2(\rx_index_reg_n_0_[7] ),
        .I3(\rx_index_reg_n_0_[6] ),
        .O(\rx_index[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[1]_i_1 
       (.I0(in11[1]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[2]_i_1 
       (.I0(in11[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[3]_i_1 
       (.I0(in11[3]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[4]_i_1 
       (.I0(in11[4]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[5]_i_1 
       (.I0(in11[5]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[6]_i_1 
       (.I0(in11[6]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[7]_i_1 
       (.I0(in11[7]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[8]_i_1 
       (.I0(in11[8]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \rx_index[9]_i_1 
       (.I0(in11[9]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(rx_index[9]));
  FDCE \rx_index_reg[0] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(\rx_index[0]_i_1_n_0 ),
        .Q(\rx_index_reg_n_0_[0] ));
  FDCE \rx_index_reg[10] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[10]),
        .Q(\rx_index_reg_n_0_[10] ));
  FDCE \rx_index_reg[11] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[11]),
        .Q(\rx_index_reg_n_0_[11] ));
  CARRY4 \rx_index_reg[11]_i_4 
       (.CI(\rx_index_reg[8]_i_2_n_0 ),
        .CO({\NLW_rx_index_reg[11]_i_4_CO_UNCONNECTED [3:2],\rx_index_reg[11]_i_4_n_2 ,\rx_index_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rx_index_reg[11]_i_4_O_UNCONNECTED [3],in11[11:9]}),
        .S({1'b0,\rx_index_reg_n_0_[11] ,\rx_index_reg_n_0_[10] ,\rx_index_reg_n_0_[9] }));
  FDCE \rx_index_reg[1] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[1]),
        .Q(\rx_index_reg_n_0_[1] ));
  FDCE \rx_index_reg[2] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[2]),
        .Q(\rx_index_reg_n_0_[2] ));
  FDCE \rx_index_reg[3] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[3]),
        .Q(\rx_index_reg_n_0_[3] ));
  FDCE \rx_index_reg[4] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[4]),
        .Q(\rx_index_reg_n_0_[4] ));
  CARRY4 \rx_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\rx_index_reg[4]_i_2_n_0 ,\rx_index_reg[4]_i_2_n_1 ,\rx_index_reg[4]_i_2_n_2 ,\rx_index_reg[4]_i_2_n_3 }),
        .CYINIT(\rx_index_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[4:1]),
        .S({\rx_index_reg_n_0_[4] ,\rx_index_reg_n_0_[3] ,\rx_index_reg_n_0_[2] ,\rx_index_reg_n_0_[1] }));
  FDCE \rx_index_reg[5] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[5]),
        .Q(\rx_index_reg_n_0_[5] ));
  FDCE \rx_index_reg[6] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[6]),
        .Q(\rx_index_reg_n_0_[6] ));
  FDCE \rx_index_reg[7] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[7]),
        .Q(\rx_index_reg_n_0_[7] ));
  FDCE \rx_index_reg[8] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[8]),
        .Q(\rx_index_reg_n_0_[8] ));
  CARRY4 \rx_index_reg[8]_i_2 
       (.CI(\rx_index_reg[4]_i_2_n_0 ),
        .CO({\rx_index_reg[8]_i_2_n_0 ,\rx_index_reg[8]_i_2_n_1 ,\rx_index_reg[8]_i_2_n_2 ,\rx_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:5]),
        .S({\rx_index_reg_n_0_[8] ,\rx_index_reg_n_0_[7] ,\rx_index_reg_n_0_[6] ,\rx_index_reg_n_0_[5] }));
  FDCE \rx_index_reg[9] 
       (.C(clk),
        .CE(\rx_index[11]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(rx_index[9]),
        .Q(\rx_index_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFEFF0010FFFF0010)) 
    s_axis_config_tvalid_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axis_config_tvalid_reg_0),
        .I5(s_axis_config_tready),
        .O(s_axis_config_tvalid_i_1_n_0));
  FDCE s_axis_config_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(s_axis_config_tvalid_i_1_n_0),
        .Q(s_axis_config_tvalid_reg_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \s_axis_data_tdata[47]_i_10 
       (.I0(spectrum_addrb0_in[1]),
        .I1(spectrum_addrb0_in[6]),
        .I2(spectrum_addrb0_in[4]),
        .I3(\s_axis_data_tdata[47]_i_16_n_0 ),
        .I4(\s_axis_data_tdata[47]_i_17_n_0 ),
        .I5(spectrum_addrb0_in[11]),
        .O(\s_axis_data_tdata[47]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h101010101010101F)) 
    \s_axis_data_tdata[47]_i_12 
       (.I0(spectrum_addrb0_in[6]),
        .I1(\s_axis_data_tdata[47]_i_23_n_0 ),
        .I2(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I3(folded_bin0[6]),
        .I4(folded_bin0[8]),
        .I5(folded_bin0[7]),
        .O(\s_axis_data_tdata[47]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \s_axis_data_tdata[47]_i_14 
       (.I0(spectrum_addrb0_in[11]),
        .I1(\s_axis_data_tdata[47]_i_17_n_0 ),
        .I2(\s_axis_data_tdata[47]_i_16_n_0 ),
        .I3(spectrum_addrb0_in[4]),
        .I4(spectrum_addrb0_in[6]),
        .I5(spectrum_addrb0_in[1]),
        .O(\s_axis_data_tdata[47]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axis_data_tdata[47]_i_16 
       (.I0(spectrum_addrb0_in[8]),
        .I1(spectrum_addrb0_in[7]),
        .I2(spectrum_addrb0_in[10]),
        .I3(spectrum_addrb0_in[0]),
        .O(\s_axis_data_tdata[47]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axis_data_tdata[47]_i_17 
       (.I0(spectrum_addrb0_in[5]),
        .I1(spectrum_addrb0_in[2]),
        .I2(spectrum_addrb0_in[9]),
        .I3(spectrum_addrb0_in[3]),
        .O(\s_axis_data_tdata[47]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_18 
       (.I0(spectrum_addrb0_in[0]),
        .O(\s_axis_data_tdata[47]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_19 
       (.I0(spectrum_addrb0_in[4]),
        .O(\s_axis_data_tdata[47]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_20 
       (.I0(spectrum_addrb0_in[3]),
        .O(\s_axis_data_tdata[47]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_21 
       (.I0(spectrum_addrb0_in[2]),
        .O(\s_axis_data_tdata[47]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_22 
       (.I0(spectrum_addrb0_in[1]),
        .O(\s_axis_data_tdata[47]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axis_data_tdata[47]_i_23 
       (.I0(spectrum_addrb0_in[7]),
        .I1(spectrum_addrb0_in[8]),
        .O(\s_axis_data_tdata[47]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_24 
       (.I0(spectrum_addrb0_in[11]),
        .O(\s_axis_data_tdata[47]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_25 
       (.I0(spectrum_addrb0_in[10]),
        .O(\s_axis_data_tdata[47]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_26 
       (.I0(spectrum_addrb0_in[9]),
        .O(\s_axis_data_tdata[47]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_27 
       (.I0(spectrum_addrb0_in[8]),
        .O(\s_axis_data_tdata[47]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_28 
       (.I0(spectrum_addrb0_in[7]),
        .O(\s_axis_data_tdata[47]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_29 
       (.I0(spectrum_addrb0_in[6]),
        .O(\s_axis_data_tdata[47]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCECECECEFCFCCCFC)) 
    \s_axis_data_tdata[47]_i_3 
       (.I0(\s_axis_data_tdata[47]_i_4_n_0 ),
        .I1(\s_axis_data_tdata[47]_i_5_n_0 ),
        .I2(\s_axis_data_tdata[47]_i_6_n_0 ),
        .I3(\s_axis_data_tdata[47]_i_7_n_0 ),
        .I4(\s_axis_data_tdata[47]_i_8_n_0 ),
        .I5(\s_axis_data_tdata[47]_i_9_n_0 ),
        .O(\s_axis_data_tdata[47]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axis_data_tdata[47]_i_30 
       (.I0(spectrum_addrb0_in[5]),
        .O(\s_axis_data_tdata[47]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFFFFFFFFF)) 
    \s_axis_data_tdata[47]_i_4 
       (.I0(spectrum_addrb0_in[1]),
        .I1(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I2(folded_bin0[1]),
        .I3(\s_axis_data_tdata[47]_i_7_n_0 ),
        .I4(\s_axis_data_tdata[47]_i_12_n_0 ),
        .I5(\s_axis_data_tdata[47]_i_8_n_0 ),
        .O(\s_axis_data_tdata[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA8FCFCFCFC)) 
    \s_axis_data_tdata[47]_i_5 
       (.I0(folded_bin0[11]),
        .I1(spectrum_addrb0_in[11]),
        .I2(spectrum_addrb0_in[10]),
        .I3(folded_bin0[10]),
        .I4(folded_bin0[12]),
        .I5(\s_axis_data_tdata[47]_i_14_n_0 ),
        .O(\s_axis_data_tdata[47]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \s_axis_data_tdata[47]_i_6 
       (.I0(\s_axis_data_tdata[47]_i_12_n_0 ),
        .I1(folded_bin0[5]),
        .I2(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I3(spectrum_addrb0_in[5]),
        .O(\s_axis_data_tdata[47]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \s_axis_data_tdata[47]_i_7 
       (.I0(spectrum_addrb0_in[2]),
        .I1(spectrum_addrb0_in[3]),
        .I2(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I3(folded_bin0[2]),
        .I4(folded_bin0[3]),
        .O(\s_axis_data_tdata[47]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \s_axis_data_tdata[47]_i_8 
       (.I0(spectrum_addrb0_in[4]),
        .I1(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I2(folded_bin0[4]),
        .O(\s_axis_data_tdata[47]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axis_data_tdata[47]_i_9 
       (.I0(spectrum_addrb0_in[9]),
        .I1(\s_axis_data_tdata[47]_i_10_n_0 ),
        .I2(folded_bin0[9]),
        .O(\s_axis_data_tdata[47]_i_9_n_0 ));
  FDCE \s_axis_data_tdata_reg[0] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[0]),
        .Q(s_axis_data_tdata[0]));
  FDCE \s_axis_data_tdata_reg[10] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[10]),
        .Q(s_axis_data_tdata[10]));
  FDCE \s_axis_data_tdata_reg[11] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[11]),
        .Q(s_axis_data_tdata[11]));
  FDCE \s_axis_data_tdata_reg[12] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[12]),
        .Q(s_axis_data_tdata[12]));
  FDCE \s_axis_data_tdata_reg[13] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[13]),
        .Q(s_axis_data_tdata[13]));
  FDCE \s_axis_data_tdata_reg[14] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[14]),
        .Q(s_axis_data_tdata[14]));
  FDCE \s_axis_data_tdata_reg[15] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[15]),
        .Q(s_axis_data_tdata[15]));
  FDCE \s_axis_data_tdata_reg[16] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[16]),
        .Q(s_axis_data_tdata[16]));
  FDCE \s_axis_data_tdata_reg[17] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[17]),
        .Q(s_axis_data_tdata[17]));
  FDCE \s_axis_data_tdata_reg[18] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[18]),
        .Q(s_axis_data_tdata[18]));
  FDCE \s_axis_data_tdata_reg[19] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[19]),
        .Q(s_axis_data_tdata[19]));
  FDCE \s_axis_data_tdata_reg[1] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[1]),
        .Q(s_axis_data_tdata[1]));
  FDCE \s_axis_data_tdata_reg[20] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[20]),
        .Q(s_axis_data_tdata[20]));
  FDCE \s_axis_data_tdata_reg[21] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[21]),
        .Q(s_axis_data_tdata[21]));
  FDCE \s_axis_data_tdata_reg[22] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[22]),
        .Q(s_axis_data_tdata[22]));
  FDCE \s_axis_data_tdata_reg[23] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[23]),
        .Q(s_axis_data_tdata[23]));
  FDCE \s_axis_data_tdata_reg[24] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[24]),
        .Q(s_axis_data_tdata[24]));
  FDCE \s_axis_data_tdata_reg[25] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[25]),
        .Q(s_axis_data_tdata[25]));
  FDCE \s_axis_data_tdata_reg[26] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[26]),
        .Q(s_axis_data_tdata[26]));
  FDCE \s_axis_data_tdata_reg[27] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[27]),
        .Q(s_axis_data_tdata[27]));
  FDCE \s_axis_data_tdata_reg[28] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[28]),
        .Q(s_axis_data_tdata[28]));
  FDCE \s_axis_data_tdata_reg[29] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[29]),
        .Q(s_axis_data_tdata[29]));
  FDCE \s_axis_data_tdata_reg[2] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[2]),
        .Q(s_axis_data_tdata[2]));
  FDCE \s_axis_data_tdata_reg[30] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[30]),
        .Q(s_axis_data_tdata[30]));
  FDCE \s_axis_data_tdata_reg[31] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[31]),
        .Q(s_axis_data_tdata[31]));
  FDCE \s_axis_data_tdata_reg[32] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[32]),
        .Q(s_axis_data_tdata[32]));
  FDCE \s_axis_data_tdata_reg[33] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[33]),
        .Q(s_axis_data_tdata[33]));
  FDCE \s_axis_data_tdata_reg[34] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[34]),
        .Q(s_axis_data_tdata[34]));
  FDCE \s_axis_data_tdata_reg[35] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[35]),
        .Q(s_axis_data_tdata[35]));
  FDCE \s_axis_data_tdata_reg[36] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[36]),
        .Q(s_axis_data_tdata[36]));
  FDCE \s_axis_data_tdata_reg[37] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[37]),
        .Q(s_axis_data_tdata[37]));
  FDCE \s_axis_data_tdata_reg[38] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[38]),
        .Q(s_axis_data_tdata[38]));
  FDCE \s_axis_data_tdata_reg[39] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[39]),
        .Q(s_axis_data_tdata[39]));
  FDCE \s_axis_data_tdata_reg[3] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[3]),
        .Q(s_axis_data_tdata[3]));
  FDCE \s_axis_data_tdata_reg[40] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[40]),
        .Q(s_axis_data_tdata[40]));
  FDCE \s_axis_data_tdata_reg[41] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[41]),
        .Q(s_axis_data_tdata[41]));
  FDCE \s_axis_data_tdata_reg[42] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[42]),
        .Q(s_axis_data_tdata[42]));
  FDCE \s_axis_data_tdata_reg[43] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[43]),
        .Q(s_axis_data_tdata[43]));
  FDCE \s_axis_data_tdata_reg[44] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[44]),
        .Q(s_axis_data_tdata[44]));
  FDCE \s_axis_data_tdata_reg[45] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[45]),
        .Q(s_axis_data_tdata[45]));
  FDCE \s_axis_data_tdata_reg[46] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[46]),
        .Q(s_axis_data_tdata[46]));
  FDCE \s_axis_data_tdata_reg[47] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[47]),
        .Q(s_axis_data_tdata[47]));
  CARRY4 \s_axis_data_tdata_reg[47]_i_11 
       (.CI(1'b0),
        .CO({\s_axis_data_tdata_reg[47]_i_11_n_0 ,\s_axis_data_tdata_reg[47]_i_11_n_1 ,\s_axis_data_tdata_reg[47]_i_11_n_2 ,\s_axis_data_tdata_reg[47]_i_11_n_3 }),
        .CYINIT(\s_axis_data_tdata[47]_i_18_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(folded_bin0[4:1]),
        .S({\s_axis_data_tdata[47]_i_19_n_0 ,\s_axis_data_tdata[47]_i_20_n_0 ,\s_axis_data_tdata[47]_i_21_n_0 ,\s_axis_data_tdata[47]_i_22_n_0 }));
  CARRY4 \s_axis_data_tdata_reg[47]_i_13 
       (.CI(\s_axis_data_tdata_reg[47]_i_15_n_0 ),
        .CO({folded_bin0[12],\NLW_s_axis_data_tdata_reg[47]_i_13_CO_UNCONNECTED [2],\s_axis_data_tdata_reg[47]_i_13_n_2 ,\s_axis_data_tdata_reg[47]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_axis_data_tdata_reg[47]_i_13_O_UNCONNECTED [3],folded_bin0[11:9]}),
        .S({1'b1,\s_axis_data_tdata[47]_i_24_n_0 ,\s_axis_data_tdata[47]_i_25_n_0 ,\s_axis_data_tdata[47]_i_26_n_0 }));
  CARRY4 \s_axis_data_tdata_reg[47]_i_15 
       (.CI(\s_axis_data_tdata_reg[47]_i_11_n_0 ),
        .CO({\s_axis_data_tdata_reg[47]_i_15_n_0 ,\s_axis_data_tdata_reg[47]_i_15_n_1 ,\s_axis_data_tdata_reg[47]_i_15_n_2 ,\s_axis_data_tdata_reg[47]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(folded_bin0[8:5]),
        .S({\s_axis_data_tdata[47]_i_27_n_0 ,\s_axis_data_tdata[47]_i_28_n_0 ,\s_axis_data_tdata[47]_i_29_n_0 ,\s_axis_data_tdata[47]_i_30_n_0 }));
  FDCE \s_axis_data_tdata_reg[4] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[4]),
        .Q(s_axis_data_tdata[4]));
  FDCE \s_axis_data_tdata_reg[5] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[5]),
        .Q(s_axis_data_tdata[5]));
  FDCE \s_axis_data_tdata_reg[6] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[6]),
        .Q(s_axis_data_tdata[6]));
  FDCE \s_axis_data_tdata_reg[7] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[7]),
        .Q(s_axis_data_tdata[7]));
  FDCE \s_axis_data_tdata_reg[8] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[8]),
        .Q(s_axis_data_tdata[8]));
  FDCE \s_axis_data_tdata_reg[9] 
       (.C(clk),
        .CE(weight_n_10),
        .CLR(weight_n_0),
        .D(s_axis_data_tdata0_in[9]),
        .Q(s_axis_data_tdata[9]));
  FDCE s_axis_data_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(weight_n_8),
        .Q(s_axis_data_tlast));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    s_axis_data_tvalid_i_4
       (.I0(s_axis_data_tvalid_reg_0),
        .I1(s_axis_data_tready),
        .I2(state[2]),
        .I3(state[0]),
        .O(s_axis_data_tvalid_i_4_n_0));
  FDCE s_axis_data_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(weight_n_7),
        .Q(s_axis_data_tvalid_reg_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \search_limit[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[3]),
        .O(mic_a));
  LUT2 #(
    .INIT(4'h2)) 
    \search_limit[2]_i_2 
       (.I0(\work_pair_reg_n_0_[1] ),
        .I1(\work_pair_reg_n_0_[2] ),
        .O(\search_limit[2]_i_2_n_0 ));
  FDCE \search_limit_reg[2] 
       (.C(clk),
        .CE(mic_a),
        .CLR(weight_n_0),
        .D(\search_limit[2]_i_2_n_0 ),
        .Q(search_limit));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \spectrum_addrb[12]_i_1 
       (.I0(\mic_a_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(\mic_b_reg_n_0_[0] ),
        .O(spectrum_addrb0_in[12]));
  LUT4 #(
    .INIT(16'h2002)) 
    \spectrum_addrb[13]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\spectrum_addrb[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \spectrum_addrb[13]_i_2 
       (.I0(\mic_a_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(\mic_b_reg_n_0_[1] ),
        .O(spectrum_addrb0_in[13]));
  FDCE \spectrum_addrb_reg[0] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[0]),
        .Q(spectrum_addrb[0]));
  FDCE \spectrum_addrb_reg[10] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[10]),
        .Q(spectrum_addrb[10]));
  FDCE \spectrum_addrb_reg[11] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[11]),
        .Q(spectrum_addrb[11]));
  FDCE \spectrum_addrb_reg[12] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[12]),
        .Q(spectrum_addrb[12]));
  FDCE \spectrum_addrb_reg[13] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[13]),
        .Q(spectrum_addrb[13]));
  FDCE \spectrum_addrb_reg[1] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[1]),
        .Q(spectrum_addrb[1]));
  FDCE \spectrum_addrb_reg[2] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[2]),
        .Q(spectrum_addrb[2]));
  FDCE \spectrum_addrb_reg[3] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[3]),
        .Q(spectrum_addrb[3]));
  FDCE \spectrum_addrb_reg[4] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[4]),
        .Q(spectrum_addrb[4]));
  FDCE \spectrum_addrb_reg[5] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[5]),
        .Q(spectrum_addrb[5]));
  FDCE \spectrum_addrb_reg[6] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[6]),
        .Q(spectrum_addrb[6]));
  FDCE \spectrum_addrb_reg[7] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[7]),
        .Q(spectrum_addrb[7]));
  FDCE \spectrum_addrb_reg[8] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[8]),
        .Q(spectrum_addrb[8]));
  FDCE \spectrum_addrb_reg[9] 
       (.C(clk),
        .CE(\spectrum_addrb[13]_i_1_n_0 ),
        .CLR(weight_n_0),
        .D(spectrum_addrb0_in[9]),
        .Q(spectrum_addrb[9]));
  LUT5 #(
    .INIT(32'hFDBD0090)) 
    spectrum_enb_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(spectrum_enb),
        .O(spectrum_enb_i_1_n_0));
  FDCE spectrum_enb_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(spectrum_enb_i_1_n_0),
        .Q(spectrum_enb));
  FDCE start_d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(start),
        .Q(start_d));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'hFF6F0140)) 
    \wait_count[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[0]_i_1_n_0 ));
  FDCE \wait_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[0] ));
  core_PHAT_IFFT_Ctrl_0_0_PHAT_Weight weight
       (.CO(CO),
        .D(s_axis_data_tdata0_in),
        .E(weight_n_9),
        .\FSM_sequential_state_reg[0] (state),
        .\FSM_sequential_state_reg[0]_0 (\wait_count_reg_n_0_[0] ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state[3]_i_5_n_0 ),
        .\FSM_sequential_state_reg[1] (weight_n_7),
        .\FSM_sequential_state_reg[1]_0 (weight_n_8),
        .\FSM_sequential_state_reg[3]_i_3 (s_axis_config_tvalid_reg_0),
        .Q({\bin_a_reg_n_0_[47] ,\bin_a_reg_n_0_[46] ,\bin_a_reg_n_0_[45] ,\bin_a_reg_n_0_[44] ,\bin_a_reg_n_0_[43] ,\bin_a_reg_n_0_[42] ,\bin_a_reg_n_0_[41] ,\bin_a_reg_n_0_[40] ,\bin_a_reg_n_0_[39] ,\bin_a_reg_n_0_[38] ,\bin_a_reg_n_0_[37] ,\bin_a_reg_n_0_[36] ,\bin_a_reg_n_0_[35] ,\bin_a_reg_n_0_[34] ,\bin_a_reg_n_0_[33] ,\bin_a_reg_n_0_[32] ,\bin_a_reg_n_0_[31] ,\bin_a_reg_n_0_[30] ,\bin_a_reg_n_0_[29] ,\bin_a_reg_n_0_[28] ,\bin_a_reg_n_0_[27] ,\bin_a_reg_n_0_[26] ,\bin_a_reg_n_0_[25] ,\bin_a_reg_n_0_[24] ,\bin_a_reg_n_0_[23] ,\bin_a_reg_n_0_[22] ,\bin_a_reg_n_0_[21] ,\bin_a_reg_n_0_[20] ,\bin_a_reg_n_0_[19] ,\bin_a_reg_n_0_[18] ,\bin_a_reg_n_0_[17] ,\bin_a_reg_n_0_[16] ,\bin_a_reg_n_0_[15] ,\bin_a_reg_n_0_[14] ,\bin_a_reg_n_0_[13] ,\bin_a_reg_n_0_[12] ,\bin_a_reg_n_0_[11] ,\bin_a_reg_n_0_[10] ,\bin_a_reg_n_0_[9] ,\bin_a_reg_n_0_[8] ,\bin_a_reg_n_0_[7] ,\bin_a_reg_n_0_[6] ,\bin_a_reg_n_0_[5] ,\bin_a_reg_n_0_[4] ,\bin_a_reg_n_0_[3] ,\bin_a_reg_n_0_[2] ,\bin_a_reg_n_0_[1] ,\bin_a_reg_n_0_[0] }),
        .S(S),
        .\bin_index_reg[2] (weight_n_12),
        .\bin_index_reg[4] (weight_n_11),
        .clk(clk),
        .\div_rem_im_reg[48] (\div_rem_im_reg[48] ),
        .ii0({\bin_b_reg_n_0_[47] ,\bin_b_reg_n_0_[46] ,\bin_b_reg_n_0_[45] ,\bin_b_reg_n_0_[44] ,\bin_b_reg_n_0_[43] ,\bin_b_reg_n_0_[42] ,\bin_b_reg_n_0_[41] ,\bin_b_reg_n_0_[40] ,\bin_b_reg_n_0_[39] ,\bin_b_reg_n_0_[38] ,\bin_b_reg_n_0_[37] ,\bin_b_reg_n_0_[36] ,\bin_b_reg_n_0_[35] ,\bin_b_reg_n_0_[34] ,\bin_b_reg_n_0_[33] ,\bin_b_reg_n_0_[32] ,\bin_b_reg_n_0_[31] ,\bin_b_reg_n_0_[30] ,\bin_b_reg_n_0_[29] ,\bin_b_reg_n_0_[28] ,\bin_b_reg_n_0_[27] ,\bin_b_reg_n_0_[26] ,\bin_b_reg_n_0_[25] ,\bin_b_reg_n_0_[24] ,\bin_b_reg_n_0_[23] ,\bin_b_reg_n_0_[22] ,\bin_b_reg_n_0_[21] ,\bin_b_reg_n_0_[20] ,\bin_b_reg_n_0_[19] ,\bin_b_reg_n_0_[18] ,\bin_b_reg_n_0_[17] ,\bin_b_reg_n_0_[16] ,\bin_b_reg_n_0_[15] ,\bin_b_reg_n_0_[14] ,\bin_b_reg_n_0_[13] ,\bin_b_reg_n_0_[12] ,\bin_b_reg_n_0_[11] ,\bin_b_reg_n_0_[10] ,\bin_b_reg_n_0_[9] ,\bin_b_reg_n_0_[8] ,\bin_b_reg_n_0_[7] ,\bin_b_reg_n_0_[6] ,\bin_b_reg_n_0_[5] ,\bin_b_reg_n_0_[4] ,\bin_b_reg_n_0_[3] ,\bin_b_reg_n_0_[2] ,\bin_b_reg_n_0_[1] ,\bin_b_reg_n_0_[0] }),
        .last_latched_i_2_0(spectrum_addrb0_in[11:0]),
        .m_axis_tvalid_reg_0(weight_n_10),
        .\out_im_reg[4] (\out_im_reg[4] ),
        .\out_re_reg[4] (\out_re_reg[4] ),
        .rst(rst),
        .rst_0(weight_n_0),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_data_tlast(s_axis_data_tlast),
        .s_axis_data_tlast_reg(s_axis_data_tvalid_i_4_n_0),
        .s_axis_data_tvalid_reg(\s_axis_data_tdata[47]_i_3_n_0 ),
        .s_axis_data_tvalid_reg_0(s_axis_data_tvalid_reg_0),
        .square_im__1(square_im__1),
        .square_re__1(square_re__1));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \work_pair[0]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(\work_pair[2]_i_2_n_0 ),
        .I3(\work_pair_reg_n_0_[0] ),
        .O(\work_pair[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT5 #(
    .INIT(32'h02FF2000)) 
    \work_pair[1]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\work_pair_reg_n_0_[0] ),
        .I3(\work_pair[2]_i_2_n_0 ),
        .I4(\work_pair_reg_n_0_[1] ),
        .O(\work_pair[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444FFFF40000000)) 
    \work_pair[2]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(\work_pair_reg_n_0_[0] ),
        .I3(\work_pair_reg_n_0_[1] ),
        .I4(\work_pair[2]_i_2_n_0 ),
        .I5(\work_pair_reg_n_0_[2] ),
        .O(\work_pair[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040004011510040)) 
    \work_pair[2]_i_2 
       (.I0(busy_i_4_n_0),
        .I1(state[3]),
        .I2(rx_finished_reg_n_0),
        .I3(\mic_a[1]_i_1_n_0 ),
        .I4(start),
        .I5(start_d),
        .O(\work_pair[2]_i_2_n_0 ));
  FDCE \work_pair_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\work_pair[0]_i_1_n_0 ),
        .Q(\work_pair_reg_n_0_[0] ));
  FDCE \work_pair_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\work_pair[1]_i_1_n_0 ),
        .Q(\work_pair_reg_n_0_[1] ));
  FDCE \work_pair_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(weight_n_0),
        .D(\work_pair[2]_i_1_n_0 ),
        .Q(\work_pair_reg_n_0_[2] ));
endmodule

(* ORIG_REF_NAME = "PHAT_Norm_Core" *) 
module core_PHAT_IFFT_Ctrl_0_0_PHAT_Norm_Core
   (rst_0,
    CO,
    \div_rem_im_reg[48]_0 ,
    square_im__1_0,
    square_re__1_0,
    last_latched_reg,
    calculating_reg,
    calculating_reg_0,
    E,
    done_reg_0,
    D,
    Q,
    ii0_0,
    clk,
    S,
    \out_re_reg[4]_0 ,
    \out_im_reg[4]_0 ,
    last_latched_reg_0,
    last_latched,
    calculating_reg_1,
    weight_out_valid,
    \FSM_sequential_state_reg[0] ,
    m_axis_tvalid_reg,
    rst,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[3]_i_3_0 ,
    s_axis_config_tready);
  output rst_0;
  output [0:0]CO;
  output [0:0]\div_rem_im_reg[48]_0 ;
  output [1:0]square_im__1_0;
  output [1:0]square_re__1_0;
  output last_latched_reg;
  output calculating_reg;
  output calculating_reg_0;
  output [0:0]E;
  output [0:0]done_reg_0;
  output [47:0]D;
  input [47:0]Q;
  input [47:0]ii0_0;
  input clk;
  input [1:0]S;
  input \out_re_reg[4]_0 ;
  input \out_im_reg[4]_0 ;
  input last_latched_reg_0;
  input last_latched;
  input calculating_reg_1;
  input weight_out_valid;
  input [3:0]\FSM_sequential_state_reg[0] ;
  input m_axis_tvalid_reg;
  input rst;
  input \FSM_sequential_state_reg[0]_0 ;
  input \FSM_sequential_state_reg[0]_1 ;
  input \FSM_sequential_state_reg[3]_i_3_0 ;
  input s_axis_config_tready;

  wire CEP;
  wire [0:0]CO;
  wire [47:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[3]_i_3_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire [47:0]Q;
  wire [1:0]S;
  wire abs_im;
  wire \abs_im[11]_i_2_n_0 ;
  wire \abs_im[11]_i_3_n_0 ;
  wire \abs_im[11]_i_4_n_0 ;
  wire \abs_im[11]_i_5_n_0 ;
  wire \abs_im[15]_i_2_n_0 ;
  wire \abs_im[15]_i_3_n_0 ;
  wire \abs_im[15]_i_4_n_0 ;
  wire \abs_im[15]_i_5_n_0 ;
  wire \abs_im[19]_i_2_n_0 ;
  wire \abs_im[19]_i_3_n_0 ;
  wire \abs_im[19]_i_4_n_0 ;
  wire \abs_im[19]_i_5_n_0 ;
  wire \abs_im[23]_i_2_n_0 ;
  wire \abs_im[23]_i_3_n_0 ;
  wire \abs_im[23]_i_4_n_0 ;
  wire \abs_im[23]_i_5_n_0 ;
  wire \abs_im[27]_i_2_n_0 ;
  wire \abs_im[27]_i_3_n_0 ;
  wire \abs_im[27]_i_4_n_0 ;
  wire \abs_im[27]_i_5_n_0 ;
  wire \abs_im[31]_i_2_n_0 ;
  wire \abs_im[31]_i_3_n_0 ;
  wire \abs_im[31]_i_4_n_0 ;
  wire \abs_im[31]_i_5_n_0 ;
  wire \abs_im[35]_i_2_n_0 ;
  wire \abs_im[35]_i_3_n_0 ;
  wire \abs_im[35]_i_4_n_0 ;
  wire \abs_im[35]_i_5_n_0 ;
  wire \abs_im[39]_i_2_n_0 ;
  wire \abs_im[39]_i_3_n_0 ;
  wire \abs_im[39]_i_4_n_0 ;
  wire \abs_im[39]_i_5_n_0 ;
  wire \abs_im[3]_i_2_n_0 ;
  wire \abs_im[3]_i_3_n_0 ;
  wire \abs_im[3]_i_4_n_0 ;
  wire \abs_im[3]_i_5_n_0 ;
  wire \abs_im[43]_i_2_n_0 ;
  wire \abs_im[43]_i_3_n_0 ;
  wire \abs_im[43]_i_4_n_0 ;
  wire \abs_im[43]_i_5_n_0 ;
  wire \abs_im[47]_i_2_n_0 ;
  wire \abs_im[47]_i_3_n_0 ;
  wire \abs_im[47]_i_4_n_0 ;
  wire \abs_im[47]_i_5_n_0 ;
  wire \abs_im[7]_i_2_n_0 ;
  wire \abs_im[7]_i_3_n_0 ;
  wire \abs_im[7]_i_4_n_0 ;
  wire \abs_im[7]_i_5_n_0 ;
  wire \abs_im_reg[11]_i_1_n_0 ;
  wire \abs_im_reg[11]_i_1_n_1 ;
  wire \abs_im_reg[11]_i_1_n_2 ;
  wire \abs_im_reg[11]_i_1_n_3 ;
  wire \abs_im_reg[11]_i_1_n_4 ;
  wire \abs_im_reg[11]_i_1_n_5 ;
  wire \abs_im_reg[11]_i_1_n_6 ;
  wire \abs_im_reg[11]_i_1_n_7 ;
  wire \abs_im_reg[15]_i_1_n_0 ;
  wire \abs_im_reg[15]_i_1_n_1 ;
  wire \abs_im_reg[15]_i_1_n_2 ;
  wire \abs_im_reg[15]_i_1_n_3 ;
  wire \abs_im_reg[15]_i_1_n_4 ;
  wire \abs_im_reg[15]_i_1_n_5 ;
  wire \abs_im_reg[15]_i_1_n_6 ;
  wire \abs_im_reg[15]_i_1_n_7 ;
  wire \abs_im_reg[19]_i_1_n_0 ;
  wire \abs_im_reg[19]_i_1_n_1 ;
  wire \abs_im_reg[19]_i_1_n_2 ;
  wire \abs_im_reg[19]_i_1_n_3 ;
  wire \abs_im_reg[19]_i_1_n_4 ;
  wire \abs_im_reg[19]_i_1_n_5 ;
  wire \abs_im_reg[19]_i_1_n_6 ;
  wire \abs_im_reg[19]_i_1_n_7 ;
  wire \abs_im_reg[23]_i_1_n_0 ;
  wire \abs_im_reg[23]_i_1_n_1 ;
  wire \abs_im_reg[23]_i_1_n_2 ;
  wire \abs_im_reg[23]_i_1_n_3 ;
  wire \abs_im_reg[23]_i_1_n_4 ;
  wire \abs_im_reg[23]_i_1_n_5 ;
  wire \abs_im_reg[23]_i_1_n_6 ;
  wire \abs_im_reg[23]_i_1_n_7 ;
  wire \abs_im_reg[27]_i_1_n_0 ;
  wire \abs_im_reg[27]_i_1_n_1 ;
  wire \abs_im_reg[27]_i_1_n_2 ;
  wire \abs_im_reg[27]_i_1_n_3 ;
  wire \abs_im_reg[27]_i_1_n_4 ;
  wire \abs_im_reg[27]_i_1_n_5 ;
  wire \abs_im_reg[27]_i_1_n_6 ;
  wire \abs_im_reg[27]_i_1_n_7 ;
  wire \abs_im_reg[31]_i_1_n_0 ;
  wire \abs_im_reg[31]_i_1_n_1 ;
  wire \abs_im_reg[31]_i_1_n_2 ;
  wire \abs_im_reg[31]_i_1_n_3 ;
  wire \abs_im_reg[31]_i_1_n_4 ;
  wire \abs_im_reg[31]_i_1_n_5 ;
  wire \abs_im_reg[31]_i_1_n_6 ;
  wire \abs_im_reg[31]_i_1_n_7 ;
  wire \abs_im_reg[35]_i_1_n_0 ;
  wire \abs_im_reg[35]_i_1_n_1 ;
  wire \abs_im_reg[35]_i_1_n_2 ;
  wire \abs_im_reg[35]_i_1_n_3 ;
  wire \abs_im_reg[35]_i_1_n_4 ;
  wire \abs_im_reg[35]_i_1_n_5 ;
  wire \abs_im_reg[35]_i_1_n_6 ;
  wire \abs_im_reg[35]_i_1_n_7 ;
  wire \abs_im_reg[39]_i_1_n_0 ;
  wire \abs_im_reg[39]_i_1_n_1 ;
  wire \abs_im_reg[39]_i_1_n_2 ;
  wire \abs_im_reg[39]_i_1_n_3 ;
  wire \abs_im_reg[39]_i_1_n_4 ;
  wire \abs_im_reg[39]_i_1_n_5 ;
  wire \abs_im_reg[39]_i_1_n_6 ;
  wire \abs_im_reg[39]_i_1_n_7 ;
  wire \abs_im_reg[3]_i_1_n_0 ;
  wire \abs_im_reg[3]_i_1_n_1 ;
  wire \abs_im_reg[3]_i_1_n_2 ;
  wire \abs_im_reg[3]_i_1_n_3 ;
  wire \abs_im_reg[3]_i_1_n_4 ;
  wire \abs_im_reg[3]_i_1_n_5 ;
  wire \abs_im_reg[3]_i_1_n_6 ;
  wire \abs_im_reg[3]_i_1_n_7 ;
  wire \abs_im_reg[43]_i_1_n_0 ;
  wire \abs_im_reg[43]_i_1_n_1 ;
  wire \abs_im_reg[43]_i_1_n_2 ;
  wire \abs_im_reg[43]_i_1_n_3 ;
  wire \abs_im_reg[43]_i_1_n_4 ;
  wire \abs_im_reg[43]_i_1_n_5 ;
  wire \abs_im_reg[43]_i_1_n_6 ;
  wire \abs_im_reg[43]_i_1_n_7 ;
  wire \abs_im_reg[47]_i_1_n_0 ;
  wire \abs_im_reg[47]_i_1_n_1 ;
  wire \abs_im_reg[47]_i_1_n_2 ;
  wire \abs_im_reg[47]_i_1_n_3 ;
  wire \abs_im_reg[47]_i_1_n_4 ;
  wire \abs_im_reg[47]_i_1_n_5 ;
  wire \abs_im_reg[47]_i_1_n_6 ;
  wire \abs_im_reg[47]_i_1_n_7 ;
  wire \abs_im_reg[48]_i_1_n_3 ;
  wire \abs_im_reg[7]_i_1_n_0 ;
  wire \abs_im_reg[7]_i_1_n_1 ;
  wire \abs_im_reg[7]_i_1_n_2 ;
  wire \abs_im_reg[7]_i_1_n_3 ;
  wire \abs_im_reg[7]_i_1_n_4 ;
  wire \abs_im_reg[7]_i_1_n_5 ;
  wire \abs_im_reg[7]_i_1_n_6 ;
  wire \abs_im_reg[7]_i_1_n_7 ;
  wire \abs_im_reg_n_0_[0] ;
  wire \abs_im_reg_n_0_[10] ;
  wire \abs_im_reg_n_0_[11] ;
  wire \abs_im_reg_n_0_[12] ;
  wire \abs_im_reg_n_0_[13] ;
  wire \abs_im_reg_n_0_[14] ;
  wire \abs_im_reg_n_0_[15] ;
  wire \abs_im_reg_n_0_[16] ;
  wire \abs_im_reg_n_0_[17] ;
  wire \abs_im_reg_n_0_[18] ;
  wire \abs_im_reg_n_0_[19] ;
  wire \abs_im_reg_n_0_[1] ;
  wire \abs_im_reg_n_0_[20] ;
  wire \abs_im_reg_n_0_[21] ;
  wire \abs_im_reg_n_0_[22] ;
  wire \abs_im_reg_n_0_[23] ;
  wire \abs_im_reg_n_0_[24] ;
  wire \abs_im_reg_n_0_[25] ;
  wire \abs_im_reg_n_0_[26] ;
  wire \abs_im_reg_n_0_[27] ;
  wire \abs_im_reg_n_0_[28] ;
  wire \abs_im_reg_n_0_[29] ;
  wire \abs_im_reg_n_0_[2] ;
  wire \abs_im_reg_n_0_[30] ;
  wire \abs_im_reg_n_0_[31] ;
  wire \abs_im_reg_n_0_[32] ;
  wire \abs_im_reg_n_0_[33] ;
  wire \abs_im_reg_n_0_[34] ;
  wire \abs_im_reg_n_0_[35] ;
  wire \abs_im_reg_n_0_[36] ;
  wire \abs_im_reg_n_0_[37] ;
  wire \abs_im_reg_n_0_[38] ;
  wire \abs_im_reg_n_0_[39] ;
  wire \abs_im_reg_n_0_[3] ;
  wire \abs_im_reg_n_0_[40] ;
  wire \abs_im_reg_n_0_[41] ;
  wire \abs_im_reg_n_0_[42] ;
  wire \abs_im_reg_n_0_[43] ;
  wire \abs_im_reg_n_0_[44] ;
  wire \abs_im_reg_n_0_[45] ;
  wire \abs_im_reg_n_0_[46] ;
  wire \abs_im_reg_n_0_[47] ;
  wire \abs_im_reg_n_0_[48] ;
  wire \abs_im_reg_n_0_[4] ;
  wire \abs_im_reg_n_0_[5] ;
  wire \abs_im_reg_n_0_[6] ;
  wire \abs_im_reg_n_0_[7] ;
  wire \abs_im_reg_n_0_[8] ;
  wire \abs_im_reg_n_0_[9] ;
  wire [48:0]abs_re;
  wire \abs_re[11]_i_2_n_0 ;
  wire \abs_re[11]_i_3_n_0 ;
  wire \abs_re[11]_i_4_n_0 ;
  wire \abs_re[11]_i_5_n_0 ;
  wire \abs_re[15]_i_2_n_0 ;
  wire \abs_re[15]_i_3_n_0 ;
  wire \abs_re[15]_i_4_n_0 ;
  wire \abs_re[15]_i_5_n_0 ;
  wire \abs_re[19]_i_2_n_0 ;
  wire \abs_re[19]_i_3_n_0 ;
  wire \abs_re[19]_i_4_n_0 ;
  wire \abs_re[19]_i_5_n_0 ;
  wire \abs_re[23]_i_2_n_0 ;
  wire \abs_re[23]_i_3_n_0 ;
  wire \abs_re[23]_i_4_n_0 ;
  wire \abs_re[23]_i_5_n_0 ;
  wire \abs_re[27]_i_2_n_0 ;
  wire \abs_re[27]_i_3_n_0 ;
  wire \abs_re[27]_i_4_n_0 ;
  wire \abs_re[27]_i_5_n_0 ;
  wire \abs_re[31]_i_2_n_0 ;
  wire \abs_re[31]_i_3_n_0 ;
  wire \abs_re[31]_i_4_n_0 ;
  wire \abs_re[31]_i_5_n_0 ;
  wire \abs_re[35]_i_2_n_0 ;
  wire \abs_re[35]_i_3_n_0 ;
  wire \abs_re[35]_i_4_n_0 ;
  wire \abs_re[35]_i_5_n_0 ;
  wire \abs_re[39]_i_2_n_0 ;
  wire \abs_re[39]_i_3_n_0 ;
  wire \abs_re[39]_i_4_n_0 ;
  wire \abs_re[39]_i_5_n_0 ;
  wire \abs_re[3]_i_2_n_0 ;
  wire \abs_re[3]_i_3_n_0 ;
  wire \abs_re[3]_i_4_n_0 ;
  wire \abs_re[3]_i_5_n_0 ;
  wire \abs_re[43]_i_2_n_0 ;
  wire \abs_re[43]_i_3_n_0 ;
  wire \abs_re[43]_i_4_n_0 ;
  wire \abs_re[43]_i_5_n_0 ;
  wire \abs_re[47]_i_2_n_0 ;
  wire \abs_re[47]_i_3_n_0 ;
  wire \abs_re[47]_i_4_n_0 ;
  wire \abs_re[47]_i_5_n_0 ;
  wire \abs_re[7]_i_2_n_0 ;
  wire \abs_re[7]_i_3_n_0 ;
  wire \abs_re[7]_i_4_n_0 ;
  wire \abs_re[7]_i_5_n_0 ;
  wire \abs_re_reg[11]_i_1_n_0 ;
  wire \abs_re_reg[11]_i_1_n_1 ;
  wire \abs_re_reg[11]_i_1_n_2 ;
  wire \abs_re_reg[11]_i_1_n_3 ;
  wire \abs_re_reg[11]_i_1_n_4 ;
  wire \abs_re_reg[11]_i_1_n_5 ;
  wire \abs_re_reg[11]_i_1_n_6 ;
  wire \abs_re_reg[11]_i_1_n_7 ;
  wire \abs_re_reg[15]_i_1_n_0 ;
  wire \abs_re_reg[15]_i_1_n_1 ;
  wire \abs_re_reg[15]_i_1_n_2 ;
  wire \abs_re_reg[15]_i_1_n_3 ;
  wire \abs_re_reg[15]_i_1_n_4 ;
  wire \abs_re_reg[15]_i_1_n_5 ;
  wire \abs_re_reg[15]_i_1_n_6 ;
  wire \abs_re_reg[15]_i_1_n_7 ;
  wire \abs_re_reg[19]_i_1_n_0 ;
  wire \abs_re_reg[19]_i_1_n_1 ;
  wire \abs_re_reg[19]_i_1_n_2 ;
  wire \abs_re_reg[19]_i_1_n_3 ;
  wire \abs_re_reg[19]_i_1_n_4 ;
  wire \abs_re_reg[19]_i_1_n_5 ;
  wire \abs_re_reg[19]_i_1_n_6 ;
  wire \abs_re_reg[19]_i_1_n_7 ;
  wire \abs_re_reg[23]_i_1_n_0 ;
  wire \abs_re_reg[23]_i_1_n_1 ;
  wire \abs_re_reg[23]_i_1_n_2 ;
  wire \abs_re_reg[23]_i_1_n_3 ;
  wire \abs_re_reg[23]_i_1_n_4 ;
  wire \abs_re_reg[23]_i_1_n_5 ;
  wire \abs_re_reg[23]_i_1_n_6 ;
  wire \abs_re_reg[23]_i_1_n_7 ;
  wire \abs_re_reg[27]_i_1_n_0 ;
  wire \abs_re_reg[27]_i_1_n_1 ;
  wire \abs_re_reg[27]_i_1_n_2 ;
  wire \abs_re_reg[27]_i_1_n_3 ;
  wire \abs_re_reg[27]_i_1_n_4 ;
  wire \abs_re_reg[27]_i_1_n_5 ;
  wire \abs_re_reg[27]_i_1_n_6 ;
  wire \abs_re_reg[27]_i_1_n_7 ;
  wire \abs_re_reg[31]_i_1_n_0 ;
  wire \abs_re_reg[31]_i_1_n_1 ;
  wire \abs_re_reg[31]_i_1_n_2 ;
  wire \abs_re_reg[31]_i_1_n_3 ;
  wire \abs_re_reg[31]_i_1_n_4 ;
  wire \abs_re_reg[31]_i_1_n_5 ;
  wire \abs_re_reg[31]_i_1_n_6 ;
  wire \abs_re_reg[31]_i_1_n_7 ;
  wire \abs_re_reg[35]_i_1_n_0 ;
  wire \abs_re_reg[35]_i_1_n_1 ;
  wire \abs_re_reg[35]_i_1_n_2 ;
  wire \abs_re_reg[35]_i_1_n_3 ;
  wire \abs_re_reg[35]_i_1_n_4 ;
  wire \abs_re_reg[35]_i_1_n_5 ;
  wire \abs_re_reg[35]_i_1_n_6 ;
  wire \abs_re_reg[35]_i_1_n_7 ;
  wire \abs_re_reg[39]_i_1_n_0 ;
  wire \abs_re_reg[39]_i_1_n_1 ;
  wire \abs_re_reg[39]_i_1_n_2 ;
  wire \abs_re_reg[39]_i_1_n_3 ;
  wire \abs_re_reg[39]_i_1_n_4 ;
  wire \abs_re_reg[39]_i_1_n_5 ;
  wire \abs_re_reg[39]_i_1_n_6 ;
  wire \abs_re_reg[39]_i_1_n_7 ;
  wire \abs_re_reg[3]_i_1_n_0 ;
  wire \abs_re_reg[3]_i_1_n_1 ;
  wire \abs_re_reg[3]_i_1_n_2 ;
  wire \abs_re_reg[3]_i_1_n_3 ;
  wire \abs_re_reg[3]_i_1_n_4 ;
  wire \abs_re_reg[3]_i_1_n_5 ;
  wire \abs_re_reg[3]_i_1_n_6 ;
  wire \abs_re_reg[3]_i_1_n_7 ;
  wire \abs_re_reg[43]_i_1_n_0 ;
  wire \abs_re_reg[43]_i_1_n_1 ;
  wire \abs_re_reg[43]_i_1_n_2 ;
  wire \abs_re_reg[43]_i_1_n_3 ;
  wire \abs_re_reg[43]_i_1_n_4 ;
  wire \abs_re_reg[43]_i_1_n_5 ;
  wire \abs_re_reg[43]_i_1_n_6 ;
  wire \abs_re_reg[43]_i_1_n_7 ;
  wire \abs_re_reg[47]_i_1_n_0 ;
  wire \abs_re_reg[47]_i_1_n_1 ;
  wire \abs_re_reg[47]_i_1_n_2 ;
  wire \abs_re_reg[47]_i_1_n_3 ;
  wire \abs_re_reg[47]_i_1_n_4 ;
  wire \abs_re_reg[47]_i_1_n_5 ;
  wire \abs_re_reg[47]_i_1_n_6 ;
  wire \abs_re_reg[47]_i_1_n_7 ;
  wire \abs_re_reg[48]_i_2_n_3 ;
  wire \abs_re_reg[7]_i_1_n_0 ;
  wire \abs_re_reg[7]_i_1_n_1 ;
  wire \abs_re_reg[7]_i_1_n_2 ;
  wire \abs_re_reg[7]_i_1_n_3 ;
  wire \abs_re_reg[7]_i_1_n_4 ;
  wire \abs_re_reg[7]_i_1_n_5 ;
  wire \abs_re_reg[7]_i_1_n_6 ;
  wire \abs_re_reg[7]_i_1_n_7 ;
  wire calculating;
  wire calculating_reg;
  wire calculating_reg_0;
  wire calculating_reg_1;
  wire clk;
  wire core_done;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire cross_im;
  wire [48:0]cross_im00_out;
  wire \cross_im_reg_n_0_[0] ;
  wire \cross_im_reg_n_0_[10] ;
  wire \cross_im_reg_n_0_[11] ;
  wire \cross_im_reg_n_0_[12] ;
  wire \cross_im_reg_n_0_[13] ;
  wire \cross_im_reg_n_0_[14] ;
  wire \cross_im_reg_n_0_[15] ;
  wire \cross_im_reg_n_0_[16] ;
  wire \cross_im_reg_n_0_[17] ;
  wire \cross_im_reg_n_0_[18] ;
  wire \cross_im_reg_n_0_[19] ;
  wire \cross_im_reg_n_0_[1] ;
  wire \cross_im_reg_n_0_[20] ;
  wire \cross_im_reg_n_0_[21] ;
  wire \cross_im_reg_n_0_[22] ;
  wire \cross_im_reg_n_0_[23] ;
  wire \cross_im_reg_n_0_[24] ;
  wire \cross_im_reg_n_0_[25] ;
  wire \cross_im_reg_n_0_[26] ;
  wire \cross_im_reg_n_0_[27] ;
  wire \cross_im_reg_n_0_[28] ;
  wire \cross_im_reg_n_0_[29] ;
  wire \cross_im_reg_n_0_[2] ;
  wire \cross_im_reg_n_0_[30] ;
  wire \cross_im_reg_n_0_[31] ;
  wire \cross_im_reg_n_0_[32] ;
  wire \cross_im_reg_n_0_[33] ;
  wire \cross_im_reg_n_0_[34] ;
  wire \cross_im_reg_n_0_[35] ;
  wire \cross_im_reg_n_0_[36] ;
  wire \cross_im_reg_n_0_[37] ;
  wire \cross_im_reg_n_0_[38] ;
  wire \cross_im_reg_n_0_[39] ;
  wire \cross_im_reg_n_0_[3] ;
  wire \cross_im_reg_n_0_[40] ;
  wire \cross_im_reg_n_0_[41] ;
  wire \cross_im_reg_n_0_[42] ;
  wire \cross_im_reg_n_0_[43] ;
  wire \cross_im_reg_n_0_[44] ;
  wire \cross_im_reg_n_0_[45] ;
  wire \cross_im_reg_n_0_[46] ;
  wire \cross_im_reg_n_0_[47] ;
  wire \cross_im_reg_n_0_[48] ;
  wire \cross_im_reg_n_0_[4] ;
  wire \cross_im_reg_n_0_[5] ;
  wire \cross_im_reg_n_0_[6] ;
  wire \cross_im_reg_n_0_[7] ;
  wire \cross_im_reg_n_0_[8] ;
  wire \cross_im_reg_n_0_[9] ;
  wire [48:0]cross_re;
  wire [48:0]cross_re0;
  wire \denominator[3]_i_10_n_0 ;
  wire \denominator[3]_i_11_n_0 ;
  wire \denominator[3]_i_12_n_0 ;
  wire \denominator[3]_i_13_n_0 ;
  wire \denominator[3]_i_14_n_0 ;
  wire \denominator[3]_i_15_n_0 ;
  wire \denominator[3]_i_16_n_0 ;
  wire \denominator[3]_i_17_n_0 ;
  wire \denominator[3]_i_18_n_0 ;
  wire \denominator[3]_i_19_n_0 ;
  wire \denominator[3]_i_20_n_0 ;
  wire \denominator[3]_i_21_n_0 ;
  wire \denominator[3]_i_22_n_0 ;
  wire \denominator[3]_i_23_n_0 ;
  wire \denominator[3]_i_24_n_0 ;
  wire \denominator[3]_i_25_n_0 ;
  wire \denominator[3]_i_26_n_0 ;
  wire \denominator[3]_i_27_n_0 ;
  wire \denominator[3]_i_28_n_0 ;
  wire \denominator[3]_i_2_n_0 ;
  wire \denominator[3]_i_30_n_0 ;
  wire \denominator[3]_i_31_n_0 ;
  wire \denominator[3]_i_32_n_0 ;
  wire \denominator[3]_i_33_n_0 ;
  wire \denominator[3]_i_34_n_0 ;
  wire \denominator[3]_i_35_n_0 ;
  wire \denominator[3]_i_36_n_0 ;
  wire \denominator[3]_i_37_n_0 ;
  wire \denominator[3]_i_38_n_0 ;
  wire \denominator[3]_i_39_n_0 ;
  wire \denominator[3]_i_3_n_0 ;
  wire \denominator[3]_i_4_n_0 ;
  wire \denominator[3]_i_5_n_0 ;
  wire \denominator[3]_i_6_n_0 ;
  wire \denominator[3]_i_7_n_0 ;
  wire \denominator[3]_i_8_n_0 ;
  wire \denominator[3]_i_9_n_0 ;
  wire \denominator[48]_i_1_n_0 ;
  wire \denominator[48]_i_3_n_0 ;
  wire \denominator_reg[11]_i_1_n_0 ;
  wire \denominator_reg[11]_i_1_n_1 ;
  wire \denominator_reg[11]_i_1_n_2 ;
  wire \denominator_reg[11]_i_1_n_3 ;
  wire \denominator_reg[15]_i_1_n_0 ;
  wire \denominator_reg[15]_i_1_n_1 ;
  wire \denominator_reg[15]_i_1_n_2 ;
  wire \denominator_reg[15]_i_1_n_3 ;
  wire \denominator_reg[19]_i_1_n_0 ;
  wire \denominator_reg[19]_i_1_n_1 ;
  wire \denominator_reg[19]_i_1_n_2 ;
  wire \denominator_reg[19]_i_1_n_3 ;
  wire \denominator_reg[23]_i_1_n_0 ;
  wire \denominator_reg[23]_i_1_n_1 ;
  wire \denominator_reg[23]_i_1_n_2 ;
  wire \denominator_reg[23]_i_1_n_3 ;
  wire \denominator_reg[27]_i_1_n_0 ;
  wire \denominator_reg[27]_i_1_n_1 ;
  wire \denominator_reg[27]_i_1_n_2 ;
  wire \denominator_reg[27]_i_1_n_3 ;
  wire \denominator_reg[31]_i_1_n_0 ;
  wire \denominator_reg[31]_i_1_n_1 ;
  wire \denominator_reg[31]_i_1_n_2 ;
  wire \denominator_reg[31]_i_1_n_3 ;
  wire \denominator_reg[35]_i_1_n_0 ;
  wire \denominator_reg[35]_i_1_n_1 ;
  wire \denominator_reg[35]_i_1_n_2 ;
  wire \denominator_reg[35]_i_1_n_3 ;
  wire \denominator_reg[39]_i_1_n_0 ;
  wire \denominator_reg[39]_i_1_n_1 ;
  wire \denominator_reg[39]_i_1_n_2 ;
  wire \denominator_reg[39]_i_1_n_3 ;
  wire \denominator_reg[3]_i_1_n_0 ;
  wire \denominator_reg[3]_i_1_n_1 ;
  wire \denominator_reg[3]_i_1_n_2 ;
  wire \denominator_reg[3]_i_1_n_3 ;
  wire \denominator_reg[3]_i_29_n_3 ;
  wire \denominator_reg[43]_i_1_n_0 ;
  wire \denominator_reg[43]_i_1_n_1 ;
  wire \denominator_reg[43]_i_1_n_2 ;
  wire \denominator_reg[43]_i_1_n_3 ;
  wire \denominator_reg[47]_i_1_n_0 ;
  wire \denominator_reg[47]_i_1_n_1 ;
  wire \denominator_reg[47]_i_1_n_2 ;
  wire \denominator_reg[47]_i_1_n_3 ;
  wire \denominator_reg[7]_i_1_n_0 ;
  wire \denominator_reg[7]_i_1_n_1 ;
  wire \denominator_reg[7]_i_1_n_2 ;
  wire \denominator_reg[7]_i_1_n_3 ;
  wire \denominator_reg_n_0_[0] ;
  wire \denominator_reg_n_0_[10] ;
  wire \denominator_reg_n_0_[11] ;
  wire \denominator_reg_n_0_[12] ;
  wire \denominator_reg_n_0_[13] ;
  wire \denominator_reg_n_0_[14] ;
  wire \denominator_reg_n_0_[15] ;
  wire \denominator_reg_n_0_[16] ;
  wire \denominator_reg_n_0_[17] ;
  wire \denominator_reg_n_0_[18] ;
  wire \denominator_reg_n_0_[19] ;
  wire \denominator_reg_n_0_[1] ;
  wire \denominator_reg_n_0_[20] ;
  wire \denominator_reg_n_0_[21] ;
  wire \denominator_reg_n_0_[22] ;
  wire \denominator_reg_n_0_[23] ;
  wire \denominator_reg_n_0_[24] ;
  wire \denominator_reg_n_0_[25] ;
  wire \denominator_reg_n_0_[26] ;
  wire \denominator_reg_n_0_[27] ;
  wire \denominator_reg_n_0_[28] ;
  wire \denominator_reg_n_0_[29] ;
  wire \denominator_reg_n_0_[2] ;
  wire \denominator_reg_n_0_[30] ;
  wire \denominator_reg_n_0_[31] ;
  wire \denominator_reg_n_0_[32] ;
  wire \denominator_reg_n_0_[33] ;
  wire \denominator_reg_n_0_[34] ;
  wire \denominator_reg_n_0_[35] ;
  wire \denominator_reg_n_0_[36] ;
  wire \denominator_reg_n_0_[37] ;
  wire \denominator_reg_n_0_[38] ;
  wire \denominator_reg_n_0_[39] ;
  wire \denominator_reg_n_0_[3] ;
  wire \denominator_reg_n_0_[40] ;
  wire \denominator_reg_n_0_[41] ;
  wire \denominator_reg_n_0_[42] ;
  wire \denominator_reg_n_0_[43] ;
  wire \denominator_reg_n_0_[44] ;
  wire \denominator_reg_n_0_[45] ;
  wire \denominator_reg_n_0_[46] ;
  wire \denominator_reg_n_0_[47] ;
  wire \denominator_reg_n_0_[48] ;
  wire \denominator_reg_n_0_[4] ;
  wire \denominator_reg_n_0_[5] ;
  wire \denominator_reg_n_0_[6] ;
  wire \denominator_reg_n_0_[7] ;
  wire \denominator_reg_n_0_[8] ;
  wire \denominator_reg_n_0_[9] ;
  wire [48:0]div_rem_im;
  wire [48:1]div_rem_im1;
  wire [48:0]div_rem_im10_in;
  wire \div_rem_im[0]_i_10_n_0 ;
  wire \div_rem_im[0]_i_12_n_0 ;
  wire \div_rem_im[0]_i_13_n_0 ;
  wire \div_rem_im[0]_i_14_n_0 ;
  wire \div_rem_im[0]_i_15_n_0 ;
  wire \div_rem_im[0]_i_16_n_0 ;
  wire \div_rem_im[0]_i_17_n_0 ;
  wire \div_rem_im[0]_i_18_n_0 ;
  wire \div_rem_im[0]_i_19_n_0 ;
  wire \div_rem_im[0]_i_1_n_0 ;
  wire \div_rem_im[0]_i_21_n_0 ;
  wire \div_rem_im[0]_i_22_n_0 ;
  wire \div_rem_im[0]_i_23_n_0 ;
  wire \div_rem_im[0]_i_24_n_0 ;
  wire \div_rem_im[0]_i_25_n_0 ;
  wire \div_rem_im[0]_i_26_n_0 ;
  wire \div_rem_im[0]_i_27_n_0 ;
  wire \div_rem_im[0]_i_28_n_0 ;
  wire \div_rem_im[0]_i_30_n_0 ;
  wire \div_rem_im[0]_i_31_n_0 ;
  wire \div_rem_im[0]_i_32_n_0 ;
  wire \div_rem_im[0]_i_33_n_0 ;
  wire \div_rem_im[0]_i_34_n_0 ;
  wire \div_rem_im[0]_i_35_n_0 ;
  wire \div_rem_im[0]_i_36_n_0 ;
  wire \div_rem_im[0]_i_37_n_0 ;
  wire \div_rem_im[0]_i_39_n_0 ;
  wire \div_rem_im[0]_i_40_n_0 ;
  wire \div_rem_im[0]_i_41_n_0 ;
  wire \div_rem_im[0]_i_42_n_0 ;
  wire \div_rem_im[0]_i_43_n_0 ;
  wire \div_rem_im[0]_i_44_n_0 ;
  wire \div_rem_im[0]_i_45_n_0 ;
  wire \div_rem_im[0]_i_46_n_0 ;
  wire \div_rem_im[0]_i_48_n_0 ;
  wire \div_rem_im[0]_i_49_n_0 ;
  wire \div_rem_im[0]_i_4_n_0 ;
  wire \div_rem_im[0]_i_50_n_0 ;
  wire \div_rem_im[0]_i_51_n_0 ;
  wire \div_rem_im[0]_i_52_n_0 ;
  wire \div_rem_im[0]_i_53_n_0 ;
  wire \div_rem_im[0]_i_54_n_0 ;
  wire \div_rem_im[0]_i_55_n_0 ;
  wire \div_rem_im[0]_i_56_n_0 ;
  wire \div_rem_im[0]_i_57_n_0 ;
  wire \div_rem_im[0]_i_58_n_0 ;
  wire \div_rem_im[0]_i_59_n_0 ;
  wire \div_rem_im[0]_i_5_n_0 ;
  wire \div_rem_im[0]_i_60_n_0 ;
  wire \div_rem_im[0]_i_61_n_0 ;
  wire \div_rem_im[0]_i_62_n_0 ;
  wire \div_rem_im[0]_i_63_n_0 ;
  wire \div_rem_im[0]_i_6_n_0 ;
  wire \div_rem_im[0]_i_7_n_0 ;
  wire \div_rem_im[0]_i_9_n_0 ;
  wire \div_rem_im[10]_i_1_n_0 ;
  wire \div_rem_im[10]_i_2_n_0 ;
  wire \div_rem_im[11]_i_10_n_0 ;
  wire \div_rem_im[11]_i_11_n_0 ;
  wire \div_rem_im[11]_i_12_n_0 ;
  wire \div_rem_im[11]_i_1_n_0 ;
  wire \div_rem_im[11]_i_3_n_0 ;
  wire \div_rem_im[11]_i_4_n_0 ;
  wire \div_rem_im[11]_i_5_n_0 ;
  wire \div_rem_im[11]_i_6_n_0 ;
  wire \div_rem_im[11]_i_7_n_0 ;
  wire \div_rem_im[11]_i_9_n_0 ;
  wire \div_rem_im[12]_i_1_n_0 ;
  wire \div_rem_im[12]_i_2_n_0 ;
  wire \div_rem_im[13]_i_1_n_0 ;
  wire \div_rem_im[13]_i_2_n_0 ;
  wire \div_rem_im[14]_i_1_n_0 ;
  wire \div_rem_im[14]_i_2_n_0 ;
  wire \div_rem_im[15]_i_10_n_0 ;
  wire \div_rem_im[15]_i_11_n_0 ;
  wire \div_rem_im[15]_i_12_n_0 ;
  wire \div_rem_im[15]_i_1_n_0 ;
  wire \div_rem_im[15]_i_3_n_0 ;
  wire \div_rem_im[15]_i_4_n_0 ;
  wire \div_rem_im[15]_i_5_n_0 ;
  wire \div_rem_im[15]_i_6_n_0 ;
  wire \div_rem_im[15]_i_7_n_0 ;
  wire \div_rem_im[15]_i_9_n_0 ;
  wire \div_rem_im[16]_i_1_n_0 ;
  wire \div_rem_im[16]_i_2_n_0 ;
  wire \div_rem_im[17]_i_1_n_0 ;
  wire \div_rem_im[17]_i_2_n_0 ;
  wire \div_rem_im[18]_i_1_n_0 ;
  wire \div_rem_im[18]_i_2_n_0 ;
  wire \div_rem_im[19]_i_10_n_0 ;
  wire \div_rem_im[19]_i_11_n_0 ;
  wire \div_rem_im[19]_i_12_n_0 ;
  wire \div_rem_im[19]_i_1_n_0 ;
  wire \div_rem_im[19]_i_3_n_0 ;
  wire \div_rem_im[19]_i_4_n_0 ;
  wire \div_rem_im[19]_i_5_n_0 ;
  wire \div_rem_im[19]_i_6_n_0 ;
  wire \div_rem_im[19]_i_7_n_0 ;
  wire \div_rem_im[19]_i_9_n_0 ;
  wire \div_rem_im[1]_i_1_n_0 ;
  wire \div_rem_im[1]_i_2_n_0 ;
  wire \div_rem_im[20]_i_1_n_0 ;
  wire \div_rem_im[20]_i_2_n_0 ;
  wire \div_rem_im[21]_i_1_n_0 ;
  wire \div_rem_im[21]_i_2_n_0 ;
  wire \div_rem_im[22]_i_1_n_0 ;
  wire \div_rem_im[22]_i_2_n_0 ;
  wire \div_rem_im[23]_i_10_n_0 ;
  wire \div_rem_im[23]_i_11_n_0 ;
  wire \div_rem_im[23]_i_12_n_0 ;
  wire \div_rem_im[23]_i_1_n_0 ;
  wire \div_rem_im[23]_i_3_n_0 ;
  wire \div_rem_im[23]_i_4_n_0 ;
  wire \div_rem_im[23]_i_5_n_0 ;
  wire \div_rem_im[23]_i_6_n_0 ;
  wire \div_rem_im[23]_i_7_n_0 ;
  wire \div_rem_im[23]_i_9_n_0 ;
  wire \div_rem_im[24]_i_1_n_0 ;
  wire \div_rem_im[24]_i_2_n_0 ;
  wire \div_rem_im[25]_i_1_n_0 ;
  wire \div_rem_im[25]_i_2_n_0 ;
  wire \div_rem_im[26]_i_1_n_0 ;
  wire \div_rem_im[26]_i_2_n_0 ;
  wire \div_rem_im[27]_i_10_n_0 ;
  wire \div_rem_im[27]_i_11_n_0 ;
  wire \div_rem_im[27]_i_12_n_0 ;
  wire \div_rem_im[27]_i_1_n_0 ;
  wire \div_rem_im[27]_i_3_n_0 ;
  wire \div_rem_im[27]_i_4_n_0 ;
  wire \div_rem_im[27]_i_5_n_0 ;
  wire \div_rem_im[27]_i_6_n_0 ;
  wire \div_rem_im[27]_i_7_n_0 ;
  wire \div_rem_im[27]_i_9_n_0 ;
  wire \div_rem_im[28]_i_1_n_0 ;
  wire \div_rem_im[28]_i_2_n_0 ;
  wire \div_rem_im[29]_i_1_n_0 ;
  wire \div_rem_im[29]_i_2_n_0 ;
  wire \div_rem_im[2]_i_1_n_0 ;
  wire \div_rem_im[2]_i_2_n_0 ;
  wire \div_rem_im[30]_i_1_n_0 ;
  wire \div_rem_im[30]_i_2_n_0 ;
  wire \div_rem_im[31]_i_10_n_0 ;
  wire \div_rem_im[31]_i_11_n_0 ;
  wire \div_rem_im[31]_i_12_n_0 ;
  wire \div_rem_im[31]_i_1_n_0 ;
  wire \div_rem_im[31]_i_3_n_0 ;
  wire \div_rem_im[31]_i_4_n_0 ;
  wire \div_rem_im[31]_i_5_n_0 ;
  wire \div_rem_im[31]_i_6_n_0 ;
  wire \div_rem_im[31]_i_7_n_0 ;
  wire \div_rem_im[31]_i_9_n_0 ;
  wire \div_rem_im[32]_i_1_n_0 ;
  wire \div_rem_im[32]_i_2_n_0 ;
  wire \div_rem_im[33]_i_1_n_0 ;
  wire \div_rem_im[33]_i_2_n_0 ;
  wire \div_rem_im[34]_i_1_n_0 ;
  wire \div_rem_im[34]_i_2_n_0 ;
  wire \div_rem_im[35]_i_10_n_0 ;
  wire \div_rem_im[35]_i_11_n_0 ;
  wire \div_rem_im[35]_i_12_n_0 ;
  wire \div_rem_im[35]_i_1_n_0 ;
  wire \div_rem_im[35]_i_3_n_0 ;
  wire \div_rem_im[35]_i_4_n_0 ;
  wire \div_rem_im[35]_i_5_n_0 ;
  wire \div_rem_im[35]_i_6_n_0 ;
  wire \div_rem_im[35]_i_7_n_0 ;
  wire \div_rem_im[35]_i_9_n_0 ;
  wire \div_rem_im[36]_i_1_n_0 ;
  wire \div_rem_im[36]_i_2_n_0 ;
  wire \div_rem_im[37]_i_1_n_0 ;
  wire \div_rem_im[37]_i_2_n_0 ;
  wire \div_rem_im[38]_i_1_n_0 ;
  wire \div_rem_im[38]_i_2_n_0 ;
  wire \div_rem_im[39]_i_10_n_0 ;
  wire \div_rem_im[39]_i_11_n_0 ;
  wire \div_rem_im[39]_i_12_n_0 ;
  wire \div_rem_im[39]_i_1_n_0 ;
  wire \div_rem_im[39]_i_3_n_0 ;
  wire \div_rem_im[39]_i_4_n_0 ;
  wire \div_rem_im[39]_i_5_n_0 ;
  wire \div_rem_im[39]_i_6_n_0 ;
  wire \div_rem_im[39]_i_7_n_0 ;
  wire \div_rem_im[39]_i_9_n_0 ;
  wire \div_rem_im[3]_i_1_n_0 ;
  wire \div_rem_im[3]_i_3_n_0 ;
  wire \div_rem_im[3]_i_4_n_0 ;
  wire \div_rem_im[3]_i_5_n_0 ;
  wire \div_rem_im[3]_i_6_n_0 ;
  wire \div_rem_im[3]_i_7_n_0 ;
  wire \div_rem_im[40]_i_1_n_0 ;
  wire \div_rem_im[40]_i_2_n_0 ;
  wire \div_rem_im[41]_i_1_n_0 ;
  wire \div_rem_im[41]_i_2_n_0 ;
  wire \div_rem_im[42]_i_1_n_0 ;
  wire \div_rem_im[42]_i_2_n_0 ;
  wire \div_rem_im[43]_i_10_n_0 ;
  wire \div_rem_im[43]_i_11_n_0 ;
  wire \div_rem_im[43]_i_12_n_0 ;
  wire \div_rem_im[43]_i_1_n_0 ;
  wire \div_rem_im[43]_i_3_n_0 ;
  wire \div_rem_im[43]_i_4_n_0 ;
  wire \div_rem_im[43]_i_5_n_0 ;
  wire \div_rem_im[43]_i_6_n_0 ;
  wire \div_rem_im[43]_i_7_n_0 ;
  wire \div_rem_im[43]_i_9_n_0 ;
  wire \div_rem_im[44]_i_1_n_0 ;
  wire \div_rem_im[44]_i_2_n_0 ;
  wire \div_rem_im[45]_i_1_n_0 ;
  wire \div_rem_im[45]_i_2_n_0 ;
  wire \div_rem_im[46]_i_1_n_0 ;
  wire \div_rem_im[46]_i_2_n_0 ;
  wire \div_rem_im[47]_i_10_n_0 ;
  wire \div_rem_im[47]_i_11_n_0 ;
  wire \div_rem_im[47]_i_12_n_0 ;
  wire \div_rem_im[47]_i_1_n_0 ;
  wire \div_rem_im[47]_i_3_n_0 ;
  wire \div_rem_im[47]_i_4_n_0 ;
  wire \div_rem_im[47]_i_5_n_0 ;
  wire \div_rem_im[47]_i_6_n_0 ;
  wire \div_rem_im[47]_i_7_n_0 ;
  wire \div_rem_im[47]_i_9_n_0 ;
  wire \div_rem_im[48]_i_11_n_0 ;
  wire \div_rem_im[48]_i_12_n_0 ;
  wire \div_rem_im[48]_i_13_n_0 ;
  wire \div_rem_im[48]_i_14_n_0 ;
  wire \div_rem_im[48]_i_15_n_0 ;
  wire \div_rem_im[48]_i_16_n_0 ;
  wire \div_rem_im[48]_i_17_n_0 ;
  wire \div_rem_im[48]_i_18_n_0 ;
  wire \div_rem_im[48]_i_19_n_0 ;
  wire \div_rem_im[48]_i_1_n_0 ;
  wire \div_rem_im[48]_i_21_n_0 ;
  wire \div_rem_im[48]_i_22_n_0 ;
  wire \div_rem_im[48]_i_23_n_0 ;
  wire \div_rem_im[48]_i_24_n_0 ;
  wire \div_rem_im[48]_i_25_n_0 ;
  wire \div_rem_im[48]_i_26_n_0 ;
  wire \div_rem_im[48]_i_27_n_0 ;
  wire \div_rem_im[48]_i_28_n_0 ;
  wire \div_rem_im[48]_i_30_n_0 ;
  wire \div_rem_im[48]_i_31_n_0 ;
  wire \div_rem_im[48]_i_32_n_0 ;
  wire \div_rem_im[48]_i_33_n_0 ;
  wire \div_rem_im[48]_i_34_n_0 ;
  wire \div_rem_im[48]_i_35_n_0 ;
  wire \div_rem_im[48]_i_36_n_0 ;
  wire \div_rem_im[48]_i_37_n_0 ;
  wire \div_rem_im[48]_i_39_n_0 ;
  wire \div_rem_im[48]_i_40_n_0 ;
  wire \div_rem_im[48]_i_41_n_0 ;
  wire \div_rem_im[48]_i_42_n_0 ;
  wire \div_rem_im[48]_i_43_n_0 ;
  wire \div_rem_im[48]_i_44_n_0 ;
  wire \div_rem_im[48]_i_45_n_0 ;
  wire \div_rem_im[48]_i_46_n_0 ;
  wire \div_rem_im[48]_i_48_n_0 ;
  wire \div_rem_im[48]_i_49_n_0 ;
  wire \div_rem_im[48]_i_4_n_0 ;
  wire \div_rem_im[48]_i_50_n_0 ;
  wire \div_rem_im[48]_i_51_n_0 ;
  wire \div_rem_im[48]_i_52_n_0 ;
  wire \div_rem_im[48]_i_53_n_0 ;
  wire \div_rem_im[48]_i_54_n_0 ;
  wire \div_rem_im[48]_i_55_n_0 ;
  wire \div_rem_im[48]_i_56_n_0 ;
  wire \div_rem_im[48]_i_57_n_0 ;
  wire \div_rem_im[48]_i_58_n_0 ;
  wire \div_rem_im[48]_i_59_n_0 ;
  wire \div_rem_im[48]_i_5_n_0 ;
  wire \div_rem_im[48]_i_60_n_0 ;
  wire \div_rem_im[48]_i_61_n_0 ;
  wire \div_rem_im[48]_i_62_n_0 ;
  wire \div_rem_im[48]_i_63_n_0 ;
  wire \div_rem_im[48]_i_7_n_0 ;
  wire \div_rem_im[48]_i_8_n_0 ;
  wire \div_rem_im[4]_i_1_n_0 ;
  wire \div_rem_im[4]_i_2_n_0 ;
  wire \div_rem_im[5]_i_1_n_0 ;
  wire \div_rem_im[5]_i_2_n_0 ;
  wire \div_rem_im[6]_i_1_n_0 ;
  wire \div_rem_im[6]_i_2_n_0 ;
  wire \div_rem_im[7]_i_10_n_0 ;
  wire \div_rem_im[7]_i_11_n_0 ;
  wire \div_rem_im[7]_i_12_n_0 ;
  wire \div_rem_im[7]_i_1_n_0 ;
  wire \div_rem_im[7]_i_3_n_0 ;
  wire \div_rem_im[7]_i_4_n_0 ;
  wire \div_rem_im[7]_i_5_n_0 ;
  wire \div_rem_im[7]_i_6_n_0 ;
  wire \div_rem_im[7]_i_7_n_0 ;
  wire \div_rem_im[7]_i_9_n_0 ;
  wire \div_rem_im[8]_i_1_n_0 ;
  wire \div_rem_im[8]_i_2_n_0 ;
  wire \div_rem_im[9]_i_1_n_0 ;
  wire \div_rem_im[9]_i_2_n_0 ;
  wire \div_rem_im_reg[0]_i_11_n_0 ;
  wire \div_rem_im_reg[0]_i_11_n_1 ;
  wire \div_rem_im_reg[0]_i_11_n_2 ;
  wire \div_rem_im_reg[0]_i_11_n_3 ;
  wire \div_rem_im_reg[0]_i_20_n_0 ;
  wire \div_rem_im_reg[0]_i_20_n_1 ;
  wire \div_rem_im_reg[0]_i_20_n_2 ;
  wire \div_rem_im_reg[0]_i_20_n_3 ;
  wire \div_rem_im_reg[0]_i_29_n_0 ;
  wire \div_rem_im_reg[0]_i_29_n_1 ;
  wire \div_rem_im_reg[0]_i_29_n_2 ;
  wire \div_rem_im_reg[0]_i_29_n_3 ;
  wire \div_rem_im_reg[0]_i_2_n_0 ;
  wire \div_rem_im_reg[0]_i_2_n_1 ;
  wire \div_rem_im_reg[0]_i_2_n_2 ;
  wire \div_rem_im_reg[0]_i_2_n_3 ;
  wire \div_rem_im_reg[0]_i_38_n_0 ;
  wire \div_rem_im_reg[0]_i_38_n_1 ;
  wire \div_rem_im_reg[0]_i_38_n_2 ;
  wire \div_rem_im_reg[0]_i_38_n_3 ;
  wire \div_rem_im_reg[0]_i_3_n_3 ;
  wire \div_rem_im_reg[0]_i_47_n_0 ;
  wire \div_rem_im_reg[0]_i_47_n_1 ;
  wire \div_rem_im_reg[0]_i_47_n_2 ;
  wire \div_rem_im_reg[0]_i_47_n_3 ;
  wire \div_rem_im_reg[0]_i_8_n_0 ;
  wire \div_rem_im_reg[0]_i_8_n_1 ;
  wire \div_rem_im_reg[0]_i_8_n_2 ;
  wire \div_rem_im_reg[0]_i_8_n_3 ;
  wire \div_rem_im_reg[11]_i_2_n_0 ;
  wire \div_rem_im_reg[11]_i_2_n_1 ;
  wire \div_rem_im_reg[11]_i_2_n_2 ;
  wire \div_rem_im_reg[11]_i_2_n_3 ;
  wire \div_rem_im_reg[11]_i_8_n_0 ;
  wire \div_rem_im_reg[11]_i_8_n_1 ;
  wire \div_rem_im_reg[11]_i_8_n_2 ;
  wire \div_rem_im_reg[11]_i_8_n_3 ;
  wire \div_rem_im_reg[15]_i_2_n_0 ;
  wire \div_rem_im_reg[15]_i_2_n_1 ;
  wire \div_rem_im_reg[15]_i_2_n_2 ;
  wire \div_rem_im_reg[15]_i_2_n_3 ;
  wire \div_rem_im_reg[15]_i_8_n_0 ;
  wire \div_rem_im_reg[15]_i_8_n_1 ;
  wire \div_rem_im_reg[15]_i_8_n_2 ;
  wire \div_rem_im_reg[15]_i_8_n_3 ;
  wire \div_rem_im_reg[19]_i_2_n_0 ;
  wire \div_rem_im_reg[19]_i_2_n_1 ;
  wire \div_rem_im_reg[19]_i_2_n_2 ;
  wire \div_rem_im_reg[19]_i_2_n_3 ;
  wire \div_rem_im_reg[19]_i_8_n_0 ;
  wire \div_rem_im_reg[19]_i_8_n_1 ;
  wire \div_rem_im_reg[19]_i_8_n_2 ;
  wire \div_rem_im_reg[19]_i_8_n_3 ;
  wire \div_rem_im_reg[23]_i_2_n_0 ;
  wire \div_rem_im_reg[23]_i_2_n_1 ;
  wire \div_rem_im_reg[23]_i_2_n_2 ;
  wire \div_rem_im_reg[23]_i_2_n_3 ;
  wire \div_rem_im_reg[23]_i_8_n_0 ;
  wire \div_rem_im_reg[23]_i_8_n_1 ;
  wire \div_rem_im_reg[23]_i_8_n_2 ;
  wire \div_rem_im_reg[23]_i_8_n_3 ;
  wire \div_rem_im_reg[27]_i_2_n_0 ;
  wire \div_rem_im_reg[27]_i_2_n_1 ;
  wire \div_rem_im_reg[27]_i_2_n_2 ;
  wire \div_rem_im_reg[27]_i_2_n_3 ;
  wire \div_rem_im_reg[27]_i_8_n_0 ;
  wire \div_rem_im_reg[27]_i_8_n_1 ;
  wire \div_rem_im_reg[27]_i_8_n_2 ;
  wire \div_rem_im_reg[27]_i_8_n_3 ;
  wire \div_rem_im_reg[31]_i_2_n_0 ;
  wire \div_rem_im_reg[31]_i_2_n_1 ;
  wire \div_rem_im_reg[31]_i_2_n_2 ;
  wire \div_rem_im_reg[31]_i_2_n_3 ;
  wire \div_rem_im_reg[31]_i_8_n_0 ;
  wire \div_rem_im_reg[31]_i_8_n_1 ;
  wire \div_rem_im_reg[31]_i_8_n_2 ;
  wire \div_rem_im_reg[31]_i_8_n_3 ;
  wire \div_rem_im_reg[35]_i_2_n_0 ;
  wire \div_rem_im_reg[35]_i_2_n_1 ;
  wire \div_rem_im_reg[35]_i_2_n_2 ;
  wire \div_rem_im_reg[35]_i_2_n_3 ;
  wire \div_rem_im_reg[35]_i_8_n_0 ;
  wire \div_rem_im_reg[35]_i_8_n_1 ;
  wire \div_rem_im_reg[35]_i_8_n_2 ;
  wire \div_rem_im_reg[35]_i_8_n_3 ;
  wire \div_rem_im_reg[39]_i_2_n_0 ;
  wire \div_rem_im_reg[39]_i_2_n_1 ;
  wire \div_rem_im_reg[39]_i_2_n_2 ;
  wire \div_rem_im_reg[39]_i_2_n_3 ;
  wire \div_rem_im_reg[39]_i_8_n_0 ;
  wire \div_rem_im_reg[39]_i_8_n_1 ;
  wire \div_rem_im_reg[39]_i_8_n_2 ;
  wire \div_rem_im_reg[39]_i_8_n_3 ;
  wire \div_rem_im_reg[3]_i_2_n_0 ;
  wire \div_rem_im_reg[3]_i_2_n_1 ;
  wire \div_rem_im_reg[3]_i_2_n_2 ;
  wire \div_rem_im_reg[3]_i_2_n_3 ;
  wire \div_rem_im_reg[43]_i_2_n_0 ;
  wire \div_rem_im_reg[43]_i_2_n_1 ;
  wire \div_rem_im_reg[43]_i_2_n_2 ;
  wire \div_rem_im_reg[43]_i_2_n_3 ;
  wire \div_rem_im_reg[43]_i_8_n_0 ;
  wire \div_rem_im_reg[43]_i_8_n_1 ;
  wire \div_rem_im_reg[43]_i_8_n_2 ;
  wire \div_rem_im_reg[43]_i_8_n_3 ;
  wire \div_rem_im_reg[47]_i_2_n_0 ;
  wire \div_rem_im_reg[47]_i_2_n_1 ;
  wire \div_rem_im_reg[47]_i_2_n_2 ;
  wire \div_rem_im_reg[47]_i_2_n_3 ;
  wire \div_rem_im_reg[47]_i_8_n_0 ;
  wire \div_rem_im_reg[47]_i_8_n_1 ;
  wire \div_rem_im_reg[47]_i_8_n_2 ;
  wire \div_rem_im_reg[47]_i_8_n_3 ;
  wire [0:0]\div_rem_im_reg[48]_0 ;
  wire \div_rem_im_reg[48]_i_10_n_0 ;
  wire \div_rem_im_reg[48]_i_10_n_1 ;
  wire \div_rem_im_reg[48]_i_10_n_2 ;
  wire \div_rem_im_reg[48]_i_10_n_3 ;
  wire \div_rem_im_reg[48]_i_20_n_0 ;
  wire \div_rem_im_reg[48]_i_20_n_1 ;
  wire \div_rem_im_reg[48]_i_20_n_2 ;
  wire \div_rem_im_reg[48]_i_20_n_3 ;
  wire \div_rem_im_reg[48]_i_29_n_0 ;
  wire \div_rem_im_reg[48]_i_29_n_1 ;
  wire \div_rem_im_reg[48]_i_29_n_2 ;
  wire \div_rem_im_reg[48]_i_29_n_3 ;
  wire \div_rem_im_reg[48]_i_38_n_0 ;
  wire \div_rem_im_reg[48]_i_38_n_1 ;
  wire \div_rem_im_reg[48]_i_38_n_2 ;
  wire \div_rem_im_reg[48]_i_38_n_3 ;
  wire \div_rem_im_reg[48]_i_47_n_0 ;
  wire \div_rem_im_reg[48]_i_47_n_1 ;
  wire \div_rem_im_reg[48]_i_47_n_2 ;
  wire \div_rem_im_reg[48]_i_47_n_3 ;
  wire \div_rem_im_reg[48]_i_6_n_0 ;
  wire \div_rem_im_reg[48]_i_6_n_1 ;
  wire \div_rem_im_reg[48]_i_6_n_2 ;
  wire \div_rem_im_reg[48]_i_6_n_3 ;
  wire \div_rem_im_reg[7]_i_2_n_0 ;
  wire \div_rem_im_reg[7]_i_2_n_1 ;
  wire \div_rem_im_reg[7]_i_2_n_2 ;
  wire \div_rem_im_reg[7]_i_2_n_3 ;
  wire \div_rem_im_reg[7]_i_8_n_0 ;
  wire \div_rem_im_reg[7]_i_8_n_1 ;
  wire \div_rem_im_reg[7]_i_8_n_2 ;
  wire \div_rem_im_reg[7]_i_8_n_3 ;
  wire [48:0]div_rem_re;
  wire [48:0]div_rem_re1;
  wire [48:0]div_rem_re10_in;
  wire \div_rem_re[0]_i_10_n_0 ;
  wire \div_rem_re[0]_i_12_n_0 ;
  wire \div_rem_re[0]_i_13_n_0 ;
  wire \div_rem_re[0]_i_14_n_0 ;
  wire \div_rem_re[0]_i_15_n_0 ;
  wire \div_rem_re[0]_i_16_n_0 ;
  wire \div_rem_re[0]_i_17_n_0 ;
  wire \div_rem_re[0]_i_18_n_0 ;
  wire \div_rem_re[0]_i_19_n_0 ;
  wire \div_rem_re[0]_i_1_n_0 ;
  wire \div_rem_re[0]_i_21_n_0 ;
  wire \div_rem_re[0]_i_22_n_0 ;
  wire \div_rem_re[0]_i_23_n_0 ;
  wire \div_rem_re[0]_i_24_n_0 ;
  wire \div_rem_re[0]_i_25_n_0 ;
  wire \div_rem_re[0]_i_26_n_0 ;
  wire \div_rem_re[0]_i_27_n_0 ;
  wire \div_rem_re[0]_i_28_n_0 ;
  wire \div_rem_re[0]_i_30_n_0 ;
  wire \div_rem_re[0]_i_31_n_0 ;
  wire \div_rem_re[0]_i_32_n_0 ;
  wire \div_rem_re[0]_i_33_n_0 ;
  wire \div_rem_re[0]_i_34_n_0 ;
  wire \div_rem_re[0]_i_35_n_0 ;
  wire \div_rem_re[0]_i_36_n_0 ;
  wire \div_rem_re[0]_i_37_n_0 ;
  wire \div_rem_re[0]_i_39_n_0 ;
  wire \div_rem_re[0]_i_40_n_0 ;
  wire \div_rem_re[0]_i_41_n_0 ;
  wire \div_rem_re[0]_i_42_n_0 ;
  wire \div_rem_re[0]_i_43_n_0 ;
  wire \div_rem_re[0]_i_44_n_0 ;
  wire \div_rem_re[0]_i_45_n_0 ;
  wire \div_rem_re[0]_i_46_n_0 ;
  wire \div_rem_re[0]_i_48_n_0 ;
  wire \div_rem_re[0]_i_49_n_0 ;
  wire \div_rem_re[0]_i_4_n_0 ;
  wire \div_rem_re[0]_i_50_n_0 ;
  wire \div_rem_re[0]_i_51_n_0 ;
  wire \div_rem_re[0]_i_52_n_0 ;
  wire \div_rem_re[0]_i_53_n_0 ;
  wire \div_rem_re[0]_i_54_n_0 ;
  wire \div_rem_re[0]_i_55_n_0 ;
  wire \div_rem_re[0]_i_56_n_0 ;
  wire \div_rem_re[0]_i_57_n_0 ;
  wire \div_rem_re[0]_i_58_n_0 ;
  wire \div_rem_re[0]_i_59_n_0 ;
  wire \div_rem_re[0]_i_5_n_0 ;
  wire \div_rem_re[0]_i_60_n_0 ;
  wire \div_rem_re[0]_i_61_n_0 ;
  wire \div_rem_re[0]_i_62_n_0 ;
  wire \div_rem_re[0]_i_63_n_0 ;
  wire \div_rem_re[0]_i_6_n_0 ;
  wire \div_rem_re[0]_i_7_n_0 ;
  wire \div_rem_re[0]_i_9_n_0 ;
  wire \div_rem_re[10]_i_1_n_0 ;
  wire \div_rem_re[10]_i_2_n_0 ;
  wire \div_rem_re[11]_i_10_n_0 ;
  wire \div_rem_re[11]_i_11_n_0 ;
  wire \div_rem_re[11]_i_12_n_0 ;
  wire \div_rem_re[11]_i_1_n_0 ;
  wire \div_rem_re[11]_i_3_n_0 ;
  wire \div_rem_re[11]_i_4_n_0 ;
  wire \div_rem_re[11]_i_5_n_0 ;
  wire \div_rem_re[11]_i_6_n_0 ;
  wire \div_rem_re[11]_i_7_n_0 ;
  wire \div_rem_re[11]_i_9_n_0 ;
  wire \div_rem_re[12]_i_1_n_0 ;
  wire \div_rem_re[12]_i_2_n_0 ;
  wire \div_rem_re[13]_i_1_n_0 ;
  wire \div_rem_re[13]_i_2_n_0 ;
  wire \div_rem_re[14]_i_1_n_0 ;
  wire \div_rem_re[14]_i_2_n_0 ;
  wire \div_rem_re[15]_i_10_n_0 ;
  wire \div_rem_re[15]_i_11_n_0 ;
  wire \div_rem_re[15]_i_12_n_0 ;
  wire \div_rem_re[15]_i_1_n_0 ;
  wire \div_rem_re[15]_i_3_n_0 ;
  wire \div_rem_re[15]_i_4_n_0 ;
  wire \div_rem_re[15]_i_5_n_0 ;
  wire \div_rem_re[15]_i_6_n_0 ;
  wire \div_rem_re[15]_i_7_n_0 ;
  wire \div_rem_re[15]_i_9_n_0 ;
  wire \div_rem_re[16]_i_1_n_0 ;
  wire \div_rem_re[16]_i_2_n_0 ;
  wire \div_rem_re[17]_i_1_n_0 ;
  wire \div_rem_re[17]_i_2_n_0 ;
  wire \div_rem_re[18]_i_1_n_0 ;
  wire \div_rem_re[18]_i_2_n_0 ;
  wire \div_rem_re[19]_i_10_n_0 ;
  wire \div_rem_re[19]_i_11_n_0 ;
  wire \div_rem_re[19]_i_12_n_0 ;
  wire \div_rem_re[19]_i_1_n_0 ;
  wire \div_rem_re[19]_i_3_n_0 ;
  wire \div_rem_re[19]_i_4_n_0 ;
  wire \div_rem_re[19]_i_5_n_0 ;
  wire \div_rem_re[19]_i_6_n_0 ;
  wire \div_rem_re[19]_i_7_n_0 ;
  wire \div_rem_re[19]_i_9_n_0 ;
  wire \div_rem_re[1]_i_1_n_0 ;
  wire \div_rem_re[1]_i_2_n_0 ;
  wire \div_rem_re[20]_i_1_n_0 ;
  wire \div_rem_re[20]_i_2_n_0 ;
  wire \div_rem_re[21]_i_1_n_0 ;
  wire \div_rem_re[21]_i_2_n_0 ;
  wire \div_rem_re[22]_i_1_n_0 ;
  wire \div_rem_re[22]_i_2_n_0 ;
  wire \div_rem_re[23]_i_10_n_0 ;
  wire \div_rem_re[23]_i_11_n_0 ;
  wire \div_rem_re[23]_i_12_n_0 ;
  wire \div_rem_re[23]_i_1_n_0 ;
  wire \div_rem_re[23]_i_3_n_0 ;
  wire \div_rem_re[23]_i_4_n_0 ;
  wire \div_rem_re[23]_i_5_n_0 ;
  wire \div_rem_re[23]_i_6_n_0 ;
  wire \div_rem_re[23]_i_7_n_0 ;
  wire \div_rem_re[23]_i_9_n_0 ;
  wire \div_rem_re[24]_i_1_n_0 ;
  wire \div_rem_re[24]_i_2_n_0 ;
  wire \div_rem_re[25]_i_1_n_0 ;
  wire \div_rem_re[25]_i_2_n_0 ;
  wire \div_rem_re[26]_i_1_n_0 ;
  wire \div_rem_re[26]_i_2_n_0 ;
  wire \div_rem_re[27]_i_10_n_0 ;
  wire \div_rem_re[27]_i_11_n_0 ;
  wire \div_rem_re[27]_i_12_n_0 ;
  wire \div_rem_re[27]_i_1_n_0 ;
  wire \div_rem_re[27]_i_3_n_0 ;
  wire \div_rem_re[27]_i_4_n_0 ;
  wire \div_rem_re[27]_i_5_n_0 ;
  wire \div_rem_re[27]_i_6_n_0 ;
  wire \div_rem_re[27]_i_7_n_0 ;
  wire \div_rem_re[27]_i_9_n_0 ;
  wire \div_rem_re[28]_i_1_n_0 ;
  wire \div_rem_re[28]_i_2_n_0 ;
  wire \div_rem_re[29]_i_1_n_0 ;
  wire \div_rem_re[29]_i_2_n_0 ;
  wire \div_rem_re[2]_i_1_n_0 ;
  wire \div_rem_re[2]_i_2_n_0 ;
  wire \div_rem_re[30]_i_1_n_0 ;
  wire \div_rem_re[30]_i_2_n_0 ;
  wire \div_rem_re[31]_i_10_n_0 ;
  wire \div_rem_re[31]_i_11_n_0 ;
  wire \div_rem_re[31]_i_12_n_0 ;
  wire \div_rem_re[31]_i_1_n_0 ;
  wire \div_rem_re[31]_i_3_n_0 ;
  wire \div_rem_re[31]_i_4_n_0 ;
  wire \div_rem_re[31]_i_5_n_0 ;
  wire \div_rem_re[31]_i_6_n_0 ;
  wire \div_rem_re[31]_i_7_n_0 ;
  wire \div_rem_re[31]_i_9_n_0 ;
  wire \div_rem_re[32]_i_1_n_0 ;
  wire \div_rem_re[32]_i_2_n_0 ;
  wire \div_rem_re[33]_i_1_n_0 ;
  wire \div_rem_re[33]_i_2_n_0 ;
  wire \div_rem_re[34]_i_1_n_0 ;
  wire \div_rem_re[34]_i_2_n_0 ;
  wire \div_rem_re[35]_i_10_n_0 ;
  wire \div_rem_re[35]_i_11_n_0 ;
  wire \div_rem_re[35]_i_12_n_0 ;
  wire \div_rem_re[35]_i_1_n_0 ;
  wire \div_rem_re[35]_i_3_n_0 ;
  wire \div_rem_re[35]_i_4_n_0 ;
  wire \div_rem_re[35]_i_5_n_0 ;
  wire \div_rem_re[35]_i_6_n_0 ;
  wire \div_rem_re[35]_i_7_n_0 ;
  wire \div_rem_re[35]_i_9_n_0 ;
  wire \div_rem_re[36]_i_1_n_0 ;
  wire \div_rem_re[36]_i_2_n_0 ;
  wire \div_rem_re[37]_i_1_n_0 ;
  wire \div_rem_re[37]_i_2_n_0 ;
  wire \div_rem_re[38]_i_1_n_0 ;
  wire \div_rem_re[38]_i_2_n_0 ;
  wire \div_rem_re[39]_i_10_n_0 ;
  wire \div_rem_re[39]_i_11_n_0 ;
  wire \div_rem_re[39]_i_12_n_0 ;
  wire \div_rem_re[39]_i_1_n_0 ;
  wire \div_rem_re[39]_i_3_n_0 ;
  wire \div_rem_re[39]_i_4_n_0 ;
  wire \div_rem_re[39]_i_5_n_0 ;
  wire \div_rem_re[39]_i_6_n_0 ;
  wire \div_rem_re[39]_i_7_n_0 ;
  wire \div_rem_re[39]_i_9_n_0 ;
  wire \div_rem_re[3]_i_1_n_0 ;
  wire \div_rem_re[3]_i_3_n_0 ;
  wire \div_rem_re[3]_i_4_n_0 ;
  wire \div_rem_re[3]_i_5_n_0 ;
  wire \div_rem_re[3]_i_6_n_0 ;
  wire \div_rem_re[3]_i_7_n_0 ;
  wire \div_rem_re[40]_i_1_n_0 ;
  wire \div_rem_re[40]_i_2_n_0 ;
  wire \div_rem_re[41]_i_1_n_0 ;
  wire \div_rem_re[41]_i_2_n_0 ;
  wire \div_rem_re[42]_i_1_n_0 ;
  wire \div_rem_re[42]_i_2_n_0 ;
  wire \div_rem_re[43]_i_10_n_0 ;
  wire \div_rem_re[43]_i_11_n_0 ;
  wire \div_rem_re[43]_i_12_n_0 ;
  wire \div_rem_re[43]_i_1_n_0 ;
  wire \div_rem_re[43]_i_3_n_0 ;
  wire \div_rem_re[43]_i_4_n_0 ;
  wire \div_rem_re[43]_i_5_n_0 ;
  wire \div_rem_re[43]_i_6_n_0 ;
  wire \div_rem_re[43]_i_7_n_0 ;
  wire \div_rem_re[43]_i_9_n_0 ;
  wire \div_rem_re[44]_i_1_n_0 ;
  wire \div_rem_re[44]_i_2_n_0 ;
  wire \div_rem_re[45]_i_1_n_0 ;
  wire \div_rem_re[45]_i_2_n_0 ;
  wire \div_rem_re[46]_i_1_n_0 ;
  wire \div_rem_re[46]_i_2_n_0 ;
  wire \div_rem_re[47]_i_10_n_0 ;
  wire \div_rem_re[47]_i_11_n_0 ;
  wire \div_rem_re[47]_i_12_n_0 ;
  wire \div_rem_re[47]_i_1_n_0 ;
  wire \div_rem_re[47]_i_3_n_0 ;
  wire \div_rem_re[47]_i_4_n_0 ;
  wire \div_rem_re[47]_i_5_n_0 ;
  wire \div_rem_re[47]_i_6_n_0 ;
  wire \div_rem_re[47]_i_7_n_0 ;
  wire \div_rem_re[47]_i_9_n_0 ;
  wire \div_rem_re[48]_i_12_n_0 ;
  wire \div_rem_re[48]_i_13_n_0 ;
  wire \div_rem_re[48]_i_14_n_0 ;
  wire \div_rem_re[48]_i_15_n_0 ;
  wire \div_rem_re[48]_i_16_n_0 ;
  wire \div_rem_re[48]_i_17_n_0 ;
  wire \div_rem_re[48]_i_18_n_0 ;
  wire \div_rem_re[48]_i_19_n_0 ;
  wire \div_rem_re[48]_i_20_n_0 ;
  wire \div_rem_re[48]_i_22_n_0 ;
  wire \div_rem_re[48]_i_23_n_0 ;
  wire \div_rem_re[48]_i_24_n_0 ;
  wire \div_rem_re[48]_i_25_n_0 ;
  wire \div_rem_re[48]_i_26_n_0 ;
  wire \div_rem_re[48]_i_27_n_0 ;
  wire \div_rem_re[48]_i_28_n_0 ;
  wire \div_rem_re[48]_i_29_n_0 ;
  wire \div_rem_re[48]_i_2_n_0 ;
  wire \div_rem_re[48]_i_31_n_0 ;
  wire \div_rem_re[48]_i_32_n_0 ;
  wire \div_rem_re[48]_i_33_n_0 ;
  wire \div_rem_re[48]_i_34_n_0 ;
  wire \div_rem_re[48]_i_35_n_0 ;
  wire \div_rem_re[48]_i_36_n_0 ;
  wire \div_rem_re[48]_i_37_n_0 ;
  wire \div_rem_re[48]_i_38_n_0 ;
  wire \div_rem_re[48]_i_40_n_0 ;
  wire \div_rem_re[48]_i_41_n_0 ;
  wire \div_rem_re[48]_i_42_n_0 ;
  wire \div_rem_re[48]_i_43_n_0 ;
  wire \div_rem_re[48]_i_44_n_0 ;
  wire \div_rem_re[48]_i_45_n_0 ;
  wire \div_rem_re[48]_i_46_n_0 ;
  wire \div_rem_re[48]_i_47_n_0 ;
  wire \div_rem_re[48]_i_49_n_0 ;
  wire \div_rem_re[48]_i_50_n_0 ;
  wire \div_rem_re[48]_i_51_n_0 ;
  wire \div_rem_re[48]_i_52_n_0 ;
  wire \div_rem_re[48]_i_53_n_0 ;
  wire \div_rem_re[48]_i_54_n_0 ;
  wire \div_rem_re[48]_i_55_n_0 ;
  wire \div_rem_re[48]_i_56_n_0 ;
  wire \div_rem_re[48]_i_57_n_0 ;
  wire \div_rem_re[48]_i_58_n_0 ;
  wire \div_rem_re[48]_i_59_n_0 ;
  wire \div_rem_re[48]_i_5_n_0 ;
  wire \div_rem_re[48]_i_60_n_0 ;
  wire \div_rem_re[48]_i_61_n_0 ;
  wire \div_rem_re[48]_i_62_n_0 ;
  wire \div_rem_re[48]_i_63_n_0 ;
  wire \div_rem_re[48]_i_64_n_0 ;
  wire \div_rem_re[48]_i_6_n_0 ;
  wire \div_rem_re[48]_i_8_n_0 ;
  wire \div_rem_re[48]_i_9_n_0 ;
  wire \div_rem_re[4]_i_1_n_0 ;
  wire \div_rem_re[4]_i_2_n_0 ;
  wire \div_rem_re[5]_i_1_n_0 ;
  wire \div_rem_re[5]_i_2_n_0 ;
  wire \div_rem_re[6]_i_1_n_0 ;
  wire \div_rem_re[6]_i_2_n_0 ;
  wire \div_rem_re[7]_i_10_n_0 ;
  wire \div_rem_re[7]_i_11_n_0 ;
  wire \div_rem_re[7]_i_12_n_0 ;
  wire \div_rem_re[7]_i_1_n_0 ;
  wire \div_rem_re[7]_i_3_n_0 ;
  wire \div_rem_re[7]_i_4_n_0 ;
  wire \div_rem_re[7]_i_5_n_0 ;
  wire \div_rem_re[7]_i_6_n_0 ;
  wire \div_rem_re[7]_i_7_n_0 ;
  wire \div_rem_re[7]_i_9_n_0 ;
  wire \div_rem_re[8]_i_1_n_0 ;
  wire \div_rem_re[8]_i_2_n_0 ;
  wire \div_rem_re[9]_i_1_n_0 ;
  wire \div_rem_re[9]_i_2_n_0 ;
  wire \div_rem_re_reg[0]_i_11_n_0 ;
  wire \div_rem_re_reg[0]_i_11_n_1 ;
  wire \div_rem_re_reg[0]_i_11_n_2 ;
  wire \div_rem_re_reg[0]_i_11_n_3 ;
  wire \div_rem_re_reg[0]_i_20_n_0 ;
  wire \div_rem_re_reg[0]_i_20_n_1 ;
  wire \div_rem_re_reg[0]_i_20_n_2 ;
  wire \div_rem_re_reg[0]_i_20_n_3 ;
  wire \div_rem_re_reg[0]_i_29_n_0 ;
  wire \div_rem_re_reg[0]_i_29_n_1 ;
  wire \div_rem_re_reg[0]_i_29_n_2 ;
  wire \div_rem_re_reg[0]_i_29_n_3 ;
  wire \div_rem_re_reg[0]_i_2_n_0 ;
  wire \div_rem_re_reg[0]_i_2_n_1 ;
  wire \div_rem_re_reg[0]_i_2_n_2 ;
  wire \div_rem_re_reg[0]_i_2_n_3 ;
  wire \div_rem_re_reg[0]_i_38_n_0 ;
  wire \div_rem_re_reg[0]_i_38_n_1 ;
  wire \div_rem_re_reg[0]_i_38_n_2 ;
  wire \div_rem_re_reg[0]_i_38_n_3 ;
  wire \div_rem_re_reg[0]_i_3_n_3 ;
  wire \div_rem_re_reg[0]_i_47_n_0 ;
  wire \div_rem_re_reg[0]_i_47_n_1 ;
  wire \div_rem_re_reg[0]_i_47_n_2 ;
  wire \div_rem_re_reg[0]_i_47_n_3 ;
  wire \div_rem_re_reg[0]_i_8_n_0 ;
  wire \div_rem_re_reg[0]_i_8_n_1 ;
  wire \div_rem_re_reg[0]_i_8_n_2 ;
  wire \div_rem_re_reg[0]_i_8_n_3 ;
  wire \div_rem_re_reg[11]_i_2_n_0 ;
  wire \div_rem_re_reg[11]_i_2_n_1 ;
  wire \div_rem_re_reg[11]_i_2_n_2 ;
  wire \div_rem_re_reg[11]_i_2_n_3 ;
  wire \div_rem_re_reg[11]_i_8_n_0 ;
  wire \div_rem_re_reg[11]_i_8_n_1 ;
  wire \div_rem_re_reg[11]_i_8_n_2 ;
  wire \div_rem_re_reg[11]_i_8_n_3 ;
  wire \div_rem_re_reg[15]_i_2_n_0 ;
  wire \div_rem_re_reg[15]_i_2_n_1 ;
  wire \div_rem_re_reg[15]_i_2_n_2 ;
  wire \div_rem_re_reg[15]_i_2_n_3 ;
  wire \div_rem_re_reg[15]_i_8_n_0 ;
  wire \div_rem_re_reg[15]_i_8_n_1 ;
  wire \div_rem_re_reg[15]_i_8_n_2 ;
  wire \div_rem_re_reg[15]_i_8_n_3 ;
  wire \div_rem_re_reg[19]_i_2_n_0 ;
  wire \div_rem_re_reg[19]_i_2_n_1 ;
  wire \div_rem_re_reg[19]_i_2_n_2 ;
  wire \div_rem_re_reg[19]_i_2_n_3 ;
  wire \div_rem_re_reg[19]_i_8_n_0 ;
  wire \div_rem_re_reg[19]_i_8_n_1 ;
  wire \div_rem_re_reg[19]_i_8_n_2 ;
  wire \div_rem_re_reg[19]_i_8_n_3 ;
  wire \div_rem_re_reg[23]_i_2_n_0 ;
  wire \div_rem_re_reg[23]_i_2_n_1 ;
  wire \div_rem_re_reg[23]_i_2_n_2 ;
  wire \div_rem_re_reg[23]_i_2_n_3 ;
  wire \div_rem_re_reg[23]_i_8_n_0 ;
  wire \div_rem_re_reg[23]_i_8_n_1 ;
  wire \div_rem_re_reg[23]_i_8_n_2 ;
  wire \div_rem_re_reg[23]_i_8_n_3 ;
  wire \div_rem_re_reg[27]_i_2_n_0 ;
  wire \div_rem_re_reg[27]_i_2_n_1 ;
  wire \div_rem_re_reg[27]_i_2_n_2 ;
  wire \div_rem_re_reg[27]_i_2_n_3 ;
  wire \div_rem_re_reg[27]_i_8_n_0 ;
  wire \div_rem_re_reg[27]_i_8_n_1 ;
  wire \div_rem_re_reg[27]_i_8_n_2 ;
  wire \div_rem_re_reg[27]_i_8_n_3 ;
  wire \div_rem_re_reg[31]_i_2_n_0 ;
  wire \div_rem_re_reg[31]_i_2_n_1 ;
  wire \div_rem_re_reg[31]_i_2_n_2 ;
  wire \div_rem_re_reg[31]_i_2_n_3 ;
  wire \div_rem_re_reg[31]_i_8_n_0 ;
  wire \div_rem_re_reg[31]_i_8_n_1 ;
  wire \div_rem_re_reg[31]_i_8_n_2 ;
  wire \div_rem_re_reg[31]_i_8_n_3 ;
  wire \div_rem_re_reg[35]_i_2_n_0 ;
  wire \div_rem_re_reg[35]_i_2_n_1 ;
  wire \div_rem_re_reg[35]_i_2_n_2 ;
  wire \div_rem_re_reg[35]_i_2_n_3 ;
  wire \div_rem_re_reg[35]_i_8_n_0 ;
  wire \div_rem_re_reg[35]_i_8_n_1 ;
  wire \div_rem_re_reg[35]_i_8_n_2 ;
  wire \div_rem_re_reg[35]_i_8_n_3 ;
  wire \div_rem_re_reg[39]_i_2_n_0 ;
  wire \div_rem_re_reg[39]_i_2_n_1 ;
  wire \div_rem_re_reg[39]_i_2_n_2 ;
  wire \div_rem_re_reg[39]_i_2_n_3 ;
  wire \div_rem_re_reg[39]_i_8_n_0 ;
  wire \div_rem_re_reg[39]_i_8_n_1 ;
  wire \div_rem_re_reg[39]_i_8_n_2 ;
  wire \div_rem_re_reg[39]_i_8_n_3 ;
  wire \div_rem_re_reg[3]_i_2_n_0 ;
  wire \div_rem_re_reg[3]_i_2_n_1 ;
  wire \div_rem_re_reg[3]_i_2_n_2 ;
  wire \div_rem_re_reg[3]_i_2_n_3 ;
  wire \div_rem_re_reg[43]_i_2_n_0 ;
  wire \div_rem_re_reg[43]_i_2_n_1 ;
  wire \div_rem_re_reg[43]_i_2_n_2 ;
  wire \div_rem_re_reg[43]_i_2_n_3 ;
  wire \div_rem_re_reg[43]_i_8_n_0 ;
  wire \div_rem_re_reg[43]_i_8_n_1 ;
  wire \div_rem_re_reg[43]_i_8_n_2 ;
  wire \div_rem_re_reg[43]_i_8_n_3 ;
  wire \div_rem_re_reg[47]_i_2_n_0 ;
  wire \div_rem_re_reg[47]_i_2_n_1 ;
  wire \div_rem_re_reg[47]_i_2_n_2 ;
  wire \div_rem_re_reg[47]_i_2_n_3 ;
  wire \div_rem_re_reg[47]_i_8_n_0 ;
  wire \div_rem_re_reg[47]_i_8_n_1 ;
  wire \div_rem_re_reg[47]_i_8_n_2 ;
  wire \div_rem_re_reg[47]_i_8_n_3 ;
  wire \div_rem_re_reg[48]_i_11_n_0 ;
  wire \div_rem_re_reg[48]_i_11_n_1 ;
  wire \div_rem_re_reg[48]_i_11_n_2 ;
  wire \div_rem_re_reg[48]_i_11_n_3 ;
  wire \div_rem_re_reg[48]_i_21_n_0 ;
  wire \div_rem_re_reg[48]_i_21_n_1 ;
  wire \div_rem_re_reg[48]_i_21_n_2 ;
  wire \div_rem_re_reg[48]_i_21_n_3 ;
  wire \div_rem_re_reg[48]_i_30_n_0 ;
  wire \div_rem_re_reg[48]_i_30_n_1 ;
  wire \div_rem_re_reg[48]_i_30_n_2 ;
  wire \div_rem_re_reg[48]_i_30_n_3 ;
  wire \div_rem_re_reg[48]_i_39_n_0 ;
  wire \div_rem_re_reg[48]_i_39_n_1 ;
  wire \div_rem_re_reg[48]_i_39_n_2 ;
  wire \div_rem_re_reg[48]_i_39_n_3 ;
  wire \div_rem_re_reg[48]_i_48_n_0 ;
  wire \div_rem_re_reg[48]_i_48_n_1 ;
  wire \div_rem_re_reg[48]_i_48_n_2 ;
  wire \div_rem_re_reg[48]_i_48_n_3 ;
  wire \div_rem_re_reg[48]_i_7_n_0 ;
  wire \div_rem_re_reg[48]_i_7_n_1 ;
  wire \div_rem_re_reg[48]_i_7_n_2 ;
  wire \div_rem_re_reg[48]_i_7_n_3 ;
  wire \div_rem_re_reg[7]_i_2_n_0 ;
  wire \div_rem_re_reg[7]_i_2_n_1 ;
  wire \div_rem_re_reg[7]_i_2_n_2 ;
  wire \div_rem_re_reg[7]_i_2_n_3 ;
  wire \div_rem_re_reg[7]_i_8_n_0 ;
  wire \div_rem_re_reg[7]_i_8_n_1 ;
  wire \div_rem_re_reg[7]_i_8_n_2 ;
  wire \div_rem_re_reg[7]_i_8_n_3 ;
  wire done_i_1__0_n_0;
  wire [0:0]done_reg_0;
  wire [47:0]ii0_0;
  wire ii0_n_100;
  wire ii0_n_101;
  wire ii0_n_102;
  wire ii0_n_103;
  wire ii0_n_104;
  wire ii0_n_105;
  wire ii0_n_106;
  wire ii0_n_107;
  wire ii0_n_108;
  wire ii0_n_109;
  wire ii0_n_110;
  wire ii0_n_111;
  wire ii0_n_112;
  wire ii0_n_113;
  wire ii0_n_114;
  wire ii0_n_115;
  wire ii0_n_116;
  wire ii0_n_117;
  wire ii0_n_118;
  wire ii0_n_119;
  wire ii0_n_120;
  wire ii0_n_121;
  wire ii0_n_122;
  wire ii0_n_123;
  wire ii0_n_124;
  wire ii0_n_125;
  wire ii0_n_126;
  wire ii0_n_127;
  wire ii0_n_128;
  wire ii0_n_129;
  wire ii0_n_130;
  wire ii0_n_131;
  wire ii0_n_132;
  wire ii0_n_133;
  wire ii0_n_134;
  wire ii0_n_135;
  wire ii0_n_136;
  wire ii0_n_137;
  wire ii0_n_138;
  wire ii0_n_139;
  wire ii0_n_140;
  wire ii0_n_141;
  wire ii0_n_142;
  wire ii0_n_143;
  wire ii0_n_144;
  wire ii0_n_145;
  wire ii0_n_146;
  wire ii0_n_147;
  wire ii0_n_148;
  wire ii0_n_149;
  wire ii0_n_150;
  wire ii0_n_151;
  wire ii0_n_152;
  wire ii0_n_153;
  wire ii0_n_58;
  wire ii0_n_59;
  wire ii0_n_60;
  wire ii0_n_61;
  wire ii0_n_62;
  wire ii0_n_63;
  wire ii0_n_64;
  wire ii0_n_65;
  wire ii0_n_66;
  wire ii0_n_67;
  wire ii0_n_68;
  wire ii0_n_69;
  wire ii0_n_70;
  wire ii0_n_71;
  wire ii0_n_72;
  wire ii0_n_73;
  wire ii0_n_74;
  wire ii0_n_75;
  wire ii0_n_76;
  wire ii0_n_77;
  wire ii0_n_78;
  wire ii0_n_79;
  wire ii0_n_80;
  wire ii0_n_81;
  wire ii0_n_82;
  wire ii0_n_83;
  wire ii0_n_84;
  wire ii0_n_85;
  wire ii0_n_86;
  wire ii0_n_87;
  wire ii0_n_88;
  wire ii0_n_89;
  wire ii0_n_90;
  wire ii0_n_91;
  wire ii0_n_92;
  wire ii0_n_93;
  wire ii0_n_94;
  wire ii0_n_95;
  wire ii0_n_96;
  wire ii0_n_97;
  wire ii0_n_98;
  wire ii0_n_99;
  wire ii_reg__0_n_100;
  wire ii_reg__0_n_101;
  wire ii_reg__0_n_102;
  wire ii_reg__0_n_103;
  wire ii_reg__0_n_104;
  wire ii_reg__0_n_105;
  wire ii_reg__0_n_58;
  wire ii_reg__0_n_59;
  wire ii_reg__0_n_60;
  wire ii_reg__0_n_61;
  wire ii_reg__0_n_62;
  wire ii_reg__0_n_63;
  wire ii_reg__0_n_64;
  wire ii_reg__0_n_65;
  wire ii_reg__0_n_66;
  wire ii_reg__0_n_67;
  wire ii_reg__0_n_68;
  wire ii_reg__0_n_69;
  wire ii_reg__0_n_70;
  wire ii_reg__0_n_71;
  wire ii_reg__0_n_72;
  wire ii_reg__0_n_73;
  wire ii_reg__0_n_74;
  wire ii_reg__0_n_75;
  wire ii_reg__0_n_76;
  wire ii_reg__0_n_77;
  wire ii_reg__0_n_78;
  wire ii_reg__0_n_79;
  wire ii_reg__0_n_80;
  wire ii_reg__0_n_81;
  wire ii_reg__0_n_82;
  wire ii_reg__0_n_83;
  wire ii_reg__0_n_84;
  wire ii_reg__0_n_85;
  wire ii_reg__0_n_86;
  wire ii_reg__0_n_87;
  wire ii_reg__0_n_88;
  wire ii_reg__0_n_89;
  wire ii_reg__0_n_90;
  wire ii_reg__0_n_91;
  wire ii_reg__0_n_92;
  wire ii_reg__0_n_93;
  wire ii_reg__0_n_94;
  wire ii_reg__0_n_95;
  wire ii_reg__0_n_96;
  wire ii_reg__0_n_97;
  wire ii_reg__0_n_98;
  wire ii_reg__0_n_99;
  wire [16:0]ii_reg__1;
  wire ir0_n_100;
  wire ir0_n_101;
  wire ir0_n_102;
  wire ir0_n_103;
  wire ir0_n_104;
  wire ir0_n_105;
  wire ir0_n_106;
  wire ir0_n_107;
  wire ir0_n_108;
  wire ir0_n_109;
  wire ir0_n_110;
  wire ir0_n_111;
  wire ir0_n_112;
  wire ir0_n_113;
  wire ir0_n_114;
  wire ir0_n_115;
  wire ir0_n_116;
  wire ir0_n_117;
  wire ir0_n_118;
  wire ir0_n_119;
  wire ir0_n_120;
  wire ir0_n_121;
  wire ir0_n_122;
  wire ir0_n_123;
  wire ir0_n_124;
  wire ir0_n_125;
  wire ir0_n_126;
  wire ir0_n_127;
  wire ir0_n_128;
  wire ir0_n_129;
  wire ir0_n_130;
  wire ir0_n_131;
  wire ir0_n_132;
  wire ir0_n_133;
  wire ir0_n_134;
  wire ir0_n_135;
  wire ir0_n_136;
  wire ir0_n_137;
  wire ir0_n_138;
  wire ir0_n_139;
  wire ir0_n_140;
  wire ir0_n_141;
  wire ir0_n_142;
  wire ir0_n_143;
  wire ir0_n_144;
  wire ir0_n_145;
  wire ir0_n_146;
  wire ir0_n_147;
  wire ir0_n_148;
  wire ir0_n_149;
  wire ir0_n_150;
  wire ir0_n_151;
  wire ir0_n_152;
  wire ir0_n_153;
  wire ir0_n_58;
  wire ir0_n_59;
  wire ir0_n_60;
  wire ir0_n_61;
  wire ir0_n_62;
  wire ir0_n_63;
  wire ir0_n_64;
  wire ir0_n_65;
  wire ir0_n_66;
  wire ir0_n_67;
  wire ir0_n_68;
  wire ir0_n_69;
  wire ir0_n_70;
  wire ir0_n_71;
  wire ir0_n_72;
  wire ir0_n_73;
  wire ir0_n_74;
  wire ir0_n_75;
  wire ir0_n_76;
  wire ir0_n_77;
  wire ir0_n_78;
  wire ir0_n_79;
  wire ir0_n_80;
  wire ir0_n_81;
  wire ir0_n_82;
  wire ir0_n_83;
  wire ir0_n_84;
  wire ir0_n_85;
  wire ir0_n_86;
  wire ir0_n_87;
  wire ir0_n_88;
  wire ir0_n_89;
  wire ir0_n_90;
  wire ir0_n_91;
  wire ir0_n_92;
  wire ir0_n_93;
  wire ir0_n_94;
  wire ir0_n_95;
  wire ir0_n_96;
  wire ir0_n_97;
  wire ir0_n_98;
  wire ir0_n_99;
  wire ir_reg__0_n_100;
  wire ir_reg__0_n_101;
  wire ir_reg__0_n_102;
  wire ir_reg__0_n_103;
  wire ir_reg__0_n_104;
  wire ir_reg__0_n_105;
  wire ir_reg__0_n_58;
  wire ir_reg__0_n_59;
  wire ir_reg__0_n_60;
  wire ir_reg__0_n_61;
  wire ir_reg__0_n_62;
  wire ir_reg__0_n_63;
  wire ir_reg__0_n_64;
  wire ir_reg__0_n_65;
  wire ir_reg__0_n_66;
  wire ir_reg__0_n_67;
  wire ir_reg__0_n_68;
  wire ir_reg__0_n_69;
  wire ir_reg__0_n_70;
  wire ir_reg__0_n_71;
  wire ir_reg__0_n_72;
  wire ir_reg__0_n_73;
  wire ir_reg__0_n_74;
  wire ir_reg__0_n_75;
  wire ir_reg__0_n_76;
  wire ir_reg__0_n_77;
  wire ir_reg__0_n_78;
  wire ir_reg__0_n_79;
  wire ir_reg__0_n_80;
  wire ir_reg__0_n_81;
  wire ir_reg__0_n_82;
  wire ir_reg__0_n_83;
  wire ir_reg__0_n_84;
  wire ir_reg__0_n_85;
  wire ir_reg__0_n_86;
  wire ir_reg__0_n_87;
  wire ir_reg__0_n_88;
  wire ir_reg__0_n_89;
  wire ir_reg__0_n_90;
  wire ir_reg__0_n_91;
  wire ir_reg__0_n_92;
  wire ir_reg__0_n_93;
  wire ir_reg__0_n_94;
  wire ir_reg__0_n_95;
  wire ir_reg__0_n_96;
  wire ir_reg__0_n_97;
  wire ir_reg__0_n_98;
  wire ir_reg__0_n_99;
  wire [16:0]ir_reg__1;
  wire last_latched;
  wire last_latched_reg;
  wire last_latched_reg_0;
  wire m_axis_tvalid_reg;
  wire [22:1]out_im1;
  wire \out_im[0]_i_1_n_0 ;
  wire \out_im[10]_i_1_n_0 ;
  wire \out_im[11]_i_1_n_0 ;
  wire \out_im[12]_i_1_n_0 ;
  wire \out_im[12]_i_3_n_0 ;
  wire \out_im[12]_i_4_n_0 ;
  wire \out_im[12]_i_5_n_0 ;
  wire \out_im[12]_i_6_n_0 ;
  wire \out_im[13]_i_1_n_0 ;
  wire \out_im[14]_i_1_n_0 ;
  wire \out_im[15]_i_1_n_0 ;
  wire \out_im[16]_i_1_n_0 ;
  wire \out_im[16]_i_3_n_0 ;
  wire \out_im[16]_i_4_n_0 ;
  wire \out_im[16]_i_5_n_0 ;
  wire \out_im[16]_i_6_n_0 ;
  wire \out_im[17]_i_1_n_0 ;
  wire \out_im[18]_i_1_n_0 ;
  wire \out_im[19]_i_1_n_0 ;
  wire \out_im[1]_i_1_n_0 ;
  wire \out_im[20]_i_1_n_0 ;
  wire \out_im[20]_i_3_n_0 ;
  wire \out_im[20]_i_4_n_0 ;
  wire \out_im[20]_i_5_n_0 ;
  wire \out_im[20]_i_6_n_0 ;
  wire \out_im[21]_i_1_n_0 ;
  wire \out_im[22]_i_1_n_0 ;
  wire \out_im[23]_i_1_n_0 ;
  wire \out_im[23]_i_3_n_0 ;
  wire \out_im[23]_i_4_n_0 ;
  wire \out_im[2]_i_1_n_0 ;
  wire \out_im[3]_i_1_n_0 ;
  wire \out_im[4]_i_1_n_0 ;
  wire \out_im[4]_i_4_n_0 ;
  wire \out_im[4]_i_5_n_0 ;
  wire \out_im[4]_i_6_n_0 ;
  wire \out_im[4]_i_7_n_0 ;
  wire \out_im[5]_i_1_n_0 ;
  wire \out_im[6]_i_1_n_0 ;
  wire \out_im[7]_i_1_n_0 ;
  wire \out_im[8]_i_1_n_0 ;
  wire \out_im[8]_i_3_n_0 ;
  wire \out_im[8]_i_4_n_0 ;
  wire \out_im[8]_i_5_n_0 ;
  wire \out_im[8]_i_6_n_0 ;
  wire \out_im[9]_i_1_n_0 ;
  wire \out_im_reg[12]_i_2_n_0 ;
  wire \out_im_reg[12]_i_2_n_1 ;
  wire \out_im_reg[12]_i_2_n_2 ;
  wire \out_im_reg[12]_i_2_n_3 ;
  wire \out_im_reg[16]_i_2_n_0 ;
  wire \out_im_reg[16]_i_2_n_1 ;
  wire \out_im_reg[16]_i_2_n_2 ;
  wire \out_im_reg[16]_i_2_n_3 ;
  wire \out_im_reg[20]_i_2_n_0 ;
  wire \out_im_reg[20]_i_2_n_1 ;
  wire \out_im_reg[20]_i_2_n_2 ;
  wire \out_im_reg[20]_i_2_n_3 ;
  wire \out_im_reg[23]_i_2_n_1 ;
  wire \out_im_reg[23]_i_2_n_3 ;
  wire \out_im_reg[4]_0 ;
  wire \out_im_reg[4]_i_2_n_0 ;
  wire \out_im_reg[4]_i_2_n_1 ;
  wire \out_im_reg[4]_i_2_n_2 ;
  wire \out_im_reg[4]_i_2_n_3 ;
  wire \out_im_reg[8]_i_2_n_0 ;
  wire \out_im_reg[8]_i_2_n_1 ;
  wire \out_im_reg[8]_i_2_n_2 ;
  wire \out_im_reg[8]_i_2_n_3 ;
  wire [22:1]out_re1;
  wire \out_re[0]_i_1_n_0 ;
  wire \out_re[10]_i_1_n_0 ;
  wire \out_re[11]_i_1_n_0 ;
  wire \out_re[12]_i_1_n_0 ;
  wire \out_re[12]_i_3_n_0 ;
  wire \out_re[12]_i_4_n_0 ;
  wire \out_re[12]_i_5_n_0 ;
  wire \out_re[12]_i_6_n_0 ;
  wire \out_re[13]_i_1_n_0 ;
  wire \out_re[14]_i_1_n_0 ;
  wire \out_re[15]_i_1_n_0 ;
  wire \out_re[16]_i_1_n_0 ;
  wire \out_re[16]_i_3_n_0 ;
  wire \out_re[16]_i_4_n_0 ;
  wire \out_re[16]_i_5_n_0 ;
  wire \out_re[16]_i_6_n_0 ;
  wire \out_re[17]_i_1_n_0 ;
  wire \out_re[18]_i_1_n_0 ;
  wire \out_re[19]_i_1_n_0 ;
  wire \out_re[1]_i_1_n_0 ;
  wire \out_re[20]_i_1_n_0 ;
  wire \out_re[20]_i_3_n_0 ;
  wire \out_re[20]_i_4_n_0 ;
  wire \out_re[20]_i_5_n_0 ;
  wire \out_re[20]_i_6_n_0 ;
  wire \out_re[21]_i_1_n_0 ;
  wire \out_re[22]_i_1_n_0 ;
  wire \out_re[23]_i_1_n_0 ;
  wire \out_re[23]_i_2_n_0 ;
  wire \out_re[23]_i_4_n_0 ;
  wire \out_re[23]_i_5_n_0 ;
  wire \out_re[2]_i_1_n_0 ;
  wire \out_re[3]_i_1_n_0 ;
  wire \out_re[4]_i_1_n_0 ;
  wire \out_re[4]_i_4_n_0 ;
  wire \out_re[4]_i_5_n_0 ;
  wire \out_re[4]_i_6_n_0 ;
  wire \out_re[4]_i_7_n_0 ;
  wire \out_re[5]_i_1_n_0 ;
  wire \out_re[6]_i_1_n_0 ;
  wire \out_re[7]_i_1_n_0 ;
  wire \out_re[8]_i_1_n_0 ;
  wire \out_re[8]_i_3_n_0 ;
  wire \out_re[8]_i_4_n_0 ;
  wire \out_re[8]_i_5_n_0 ;
  wire \out_re[8]_i_6_n_0 ;
  wire \out_re[9]_i_1_n_0 ;
  wire \out_re_reg[12]_i_2_n_0 ;
  wire \out_re_reg[12]_i_2_n_1 ;
  wire \out_re_reg[12]_i_2_n_2 ;
  wire \out_re_reg[12]_i_2_n_3 ;
  wire \out_re_reg[16]_i_2_n_0 ;
  wire \out_re_reg[16]_i_2_n_1 ;
  wire \out_re_reg[16]_i_2_n_2 ;
  wire \out_re_reg[16]_i_2_n_3 ;
  wire \out_re_reg[20]_i_2_n_0 ;
  wire \out_re_reg[20]_i_2_n_1 ;
  wire \out_re_reg[20]_i_2_n_2 ;
  wire \out_re_reg[20]_i_2_n_3 ;
  wire \out_re_reg[23]_i_3_n_1 ;
  wire \out_re_reg[23]_i_3_n_3 ;
  wire \out_re_reg[4]_0 ;
  wire \out_re_reg[4]_i_2_n_0 ;
  wire \out_re_reg[4]_i_2_n_1 ;
  wire \out_re_reg[4]_i_2_n_2 ;
  wire \out_re_reg[4]_i_2_n_3 ;
  wire \out_re_reg[8]_i_2_n_0 ;
  wire \out_re_reg[8]_i_2_n_1 ;
  wire \out_re_reg[8]_i_2_n_2 ;
  wire \out_re_reg[8]_i_2_n_3 ;
  wire [22:1]p_0_in0_in;
  wire [48:0]p_1_in;
  wire quotient_im;
  wire \quotient_im[0]_i_1_n_0 ;
  wire \quotient_im[10]_i_1_n_0 ;
  wire \quotient_im[11]_i_1_n_0 ;
  wire \quotient_im[12]_i_1_n_0 ;
  wire \quotient_im[13]_i_1_n_0 ;
  wire \quotient_im[14]_i_1_n_0 ;
  wire \quotient_im[15]_i_1_n_0 ;
  wire \quotient_im[16]_i_1_n_0 ;
  wire \quotient_im[17]_i_1_n_0 ;
  wire \quotient_im[18]_i_1_n_0 ;
  wire \quotient_im[19]_i_1_n_0 ;
  wire \quotient_im[1]_i_1_n_0 ;
  wire \quotient_im[20]_i_1_n_0 ;
  wire \quotient_im[21]_i_1_n_0 ;
  wire \quotient_im[2]_i_1_n_0 ;
  wire \quotient_im[3]_i_1_n_0 ;
  wire \quotient_im[4]_i_1_n_0 ;
  wire \quotient_im[5]_i_1_n_0 ;
  wire \quotient_im[6]_i_1_n_0 ;
  wire \quotient_im[7]_i_1_n_0 ;
  wire \quotient_im[8]_i_1_n_0 ;
  wire \quotient_im[9]_i_1_n_0 ;
  wire \quotient_im_reg_n_0_[0] ;
  wire \quotient_im_reg_n_0_[10] ;
  wire \quotient_im_reg_n_0_[11] ;
  wire \quotient_im_reg_n_0_[12] ;
  wire \quotient_im_reg_n_0_[13] ;
  wire \quotient_im_reg_n_0_[14] ;
  wire \quotient_im_reg_n_0_[15] ;
  wire \quotient_im_reg_n_0_[16] ;
  wire \quotient_im_reg_n_0_[17] ;
  wire \quotient_im_reg_n_0_[18] ;
  wire \quotient_im_reg_n_0_[19] ;
  wire \quotient_im_reg_n_0_[1] ;
  wire \quotient_im_reg_n_0_[20] ;
  wire \quotient_im_reg_n_0_[21] ;
  wire \quotient_im_reg_n_0_[2] ;
  wire \quotient_im_reg_n_0_[3] ;
  wire \quotient_im_reg_n_0_[4] ;
  wire \quotient_im_reg_n_0_[5] ;
  wire \quotient_im_reg_n_0_[6] ;
  wire \quotient_im_reg_n_0_[7] ;
  wire \quotient_im_reg_n_0_[8] ;
  wire \quotient_im_reg_n_0_[9] ;
  wire \quotient_re[0]_i_1_n_0 ;
  wire \quotient_re[10]_i_1_n_0 ;
  wire \quotient_re[11]_i_1_n_0 ;
  wire \quotient_re[12]_i_1_n_0 ;
  wire \quotient_re[13]_i_1_n_0 ;
  wire \quotient_re[14]_i_1_n_0 ;
  wire \quotient_re[15]_i_1_n_0 ;
  wire \quotient_re[16]_i_1_n_0 ;
  wire \quotient_re[17]_i_1_n_0 ;
  wire \quotient_re[18]_i_1_n_0 ;
  wire \quotient_re[19]_i_1_n_0 ;
  wire \quotient_re[1]_i_1_n_0 ;
  wire \quotient_re[20]_i_1_n_0 ;
  wire \quotient_re[21]_i_1_n_0 ;
  wire \quotient_re[2]_i_1_n_0 ;
  wire \quotient_re[3]_i_1_n_0 ;
  wire \quotient_re[4]_i_1_n_0 ;
  wire \quotient_re[5]_i_1_n_0 ;
  wire \quotient_re[6]_i_1_n_0 ;
  wire \quotient_re[7]_i_1_n_0 ;
  wire \quotient_re[8]_i_1_n_0 ;
  wire \quotient_re[9]_i_1_n_0 ;
  wire [97:0]radicand00_in;
  wire \radicand[0]_i_1_n_0 ;
  wire \radicand[10]_i_1_n_0 ;
  wire \radicand[11]_i_1_n_0 ;
  wire \radicand[11]_i_3_n_0 ;
  wire \radicand[11]_i_4_n_0 ;
  wire \radicand[11]_i_5_n_0 ;
  wire \radicand[11]_i_6_n_0 ;
  wire \radicand[12]_i_1_n_0 ;
  wire \radicand[13]_i_1_n_0 ;
  wire \radicand[14]_i_1_n_0 ;
  wire \radicand[15]_i_1_n_0 ;
  wire \radicand[15]_i_3_n_0 ;
  wire \radicand[15]_i_4_n_0 ;
  wire \radicand[15]_i_5_n_0 ;
  wire \radicand[15]_i_6_n_0 ;
  wire \radicand[16]_i_1_n_0 ;
  wire \radicand[17]_i_1_n_0 ;
  wire \radicand[18]_i_1_n_0 ;
  wire \radicand[19]_i_1_n_0 ;
  wire \radicand[19]_i_3_n_0 ;
  wire \radicand[19]_i_4_n_0 ;
  wire \radicand[19]_i_5_n_0 ;
  wire \radicand[19]_i_6_n_0 ;
  wire \radicand[1]_i_1_n_0 ;
  wire \radicand[20]_i_1_n_0 ;
  wire \radicand[21]_i_1_n_0 ;
  wire \radicand[22]_i_1_n_0 ;
  wire \radicand[23]_i_1_n_0 ;
  wire \radicand[23]_i_3_n_0 ;
  wire \radicand[23]_i_4_n_0 ;
  wire \radicand[23]_i_5_n_0 ;
  wire \radicand[23]_i_6_n_0 ;
  wire \radicand[24]_i_1_n_0 ;
  wire \radicand[25]_i_1_n_0 ;
  wire \radicand[26]_i_1_n_0 ;
  wire \radicand[27]_i_1_n_0 ;
  wire \radicand[27]_i_3_n_0 ;
  wire \radicand[27]_i_4_n_0 ;
  wire \radicand[27]_i_5_n_0 ;
  wire \radicand[27]_i_6_n_0 ;
  wire \radicand[28]_i_1_n_0 ;
  wire \radicand[29]_i_1_n_0 ;
  wire \radicand[2]_i_1_n_0 ;
  wire \radicand[30]_i_1_n_0 ;
  wire \radicand[31]_i_1_n_0 ;
  wire \radicand[31]_i_3_n_0 ;
  wire \radicand[31]_i_4_n_0 ;
  wire \radicand[31]_i_5_n_0 ;
  wire \radicand[31]_i_6_n_0 ;
  wire \radicand[32]_i_1_n_0 ;
  wire \radicand[33]_i_1_n_0 ;
  wire \radicand[34]_i_1_n_0 ;
  wire \radicand[35]_i_1_n_0 ;
  wire \radicand[35]_i_3_n_0 ;
  wire \radicand[35]_i_4_n_0 ;
  wire \radicand[35]_i_5_n_0 ;
  wire \radicand[35]_i_6_n_0 ;
  wire \radicand[36]_i_1_n_0 ;
  wire \radicand[37]_i_1_n_0 ;
  wire \radicand[38]_i_1_n_0 ;
  wire \radicand[39]_i_10_n_0 ;
  wire \radicand[39]_i_12_n_0 ;
  wire \radicand[39]_i_13_n_0 ;
  wire \radicand[39]_i_14_n_0 ;
  wire \radicand[39]_i_1_n_0 ;
  wire \radicand[39]_i_4_n_0 ;
  wire \radicand[39]_i_5_n_0 ;
  wire \radicand[39]_i_6_n_0 ;
  wire \radicand[39]_i_7_n_0 ;
  wire \radicand[39]_i_8_n_0 ;
  wire \radicand[39]_i_9_n_0 ;
  wire \radicand[3]_i_1_n_0 ;
  wire \radicand[3]_i_3_n_0 ;
  wire \radicand[3]_i_4_n_0 ;
  wire \radicand[3]_i_5_n_0 ;
  wire \radicand[3]_i_6_n_0 ;
  wire \radicand[40]_i_1_n_0 ;
  wire \radicand[41]_i_1_n_0 ;
  wire \radicand[42]_i_1_n_0 ;
  wire \radicand[43]_i_10_n_0 ;
  wire \radicand[43]_i_11_n_0 ;
  wire \radicand[43]_i_13_n_0 ;
  wire \radicand[43]_i_14_n_0 ;
  wire \radicand[43]_i_15_n_0 ;
  wire \radicand[43]_i_16_n_0 ;
  wire \radicand[43]_i_1_n_0 ;
  wire \radicand[43]_i_4_n_0 ;
  wire \radicand[43]_i_5_n_0 ;
  wire \radicand[43]_i_6_n_0 ;
  wire \radicand[43]_i_7_n_0 ;
  wire \radicand[43]_i_8_n_0 ;
  wire \radicand[43]_i_9_n_0 ;
  wire \radicand[44]_i_1_n_0 ;
  wire \radicand[45]_i_1_n_0 ;
  wire \radicand[46]_i_1_n_0 ;
  wire \radicand[47]_i_10_n_0 ;
  wire \radicand[47]_i_11_n_0 ;
  wire \radicand[47]_i_13_n_0 ;
  wire \radicand[47]_i_14_n_0 ;
  wire \radicand[47]_i_15_n_0 ;
  wire \radicand[47]_i_16_n_0 ;
  wire \radicand[47]_i_1_n_0 ;
  wire \radicand[47]_i_4_n_0 ;
  wire \radicand[47]_i_5_n_0 ;
  wire \radicand[47]_i_6_n_0 ;
  wire \radicand[47]_i_7_n_0 ;
  wire \radicand[47]_i_8_n_0 ;
  wire \radicand[47]_i_9_n_0 ;
  wire \radicand[48]_i_1_n_0 ;
  wire \radicand[49]_i_1_n_0 ;
  wire \radicand[4]_i_1_n_0 ;
  wire \radicand[50]_i_1_n_0 ;
  wire \radicand[51]_i_10_n_0 ;
  wire \radicand[51]_i_11_n_0 ;
  wire \radicand[51]_i_13_n_0 ;
  wire \radicand[51]_i_14_n_0 ;
  wire \radicand[51]_i_15_n_0 ;
  wire \radicand[51]_i_16_n_0 ;
  wire \radicand[51]_i_1_n_0 ;
  wire \radicand[51]_i_4_n_0 ;
  wire \radicand[51]_i_5_n_0 ;
  wire \radicand[51]_i_6_n_0 ;
  wire \radicand[51]_i_7_n_0 ;
  wire \radicand[51]_i_8_n_0 ;
  wire \radicand[51]_i_9_n_0 ;
  wire \radicand[52]_i_1_n_0 ;
  wire \radicand[53]_i_1_n_0 ;
  wire \radicand[54]_i_1_n_0 ;
  wire \radicand[55]_i_10_n_0 ;
  wire \radicand[55]_i_11_n_0 ;
  wire \radicand[55]_i_12_n_0 ;
  wire \radicand[55]_i_14_n_0 ;
  wire \radicand[55]_i_15_n_0 ;
  wire \radicand[55]_i_16_n_0 ;
  wire \radicand[55]_i_17_n_0 ;
  wire \radicand[55]_i_18_n_0 ;
  wire \radicand[55]_i_1_n_0 ;
  wire \radicand[55]_i_4_n_0 ;
  wire \radicand[55]_i_5_n_0 ;
  wire \radicand[55]_i_6_n_0 ;
  wire \radicand[55]_i_7_n_0 ;
  wire \radicand[55]_i_8_n_0 ;
  wire \radicand[55]_i_9_n_0 ;
  wire \radicand[56]_i_1_n_0 ;
  wire \radicand[57]_i_1_n_0 ;
  wire \radicand[58]_i_1_n_0 ;
  wire \radicand[59]_i_10_n_0 ;
  wire \radicand[59]_i_11_n_0 ;
  wire \radicand[59]_i_12_n_0 ;
  wire \radicand[59]_i_13_n_0 ;
  wire \radicand[59]_i_14_n_0 ;
  wire \radicand[59]_i_15_n_0 ;
  wire \radicand[59]_i_17_n_0 ;
  wire \radicand[59]_i_18_n_0 ;
  wire \radicand[59]_i_19_n_0 ;
  wire \radicand[59]_i_1_n_0 ;
  wire \radicand[59]_i_20_n_0 ;
  wire \radicand[59]_i_21_n_0 ;
  wire \radicand[59]_i_22_n_0 ;
  wire \radicand[59]_i_23_n_0 ;
  wire \radicand[59]_i_24_n_0 ;
  wire \radicand[59]_i_4_n_0 ;
  wire \radicand[59]_i_5_n_0 ;
  wire \radicand[59]_i_6_n_0 ;
  wire \radicand[59]_i_7_n_0 ;
  wire \radicand[59]_i_8_n_0 ;
  wire \radicand[59]_i_9_n_0 ;
  wire \radicand[5]_i_1_n_0 ;
  wire \radicand[60]_i_1_n_0 ;
  wire \radicand[61]_i_1_n_0 ;
  wire \radicand[62]_i_1_n_0 ;
  wire \radicand[63]_i_10_n_0 ;
  wire \radicand[63]_i_11_n_0 ;
  wire \radicand[63]_i_12_n_0 ;
  wire \radicand[63]_i_13_n_0 ;
  wire \radicand[63]_i_14_n_0 ;
  wire \radicand[63]_i_15_n_0 ;
  wire \radicand[63]_i_17_n_0 ;
  wire \radicand[63]_i_18_n_0 ;
  wire \radicand[63]_i_19_n_0 ;
  wire \radicand[63]_i_1_n_0 ;
  wire \radicand[63]_i_20_n_0 ;
  wire \radicand[63]_i_21_n_0 ;
  wire \radicand[63]_i_22_n_0 ;
  wire \radicand[63]_i_23_n_0 ;
  wire \radicand[63]_i_24_n_0 ;
  wire \radicand[63]_i_4_n_0 ;
  wire \radicand[63]_i_5_n_0 ;
  wire \radicand[63]_i_6_n_0 ;
  wire \radicand[63]_i_7_n_0 ;
  wire \radicand[63]_i_8_n_0 ;
  wire \radicand[63]_i_9_n_0 ;
  wire \radicand[64]_i_1_n_0 ;
  wire \radicand[65]_i_1_n_0 ;
  wire \radicand[66]_i_1_n_0 ;
  wire \radicand[67]_i_10_n_0 ;
  wire \radicand[67]_i_11_n_0 ;
  wire \radicand[67]_i_12_n_0 ;
  wire \radicand[67]_i_13_n_0 ;
  wire \radicand[67]_i_14_n_0 ;
  wire \radicand[67]_i_15_n_0 ;
  wire \radicand[67]_i_17_n_0 ;
  wire \radicand[67]_i_18_n_0 ;
  wire \radicand[67]_i_19_n_0 ;
  wire \radicand[67]_i_1_n_0 ;
  wire \radicand[67]_i_20_n_0 ;
  wire \radicand[67]_i_21_n_0 ;
  wire \radicand[67]_i_22_n_0 ;
  wire \radicand[67]_i_23_n_0 ;
  wire \radicand[67]_i_24_n_0 ;
  wire \radicand[67]_i_4_n_0 ;
  wire \radicand[67]_i_5_n_0 ;
  wire \radicand[67]_i_6_n_0 ;
  wire \radicand[67]_i_7_n_0 ;
  wire \radicand[67]_i_8_n_0 ;
  wire \radicand[67]_i_9_n_0 ;
  wire \radicand[68]_i_1_n_0 ;
  wire \radicand[69]_i_1_n_0 ;
  wire \radicand[6]_i_1_n_0 ;
  wire \radicand[70]_i_1_n_0 ;
  wire \radicand[71]_i_10_n_0 ;
  wire \radicand[71]_i_11_n_0 ;
  wire \radicand[71]_i_12_n_0 ;
  wire \radicand[71]_i_13_n_0 ;
  wire \radicand[71]_i_14_n_0 ;
  wire \radicand[71]_i_15_n_0 ;
  wire \radicand[71]_i_17_n_0 ;
  wire \radicand[71]_i_18_n_0 ;
  wire \radicand[71]_i_19_n_0 ;
  wire \radicand[71]_i_1_n_0 ;
  wire \radicand[71]_i_20_n_0 ;
  wire \radicand[71]_i_21_n_0 ;
  wire \radicand[71]_i_22_n_0 ;
  wire \radicand[71]_i_23_n_0 ;
  wire \radicand[71]_i_24_n_0 ;
  wire \radicand[71]_i_4_n_0 ;
  wire \radicand[71]_i_5_n_0 ;
  wire \radicand[71]_i_6_n_0 ;
  wire \radicand[71]_i_7_n_0 ;
  wire \radicand[71]_i_8_n_0 ;
  wire \radicand[71]_i_9_n_0 ;
  wire \radicand[72]_i_1_n_0 ;
  wire \radicand[73]_i_1_n_0 ;
  wire \radicand[74]_i_1_n_0 ;
  wire \radicand[75]_i_10_n_0 ;
  wire \radicand[75]_i_11_n_0 ;
  wire \radicand[75]_i_12_n_0 ;
  wire \radicand[75]_i_13_n_0 ;
  wire \radicand[75]_i_14_n_0 ;
  wire \radicand[75]_i_15_n_0 ;
  wire \radicand[75]_i_17_n_0 ;
  wire \radicand[75]_i_18_n_0 ;
  wire \radicand[75]_i_19_n_0 ;
  wire \radicand[75]_i_1_n_0 ;
  wire \radicand[75]_i_20_n_0 ;
  wire \radicand[75]_i_21_n_0 ;
  wire \radicand[75]_i_22_n_0 ;
  wire \radicand[75]_i_23_n_0 ;
  wire \radicand[75]_i_24_n_0 ;
  wire \radicand[75]_i_4_n_0 ;
  wire \radicand[75]_i_5_n_0 ;
  wire \radicand[75]_i_6_n_0 ;
  wire \radicand[75]_i_7_n_0 ;
  wire \radicand[75]_i_8_n_0 ;
  wire \radicand[75]_i_9_n_0 ;
  wire \radicand[76]_i_1_n_0 ;
  wire \radicand[77]_i_1_n_0 ;
  wire \radicand[78]_i_1_n_0 ;
  wire \radicand[79]_i_10_n_0 ;
  wire \radicand[79]_i_11_n_0 ;
  wire \radicand[79]_i_12_n_0 ;
  wire \radicand[79]_i_13_n_0 ;
  wire \radicand[79]_i_14_n_0 ;
  wire \radicand[79]_i_15_n_0 ;
  wire \radicand[79]_i_17_n_0 ;
  wire \radicand[79]_i_18_n_0 ;
  wire \radicand[79]_i_19_n_0 ;
  wire \radicand[79]_i_1_n_0 ;
  wire \radicand[79]_i_20_n_0 ;
  wire \radicand[79]_i_21_n_0 ;
  wire \radicand[79]_i_22_n_0 ;
  wire \radicand[79]_i_23_n_0 ;
  wire \radicand[79]_i_24_n_0 ;
  wire \radicand[79]_i_4_n_0 ;
  wire \radicand[79]_i_5_n_0 ;
  wire \radicand[79]_i_6_n_0 ;
  wire \radicand[79]_i_7_n_0 ;
  wire \radicand[79]_i_8_n_0 ;
  wire \radicand[79]_i_9_n_0 ;
  wire \radicand[7]_i_1_n_0 ;
  wire \radicand[7]_i_3_n_0 ;
  wire \radicand[7]_i_4_n_0 ;
  wire \radicand[7]_i_5_n_0 ;
  wire \radicand[7]_i_6_n_0 ;
  wire \radicand[80]_i_1_n_0 ;
  wire \radicand[81]_i_1_n_0 ;
  wire \radicand[82]_i_1_n_0 ;
  wire \radicand[83]_i_10_n_0 ;
  wire \radicand[83]_i_11_n_0 ;
  wire \radicand[83]_i_12_n_0 ;
  wire \radicand[83]_i_13_n_0 ;
  wire \radicand[83]_i_14_n_0 ;
  wire \radicand[83]_i_15_n_0 ;
  wire \radicand[83]_i_17_n_0 ;
  wire \radicand[83]_i_18_n_0 ;
  wire \radicand[83]_i_19_n_0 ;
  wire \radicand[83]_i_1_n_0 ;
  wire \radicand[83]_i_20_n_0 ;
  wire \radicand[83]_i_21_n_0 ;
  wire \radicand[83]_i_22_n_0 ;
  wire \radicand[83]_i_23_n_0 ;
  wire \radicand[83]_i_24_n_0 ;
  wire \radicand[83]_i_4_n_0 ;
  wire \radicand[83]_i_5_n_0 ;
  wire \radicand[83]_i_6_n_0 ;
  wire \radicand[83]_i_7_n_0 ;
  wire \radicand[83]_i_8_n_0 ;
  wire \radicand[83]_i_9_n_0 ;
  wire \radicand[84]_i_1_n_0 ;
  wire \radicand[85]_i_1_n_0 ;
  wire \radicand[86]_i_1_n_0 ;
  wire \radicand[87]_i_10_n_0 ;
  wire \radicand[87]_i_11_n_0 ;
  wire \radicand[87]_i_12_n_0 ;
  wire \radicand[87]_i_13_n_0 ;
  wire \radicand[87]_i_15_n_0 ;
  wire \radicand[87]_i_16_n_0 ;
  wire \radicand[87]_i_17_n_0 ;
  wire \radicand[87]_i_18_n_0 ;
  wire \radicand[87]_i_19_n_0 ;
  wire \radicand[87]_i_1_n_0 ;
  wire \radicand[87]_i_20_n_0 ;
  wire \radicand[87]_i_4_n_0 ;
  wire \radicand[87]_i_5_n_0 ;
  wire \radicand[87]_i_6_n_0 ;
  wire \radicand[87]_i_7_n_0 ;
  wire \radicand[87]_i_8_n_0 ;
  wire \radicand[87]_i_9_n_0 ;
  wire \radicand[88]_i_1_n_0 ;
  wire \radicand[89]_i_1_n_0 ;
  wire \radicand[8]_i_1_n_0 ;
  wire \radicand[90]_i_1_n_0 ;
  wire \radicand[91]_i_10_n_0 ;
  wire \radicand[91]_i_11_n_0 ;
  wire \radicand[91]_i_13_n_0 ;
  wire \radicand[91]_i_14_n_0 ;
  wire \radicand[91]_i_15_n_0 ;
  wire \radicand[91]_i_16_n_0 ;
  wire \radicand[91]_i_1_n_0 ;
  wire \radicand[91]_i_4_n_0 ;
  wire \radicand[91]_i_5_n_0 ;
  wire \radicand[91]_i_6_n_0 ;
  wire \radicand[91]_i_7_n_0 ;
  wire \radicand[91]_i_8_n_0 ;
  wire \radicand[91]_i_9_n_0 ;
  wire \radicand[92]_i_1_n_0 ;
  wire \radicand[93]_i_1_n_0 ;
  wire \radicand[94]_i_1_n_0 ;
  wire \radicand[95]_i_10_n_0 ;
  wire \radicand[95]_i_11_n_0 ;
  wire \radicand[95]_i_13_n_0 ;
  wire \radicand[95]_i_14_n_0 ;
  wire \radicand[95]_i_15_n_0 ;
  wire \radicand[95]_i_16_n_0 ;
  wire \radicand[95]_i_1_n_0 ;
  wire \radicand[95]_i_4_n_0 ;
  wire \radicand[95]_i_5_n_0 ;
  wire \radicand[95]_i_6_n_0 ;
  wire \radicand[95]_i_7_n_0 ;
  wire \radicand[95]_i_8_n_0 ;
  wire \radicand[95]_i_9_n_0 ;
  wire \radicand[96]_i_1_n_0 ;
  wire \radicand[97]_i_13_n_0 ;
  wire \radicand[97]_i_14_n_0 ;
  wire \radicand[97]_i_15_n_0 ;
  wire \radicand[97]_i_16_n_0 ;
  wire \radicand[97]_i_17_n_0 ;
  wire \radicand[97]_i_18_n_0 ;
  wire \radicand[97]_i_1_n_0 ;
  wire \radicand[97]_i_6_n_0 ;
  wire \radicand[97]_i_7_n_0 ;
  wire \radicand[97]_i_8_n_0 ;
  wire \radicand[97]_i_9_n_0 ;
  wire \radicand[9]_i_1_n_0 ;
  wire \radicand_reg[11]_i_2_n_0 ;
  wire \radicand_reg[11]_i_2_n_1 ;
  wire \radicand_reg[11]_i_2_n_2 ;
  wire \radicand_reg[11]_i_2_n_3 ;
  wire \radicand_reg[15]_i_2_n_0 ;
  wire \radicand_reg[15]_i_2_n_1 ;
  wire \radicand_reg[15]_i_2_n_2 ;
  wire \radicand_reg[15]_i_2_n_3 ;
  wire \radicand_reg[19]_i_2_n_0 ;
  wire \radicand_reg[19]_i_2_n_1 ;
  wire \radicand_reg[19]_i_2_n_2 ;
  wire \radicand_reg[19]_i_2_n_3 ;
  wire \radicand_reg[23]_i_2_n_0 ;
  wire \radicand_reg[23]_i_2_n_1 ;
  wire \radicand_reg[23]_i_2_n_2 ;
  wire \radicand_reg[23]_i_2_n_3 ;
  wire \radicand_reg[27]_i_2_n_0 ;
  wire \radicand_reg[27]_i_2_n_1 ;
  wire \radicand_reg[27]_i_2_n_2 ;
  wire \radicand_reg[27]_i_2_n_3 ;
  wire \radicand_reg[31]_i_2_n_0 ;
  wire \radicand_reg[31]_i_2_n_1 ;
  wire \radicand_reg[31]_i_2_n_2 ;
  wire \radicand_reg[31]_i_2_n_3 ;
  wire \radicand_reg[35]_i_2_n_0 ;
  wire \radicand_reg[35]_i_2_n_1 ;
  wire \radicand_reg[35]_i_2_n_2 ;
  wire \radicand_reg[35]_i_2_n_3 ;
  wire \radicand_reg[39]_i_11_n_0 ;
  wire \radicand_reg[39]_i_11_n_1 ;
  wire \radicand_reg[39]_i_11_n_2 ;
  wire \radicand_reg[39]_i_11_n_3 ;
  wire \radicand_reg[39]_i_2_n_0 ;
  wire \radicand_reg[39]_i_2_n_1 ;
  wire \radicand_reg[39]_i_2_n_2 ;
  wire \radicand_reg[39]_i_2_n_3 ;
  wire \radicand_reg[39]_i_3_n_0 ;
  wire \radicand_reg[39]_i_3_n_1 ;
  wire \radicand_reg[39]_i_3_n_2 ;
  wire \radicand_reg[39]_i_3_n_3 ;
  wire \radicand_reg[3]_i_2_n_0 ;
  wire \radicand_reg[3]_i_2_n_1 ;
  wire \radicand_reg[3]_i_2_n_2 ;
  wire \radicand_reg[3]_i_2_n_3 ;
  wire \radicand_reg[43]_i_12_n_0 ;
  wire \radicand_reg[43]_i_12_n_1 ;
  wire \radicand_reg[43]_i_12_n_2 ;
  wire \radicand_reg[43]_i_12_n_3 ;
  wire \radicand_reg[43]_i_2_n_0 ;
  wire \radicand_reg[43]_i_2_n_1 ;
  wire \radicand_reg[43]_i_2_n_2 ;
  wire \radicand_reg[43]_i_2_n_3 ;
  wire \radicand_reg[43]_i_3_n_0 ;
  wire \radicand_reg[43]_i_3_n_1 ;
  wire \radicand_reg[43]_i_3_n_2 ;
  wire \radicand_reg[43]_i_3_n_3 ;
  wire \radicand_reg[47]_i_12_n_0 ;
  wire \radicand_reg[47]_i_12_n_1 ;
  wire \radicand_reg[47]_i_12_n_2 ;
  wire \radicand_reg[47]_i_12_n_3 ;
  wire \radicand_reg[47]_i_2_n_0 ;
  wire \radicand_reg[47]_i_2_n_1 ;
  wire \radicand_reg[47]_i_2_n_2 ;
  wire \radicand_reg[47]_i_2_n_3 ;
  wire \radicand_reg[47]_i_3_n_0 ;
  wire \radicand_reg[47]_i_3_n_1 ;
  wire \radicand_reg[47]_i_3_n_2 ;
  wire \radicand_reg[47]_i_3_n_3 ;
  wire \radicand_reg[51]_i_12_n_0 ;
  wire \radicand_reg[51]_i_12_n_1 ;
  wire \radicand_reg[51]_i_12_n_2 ;
  wire \radicand_reg[51]_i_12_n_3 ;
  wire \radicand_reg[51]_i_2_n_0 ;
  wire \radicand_reg[51]_i_2_n_1 ;
  wire \radicand_reg[51]_i_2_n_2 ;
  wire \radicand_reg[51]_i_2_n_3 ;
  wire \radicand_reg[51]_i_3_n_0 ;
  wire \radicand_reg[51]_i_3_n_1 ;
  wire \radicand_reg[51]_i_3_n_2 ;
  wire \radicand_reg[51]_i_3_n_3 ;
  wire \radicand_reg[55]_i_13_n_0 ;
  wire \radicand_reg[55]_i_13_n_1 ;
  wire \radicand_reg[55]_i_13_n_2 ;
  wire \radicand_reg[55]_i_13_n_3 ;
  wire \radicand_reg[55]_i_2_n_0 ;
  wire \radicand_reg[55]_i_2_n_1 ;
  wire \radicand_reg[55]_i_2_n_2 ;
  wire \radicand_reg[55]_i_2_n_3 ;
  wire \radicand_reg[55]_i_3_n_0 ;
  wire \radicand_reg[55]_i_3_n_1 ;
  wire \radicand_reg[55]_i_3_n_2 ;
  wire \radicand_reg[55]_i_3_n_3 ;
  wire \radicand_reg[59]_i_16_n_0 ;
  wire \radicand_reg[59]_i_16_n_1 ;
  wire \radicand_reg[59]_i_16_n_2 ;
  wire \radicand_reg[59]_i_16_n_3 ;
  wire \radicand_reg[59]_i_2_n_0 ;
  wire \radicand_reg[59]_i_2_n_1 ;
  wire \radicand_reg[59]_i_2_n_2 ;
  wire \radicand_reg[59]_i_2_n_3 ;
  wire \radicand_reg[59]_i_3_n_0 ;
  wire \radicand_reg[59]_i_3_n_1 ;
  wire \radicand_reg[59]_i_3_n_2 ;
  wire \radicand_reg[59]_i_3_n_3 ;
  wire \radicand_reg[63]_i_16_n_0 ;
  wire \radicand_reg[63]_i_16_n_1 ;
  wire \radicand_reg[63]_i_16_n_2 ;
  wire \radicand_reg[63]_i_16_n_3 ;
  wire \radicand_reg[63]_i_2_n_0 ;
  wire \radicand_reg[63]_i_2_n_1 ;
  wire \radicand_reg[63]_i_2_n_2 ;
  wire \radicand_reg[63]_i_2_n_3 ;
  wire \radicand_reg[63]_i_3_n_0 ;
  wire \radicand_reg[63]_i_3_n_1 ;
  wire \radicand_reg[63]_i_3_n_2 ;
  wire \radicand_reg[63]_i_3_n_3 ;
  wire \radicand_reg[67]_i_16_n_0 ;
  wire \radicand_reg[67]_i_16_n_1 ;
  wire \radicand_reg[67]_i_16_n_2 ;
  wire \radicand_reg[67]_i_16_n_3 ;
  wire \radicand_reg[67]_i_2_n_0 ;
  wire \radicand_reg[67]_i_2_n_1 ;
  wire \radicand_reg[67]_i_2_n_2 ;
  wire \radicand_reg[67]_i_2_n_3 ;
  wire \radicand_reg[67]_i_3_n_0 ;
  wire \radicand_reg[67]_i_3_n_1 ;
  wire \radicand_reg[67]_i_3_n_2 ;
  wire \radicand_reg[67]_i_3_n_3 ;
  wire \radicand_reg[71]_i_16_n_0 ;
  wire \radicand_reg[71]_i_16_n_1 ;
  wire \radicand_reg[71]_i_16_n_2 ;
  wire \radicand_reg[71]_i_16_n_3 ;
  wire \radicand_reg[71]_i_2_n_0 ;
  wire \radicand_reg[71]_i_2_n_1 ;
  wire \radicand_reg[71]_i_2_n_2 ;
  wire \radicand_reg[71]_i_2_n_3 ;
  wire \radicand_reg[71]_i_3_n_0 ;
  wire \radicand_reg[71]_i_3_n_1 ;
  wire \radicand_reg[71]_i_3_n_2 ;
  wire \radicand_reg[71]_i_3_n_3 ;
  wire \radicand_reg[75]_i_16_n_0 ;
  wire \radicand_reg[75]_i_16_n_1 ;
  wire \radicand_reg[75]_i_16_n_2 ;
  wire \radicand_reg[75]_i_16_n_3 ;
  wire \radicand_reg[75]_i_2_n_0 ;
  wire \radicand_reg[75]_i_2_n_1 ;
  wire \radicand_reg[75]_i_2_n_2 ;
  wire \radicand_reg[75]_i_2_n_3 ;
  wire \radicand_reg[75]_i_3_n_0 ;
  wire \radicand_reg[75]_i_3_n_1 ;
  wire \radicand_reg[75]_i_3_n_2 ;
  wire \radicand_reg[75]_i_3_n_3 ;
  wire \radicand_reg[79]_i_16_n_0 ;
  wire \radicand_reg[79]_i_16_n_1 ;
  wire \radicand_reg[79]_i_16_n_2 ;
  wire \radicand_reg[79]_i_16_n_3 ;
  wire \radicand_reg[79]_i_2_n_0 ;
  wire \radicand_reg[79]_i_2_n_1 ;
  wire \radicand_reg[79]_i_2_n_2 ;
  wire \radicand_reg[79]_i_2_n_3 ;
  wire \radicand_reg[79]_i_3_n_0 ;
  wire \radicand_reg[79]_i_3_n_1 ;
  wire \radicand_reg[79]_i_3_n_2 ;
  wire \radicand_reg[79]_i_3_n_3 ;
  wire \radicand_reg[7]_i_2_n_0 ;
  wire \radicand_reg[7]_i_2_n_1 ;
  wire \radicand_reg[7]_i_2_n_2 ;
  wire \radicand_reg[7]_i_2_n_3 ;
  wire \radicand_reg[83]_i_16_n_0 ;
  wire \radicand_reg[83]_i_16_n_1 ;
  wire \radicand_reg[83]_i_16_n_2 ;
  wire \radicand_reg[83]_i_16_n_3 ;
  wire \radicand_reg[83]_i_2_n_0 ;
  wire \radicand_reg[83]_i_2_n_1 ;
  wire \radicand_reg[83]_i_2_n_2 ;
  wire \radicand_reg[83]_i_2_n_3 ;
  wire \radicand_reg[83]_i_3_n_0 ;
  wire \radicand_reg[83]_i_3_n_1 ;
  wire \radicand_reg[83]_i_3_n_2 ;
  wire \radicand_reg[83]_i_3_n_3 ;
  wire \radicand_reg[87]_i_14_n_0 ;
  wire \radicand_reg[87]_i_14_n_1 ;
  wire \radicand_reg[87]_i_14_n_2 ;
  wire \radicand_reg[87]_i_14_n_3 ;
  wire \radicand_reg[87]_i_2_n_0 ;
  wire \radicand_reg[87]_i_2_n_1 ;
  wire \radicand_reg[87]_i_2_n_2 ;
  wire \radicand_reg[87]_i_2_n_3 ;
  wire \radicand_reg[87]_i_3_n_0 ;
  wire \radicand_reg[87]_i_3_n_1 ;
  wire \radicand_reg[87]_i_3_n_2 ;
  wire \radicand_reg[87]_i_3_n_3 ;
  wire \radicand_reg[91]_i_12_n_0 ;
  wire \radicand_reg[91]_i_12_n_1 ;
  wire \radicand_reg[91]_i_12_n_2 ;
  wire \radicand_reg[91]_i_12_n_3 ;
  wire \radicand_reg[91]_i_2_n_0 ;
  wire \radicand_reg[91]_i_2_n_1 ;
  wire \radicand_reg[91]_i_2_n_2 ;
  wire \radicand_reg[91]_i_2_n_3 ;
  wire \radicand_reg[91]_i_3_n_0 ;
  wire \radicand_reg[91]_i_3_n_1 ;
  wire \radicand_reg[91]_i_3_n_2 ;
  wire \radicand_reg[91]_i_3_n_3 ;
  wire \radicand_reg[95]_i_12_n_0 ;
  wire \radicand_reg[95]_i_12_n_1 ;
  wire \radicand_reg[95]_i_12_n_2 ;
  wire \radicand_reg[95]_i_12_n_3 ;
  wire \radicand_reg[95]_i_2_n_0 ;
  wire \radicand_reg[95]_i_2_n_1 ;
  wire \radicand_reg[95]_i_2_n_2 ;
  wire \radicand_reg[95]_i_2_n_3 ;
  wire \radicand_reg[95]_i_3_n_0 ;
  wire \radicand_reg[95]_i_3_n_1 ;
  wire \radicand_reg[95]_i_3_n_2 ;
  wire \radicand_reg[95]_i_3_n_3 ;
  wire \radicand_reg[97]_i_12_n_0 ;
  wire \radicand_reg[97]_i_12_n_1 ;
  wire \radicand_reg[97]_i_12_n_2 ;
  wire \radicand_reg[97]_i_12_n_3 ;
  wire \radicand_reg[97]_i_2_n_3 ;
  wire \radicand_reg[97]_i_3_n_0 ;
  wire \radicand_reg[97]_i_3_n_1 ;
  wire \radicand_reg[97]_i_3_n_2 ;
  wire \radicand_reg[97]_i_3_n_3 ;
  wire \radicand_reg_n_0_[0] ;
  wire \radicand_reg_n_0_[10] ;
  wire \radicand_reg_n_0_[11] ;
  wire \radicand_reg_n_0_[12] ;
  wire \radicand_reg_n_0_[13] ;
  wire \radicand_reg_n_0_[14] ;
  wire \radicand_reg_n_0_[15] ;
  wire \radicand_reg_n_0_[16] ;
  wire \radicand_reg_n_0_[17] ;
  wire \radicand_reg_n_0_[18] ;
  wire \radicand_reg_n_0_[19] ;
  wire \radicand_reg_n_0_[1] ;
  wire \radicand_reg_n_0_[20] ;
  wire \radicand_reg_n_0_[21] ;
  wire \radicand_reg_n_0_[22] ;
  wire \radicand_reg_n_0_[23] ;
  wire \radicand_reg_n_0_[24] ;
  wire \radicand_reg_n_0_[25] ;
  wire \radicand_reg_n_0_[26] ;
  wire \radicand_reg_n_0_[27] ;
  wire \radicand_reg_n_0_[28] ;
  wire \radicand_reg_n_0_[29] ;
  wire \radicand_reg_n_0_[2] ;
  wire \radicand_reg_n_0_[30] ;
  wire \radicand_reg_n_0_[31] ;
  wire \radicand_reg_n_0_[32] ;
  wire \radicand_reg_n_0_[33] ;
  wire \radicand_reg_n_0_[34] ;
  wire \radicand_reg_n_0_[35] ;
  wire \radicand_reg_n_0_[36] ;
  wire \radicand_reg_n_0_[37] ;
  wire \radicand_reg_n_0_[38] ;
  wire \radicand_reg_n_0_[39] ;
  wire \radicand_reg_n_0_[3] ;
  wire \radicand_reg_n_0_[40] ;
  wire \radicand_reg_n_0_[41] ;
  wire \radicand_reg_n_0_[42] ;
  wire \radicand_reg_n_0_[43] ;
  wire \radicand_reg_n_0_[44] ;
  wire \radicand_reg_n_0_[45] ;
  wire \radicand_reg_n_0_[46] ;
  wire \radicand_reg_n_0_[47] ;
  wire \radicand_reg_n_0_[48] ;
  wire \radicand_reg_n_0_[49] ;
  wire \radicand_reg_n_0_[4] ;
  wire \radicand_reg_n_0_[50] ;
  wire \radicand_reg_n_0_[51] ;
  wire \radicand_reg_n_0_[52] ;
  wire \radicand_reg_n_0_[53] ;
  wire \radicand_reg_n_0_[54] ;
  wire \radicand_reg_n_0_[55] ;
  wire \radicand_reg_n_0_[56] ;
  wire \radicand_reg_n_0_[57] ;
  wire \radicand_reg_n_0_[58] ;
  wire \radicand_reg_n_0_[59] ;
  wire \radicand_reg_n_0_[5] ;
  wire \radicand_reg_n_0_[60] ;
  wire \radicand_reg_n_0_[61] ;
  wire \radicand_reg_n_0_[62] ;
  wire \radicand_reg_n_0_[63] ;
  wire \radicand_reg_n_0_[64] ;
  wire \radicand_reg_n_0_[65] ;
  wire \radicand_reg_n_0_[66] ;
  wire \radicand_reg_n_0_[67] ;
  wire \radicand_reg_n_0_[68] ;
  wire \radicand_reg_n_0_[69] ;
  wire \radicand_reg_n_0_[6] ;
  wire \radicand_reg_n_0_[70] ;
  wire \radicand_reg_n_0_[71] ;
  wire \radicand_reg_n_0_[72] ;
  wire \radicand_reg_n_0_[73] ;
  wire \radicand_reg_n_0_[74] ;
  wire \radicand_reg_n_0_[75] ;
  wire \radicand_reg_n_0_[76] ;
  wire \radicand_reg_n_0_[77] ;
  wire \radicand_reg_n_0_[78] ;
  wire \radicand_reg_n_0_[79] ;
  wire \radicand_reg_n_0_[7] ;
  wire \radicand_reg_n_0_[80] ;
  wire \radicand_reg_n_0_[81] ;
  wire \radicand_reg_n_0_[82] ;
  wire \radicand_reg_n_0_[83] ;
  wire \radicand_reg_n_0_[84] ;
  wire \radicand_reg_n_0_[85] ;
  wire \radicand_reg_n_0_[86] ;
  wire \radicand_reg_n_0_[87] ;
  wire \radicand_reg_n_0_[88] ;
  wire \radicand_reg_n_0_[89] ;
  wire \radicand_reg_n_0_[8] ;
  wire \radicand_reg_n_0_[90] ;
  wire \radicand_reg_n_0_[91] ;
  wire \radicand_reg_n_0_[92] ;
  wire \radicand_reg_n_0_[93] ;
  wire \radicand_reg_n_0_[94] ;
  wire \radicand_reg_n_0_[95] ;
  wire \radicand_reg_n_0_[9] ;
  wire ri0_n_100;
  wire ri0_n_101;
  wire ri0_n_102;
  wire ri0_n_103;
  wire ri0_n_104;
  wire ri0_n_105;
  wire ri0_n_106;
  wire ri0_n_107;
  wire ri0_n_108;
  wire ri0_n_109;
  wire ri0_n_110;
  wire ri0_n_111;
  wire ri0_n_112;
  wire ri0_n_113;
  wire ri0_n_114;
  wire ri0_n_115;
  wire ri0_n_116;
  wire ri0_n_117;
  wire ri0_n_118;
  wire ri0_n_119;
  wire ri0_n_120;
  wire ri0_n_121;
  wire ri0_n_122;
  wire ri0_n_123;
  wire ri0_n_124;
  wire ri0_n_125;
  wire ri0_n_126;
  wire ri0_n_127;
  wire ri0_n_128;
  wire ri0_n_129;
  wire ri0_n_130;
  wire ri0_n_131;
  wire ri0_n_132;
  wire ri0_n_133;
  wire ri0_n_134;
  wire ri0_n_135;
  wire ri0_n_136;
  wire ri0_n_137;
  wire ri0_n_138;
  wire ri0_n_139;
  wire ri0_n_140;
  wire ri0_n_141;
  wire ri0_n_142;
  wire ri0_n_143;
  wire ri0_n_144;
  wire ri0_n_145;
  wire ri0_n_146;
  wire ri0_n_147;
  wire ri0_n_148;
  wire ri0_n_149;
  wire ri0_n_150;
  wire ri0_n_151;
  wire ri0_n_152;
  wire ri0_n_153;
  wire ri0_n_58;
  wire ri0_n_59;
  wire ri0_n_60;
  wire ri0_n_61;
  wire ri0_n_62;
  wire ri0_n_63;
  wire ri0_n_64;
  wire ri0_n_65;
  wire ri0_n_66;
  wire ri0_n_67;
  wire ri0_n_68;
  wire ri0_n_69;
  wire ri0_n_70;
  wire ri0_n_71;
  wire ri0_n_72;
  wire ri0_n_73;
  wire ri0_n_74;
  wire ri0_n_75;
  wire ri0_n_76;
  wire ri0_n_77;
  wire ri0_n_78;
  wire ri0_n_79;
  wire ri0_n_80;
  wire ri0_n_81;
  wire ri0_n_82;
  wire ri0_n_83;
  wire ri0_n_84;
  wire ri0_n_85;
  wire ri0_n_86;
  wire ri0_n_87;
  wire ri0_n_88;
  wire ri0_n_89;
  wire ri0_n_90;
  wire ri0_n_91;
  wire ri0_n_92;
  wire ri0_n_93;
  wire ri0_n_94;
  wire ri0_n_95;
  wire ri0_n_96;
  wire ri0_n_97;
  wire ri0_n_98;
  wire ri0_n_99;
  wire \ri[16]_i_3_n_0 ;
  wire [30:0]ri_reg__0__0;
  wire ri_reg__0_n_58;
  wire ri_reg__0_n_59;
  wire ri_reg__0_n_60;
  wire ri_reg__0_n_61;
  wire ri_reg__0_n_62;
  wire ri_reg__0_n_63;
  wire ri_reg__0_n_64;
  wire ri_reg__0_n_65;
  wire ri_reg__0_n_66;
  wire ri_reg__0_n_67;
  wire ri_reg__0_n_68;
  wire ri_reg__0_n_69;
  wire ri_reg__0_n_70;
  wire ri_reg__0_n_71;
  wire ri_reg__0_n_72;
  wire ri_reg__0_n_73;
  wire ri_reg__0_n_74;
  wire \ri_reg_n_0_[0] ;
  wire \ri_reg_n_0_[10] ;
  wire \ri_reg_n_0_[11] ;
  wire \ri_reg_n_0_[12] ;
  wire \ri_reg_n_0_[13] ;
  wire \ri_reg_n_0_[14] ;
  wire \ri_reg_n_0_[15] ;
  wire \ri_reg_n_0_[16] ;
  wire \ri_reg_n_0_[1] ;
  wire \ri_reg_n_0_[2] ;
  wire \ri_reg_n_0_[3] ;
  wire \ri_reg_n_0_[4] ;
  wire \ri_reg_n_0_[5] ;
  wire \ri_reg_n_0_[6] ;
  wire \ri_reg_n_0_[7] ;
  wire \ri_reg_n_0_[8] ;
  wire \ri_reg_n_0_[9] ;
  wire root;
  wire \root[0]_i_10_n_0 ;
  wire \root[0]_i_11_n_0 ;
  wire \root[0]_i_12_n_0 ;
  wire \root[0]_i_13_n_0 ;
  wire \root[0]_i_14_n_0 ;
  wire \root[0]_i_15_n_0 ;
  wire \root[0]_i_16_n_0 ;
  wire \root[0]_i_18_n_0 ;
  wire \root[0]_i_19_n_0 ;
  wire \root[0]_i_1_n_0 ;
  wire \root[0]_i_20_n_0 ;
  wire \root[0]_i_21_n_0 ;
  wire \root[0]_i_22_n_0 ;
  wire \root[0]_i_23_n_0 ;
  wire \root[0]_i_24_n_0 ;
  wire \root[0]_i_25_n_0 ;
  wire \root[0]_i_27_n_0 ;
  wire \root[0]_i_28_n_0 ;
  wire \root[0]_i_29_n_0 ;
  wire \root[0]_i_30_n_0 ;
  wire \root[0]_i_31_n_0 ;
  wire \root[0]_i_32_n_0 ;
  wire \root[0]_i_33_n_0 ;
  wire \root[0]_i_34_n_0 ;
  wire \root[0]_i_36_n_0 ;
  wire \root[0]_i_37_n_0 ;
  wire \root[0]_i_38_n_0 ;
  wire \root[0]_i_39_n_0 ;
  wire \root[0]_i_40_n_0 ;
  wire \root[0]_i_41_n_0 ;
  wire \root[0]_i_42_n_0 ;
  wire \root[0]_i_43_n_0 ;
  wire \root[0]_i_45_n_0 ;
  wire \root[0]_i_46_n_0 ;
  wire \root[0]_i_47_n_0 ;
  wire \root[0]_i_48_n_0 ;
  wire \root[0]_i_49_n_0 ;
  wire \root[0]_i_4_n_0 ;
  wire \root[0]_i_50_n_0 ;
  wire \root[0]_i_51_n_0 ;
  wire \root[0]_i_52_n_0 ;
  wire \root[0]_i_53_n_0 ;
  wire \root[0]_i_54_n_0 ;
  wire \root[0]_i_55_n_0 ;
  wire \root[0]_i_56_n_0 ;
  wire \root[0]_i_57_n_0 ;
  wire \root[0]_i_58_n_0 ;
  wire \root[0]_i_59_n_0 ;
  wire \root[0]_i_5_n_0 ;
  wire \root[0]_i_6_n_0 ;
  wire \root[0]_i_7_n_0 ;
  wire \root[0]_i_9_n_0 ;
  wire \root[10]_i_1_n_0 ;
  wire \root[11]_i_1_n_0 ;
  wire \root[12]_i_1_n_0 ;
  wire \root[13]_i_1_n_0 ;
  wire \root[14]_i_1_n_0 ;
  wire \root[15]_i_1_n_0 ;
  wire \root[16]_i_1_n_0 ;
  wire \root[17]_i_1_n_0 ;
  wire \root[18]_i_1_n_0 ;
  wire \root[19]_i_1_n_0 ;
  wire \root[1]_i_1_n_0 ;
  wire \root[20]_i_1_n_0 ;
  wire \root[21]_i_1_n_0 ;
  wire \root[22]_i_1_n_0 ;
  wire \root[23]_i_1_n_0 ;
  wire \root[24]_i_1_n_0 ;
  wire \root[25]_i_1_n_0 ;
  wire \root[26]_i_1_n_0 ;
  wire \root[27]_i_1_n_0 ;
  wire \root[28]_i_1_n_0 ;
  wire \root[29]_i_1_n_0 ;
  wire \root[2]_i_1_n_0 ;
  wire \root[30]_i_1_n_0 ;
  wire \root[31]_i_1_n_0 ;
  wire \root[32]_i_1_n_0 ;
  wire \root[33]_i_1_n_0 ;
  wire \root[34]_i_1_n_0 ;
  wire \root[35]_i_1_n_0 ;
  wire \root[36]_i_1_n_0 ;
  wire \root[37]_i_1_n_0 ;
  wire \root[38]_i_1_n_0 ;
  wire \root[39]_i_1_n_0 ;
  wire \root[3]_i_1_n_0 ;
  wire \root[40]_i_1_n_0 ;
  wire \root[41]_i_1_n_0 ;
  wire \root[42]_i_1_n_0 ;
  wire \root[43]_i_1_n_0 ;
  wire \root[44]_i_1_n_0 ;
  wire \root[45]_i_1_n_0 ;
  wire \root[46]_i_1_n_0 ;
  wire \root[47]_i_1_n_0 ;
  wire \root[48]_i_2_n_0 ;
  wire \root[4]_i_1_n_0 ;
  wire \root[5]_i_1_n_0 ;
  wire \root[6]_i_1_n_0 ;
  wire \root[7]_i_1_n_0 ;
  wire \root[8]_i_1_n_0 ;
  wire \root[9]_i_1_n_0 ;
  wire [48:1]root_next;
  wire [0:0]root_next__0;
  wire \root_reg[0]_i_17_n_0 ;
  wire \root_reg[0]_i_17_n_1 ;
  wire \root_reg[0]_i_17_n_2 ;
  wire \root_reg[0]_i_17_n_3 ;
  wire \root_reg[0]_i_26_n_0 ;
  wire \root_reg[0]_i_26_n_1 ;
  wire \root_reg[0]_i_26_n_2 ;
  wire \root_reg[0]_i_26_n_3 ;
  wire \root_reg[0]_i_2_n_3 ;
  wire \root_reg[0]_i_35_n_0 ;
  wire \root_reg[0]_i_35_n_1 ;
  wire \root_reg[0]_i_35_n_2 ;
  wire \root_reg[0]_i_35_n_3 ;
  wire \root_reg[0]_i_3_n_0 ;
  wire \root_reg[0]_i_3_n_1 ;
  wire \root_reg[0]_i_3_n_2 ;
  wire \root_reg[0]_i_3_n_3 ;
  wire \root_reg[0]_i_44_n_0 ;
  wire \root_reg[0]_i_44_n_1 ;
  wire \root_reg[0]_i_44_n_2 ;
  wire \root_reg[0]_i_44_n_3 ;
  wire \root_reg[0]_i_8_n_0 ;
  wire \root_reg[0]_i_8_n_1 ;
  wire \root_reg[0]_i_8_n_2 ;
  wire \root_reg[0]_i_8_n_3 ;
  wire \root_reg_n_0_[48] ;
  wire \root_rem[0]_i_1_n_0 ;
  wire \root_rem[10]_i_1_n_0 ;
  wire \root_rem[11]_i_1_n_0 ;
  wire \root_rem[12]_i_1_n_0 ;
  wire \root_rem[12]_i_3_n_0 ;
  wire \root_rem[12]_i_4_n_0 ;
  wire \root_rem[12]_i_5_n_0 ;
  wire \root_rem[12]_i_6_n_0 ;
  wire \root_rem[13]_i_1_n_0 ;
  wire \root_rem[14]_i_1_n_0 ;
  wire \root_rem[15]_i_1_n_0 ;
  wire \root_rem[16]_i_1_n_0 ;
  wire \root_rem[16]_i_3_n_0 ;
  wire \root_rem[16]_i_4_n_0 ;
  wire \root_rem[16]_i_5_n_0 ;
  wire \root_rem[16]_i_6_n_0 ;
  wire \root_rem[17]_i_1_n_0 ;
  wire \root_rem[18]_i_1_n_0 ;
  wire \root_rem[19]_i_1_n_0 ;
  wire \root_rem[1]_i_1_n_0 ;
  wire \root_rem[20]_i_1_n_0 ;
  wire \root_rem[20]_i_3_n_0 ;
  wire \root_rem[20]_i_4_n_0 ;
  wire \root_rem[20]_i_5_n_0 ;
  wire \root_rem[20]_i_6_n_0 ;
  wire \root_rem[21]_i_1_n_0 ;
  wire \root_rem[22]_i_1_n_0 ;
  wire \root_rem[23]_i_1_n_0 ;
  wire \root_rem[24]_i_1_n_0 ;
  wire \root_rem[24]_i_3_n_0 ;
  wire \root_rem[24]_i_4_n_0 ;
  wire \root_rem[24]_i_5_n_0 ;
  wire \root_rem[24]_i_6_n_0 ;
  wire \root_rem[25]_i_1_n_0 ;
  wire \root_rem[26]_i_1_n_0 ;
  wire \root_rem[27]_i_1_n_0 ;
  wire \root_rem[28]_i_1_n_0 ;
  wire \root_rem[28]_i_3_n_0 ;
  wire \root_rem[28]_i_4_n_0 ;
  wire \root_rem[28]_i_5_n_0 ;
  wire \root_rem[28]_i_6_n_0 ;
  wire \root_rem[29]_i_1_n_0 ;
  wire \root_rem[2]_i_1_n_0 ;
  wire \root_rem[30]_i_1_n_0 ;
  wire \root_rem[31]_i_1_n_0 ;
  wire \root_rem[32]_i_1_n_0 ;
  wire \root_rem[32]_i_3_n_0 ;
  wire \root_rem[32]_i_4_n_0 ;
  wire \root_rem[32]_i_5_n_0 ;
  wire \root_rem[32]_i_6_n_0 ;
  wire \root_rem[33]_i_1_n_0 ;
  wire \root_rem[34]_i_1_n_0 ;
  wire \root_rem[35]_i_1_n_0 ;
  wire \root_rem[36]_i_1_n_0 ;
  wire \root_rem[36]_i_3_n_0 ;
  wire \root_rem[36]_i_4_n_0 ;
  wire \root_rem[36]_i_5_n_0 ;
  wire \root_rem[36]_i_6_n_0 ;
  wire \root_rem[37]_i_1_n_0 ;
  wire \root_rem[38]_i_1_n_0 ;
  wire \root_rem[39]_i_1_n_0 ;
  wire \root_rem[3]_i_1_n_0 ;
  wire \root_rem[40]_i_1_n_0 ;
  wire \root_rem[40]_i_3_n_0 ;
  wire \root_rem[40]_i_4_n_0 ;
  wire \root_rem[40]_i_5_n_0 ;
  wire \root_rem[40]_i_6_n_0 ;
  wire \root_rem[41]_i_1_n_0 ;
  wire \root_rem[42]_i_1_n_0 ;
  wire \root_rem[43]_i_1_n_0 ;
  wire \root_rem[44]_i_1_n_0 ;
  wire \root_rem[44]_i_3_n_0 ;
  wire \root_rem[44]_i_4_n_0 ;
  wire \root_rem[44]_i_5_n_0 ;
  wire \root_rem[44]_i_6_n_0 ;
  wire \root_rem[45]_i_1_n_0 ;
  wire \root_rem[46]_i_1_n_0 ;
  wire \root_rem[47]_i_1_n_0 ;
  wire \root_rem[48]_i_1_n_0 ;
  wire \root_rem[48]_i_3_n_0 ;
  wire \root_rem[48]_i_4_n_0 ;
  wire \root_rem[48]_i_5_n_0 ;
  wire \root_rem[48]_i_6_n_0 ;
  wire \root_rem[4]_i_1_n_0 ;
  wire \root_rem[4]_i_3_n_0 ;
  wire \root_rem[4]_i_4_n_0 ;
  wire \root_rem[4]_i_5_n_0 ;
  wire \root_rem[4]_i_6_n_0 ;
  wire \root_rem[5]_i_1_n_0 ;
  wire \root_rem[6]_i_1_n_0 ;
  wire \root_rem[7]_i_1_n_0 ;
  wire \root_rem[8]_i_1_n_0 ;
  wire \root_rem[8]_i_3_n_0 ;
  wire \root_rem[8]_i_4_n_0 ;
  wire \root_rem[8]_i_5_n_0 ;
  wire \root_rem[8]_i_6_n_0 ;
  wire \root_rem[9]_i_1_n_0 ;
  wire [50:1]root_rem_next0;
  wire \root_rem_reg[12]_i_2_n_0 ;
  wire \root_rem_reg[12]_i_2_n_1 ;
  wire \root_rem_reg[12]_i_2_n_2 ;
  wire \root_rem_reg[12]_i_2_n_3 ;
  wire \root_rem_reg[16]_i_2_n_0 ;
  wire \root_rem_reg[16]_i_2_n_1 ;
  wire \root_rem_reg[16]_i_2_n_2 ;
  wire \root_rem_reg[16]_i_2_n_3 ;
  wire \root_rem_reg[20]_i_2_n_0 ;
  wire \root_rem_reg[20]_i_2_n_1 ;
  wire \root_rem_reg[20]_i_2_n_2 ;
  wire \root_rem_reg[20]_i_2_n_3 ;
  wire \root_rem_reg[24]_i_2_n_0 ;
  wire \root_rem_reg[24]_i_2_n_1 ;
  wire \root_rem_reg[24]_i_2_n_2 ;
  wire \root_rem_reg[24]_i_2_n_3 ;
  wire \root_rem_reg[28]_i_2_n_0 ;
  wire \root_rem_reg[28]_i_2_n_1 ;
  wire \root_rem_reg[28]_i_2_n_2 ;
  wire \root_rem_reg[28]_i_2_n_3 ;
  wire \root_rem_reg[32]_i_2_n_0 ;
  wire \root_rem_reg[32]_i_2_n_1 ;
  wire \root_rem_reg[32]_i_2_n_2 ;
  wire \root_rem_reg[32]_i_2_n_3 ;
  wire \root_rem_reg[36]_i_2_n_0 ;
  wire \root_rem_reg[36]_i_2_n_1 ;
  wire \root_rem_reg[36]_i_2_n_2 ;
  wire \root_rem_reg[36]_i_2_n_3 ;
  wire \root_rem_reg[40]_i_2_n_0 ;
  wire \root_rem_reg[40]_i_2_n_1 ;
  wire \root_rem_reg[40]_i_2_n_2 ;
  wire \root_rem_reg[40]_i_2_n_3 ;
  wire \root_rem_reg[44]_i_2_n_0 ;
  wire \root_rem_reg[44]_i_2_n_1 ;
  wire \root_rem_reg[44]_i_2_n_2 ;
  wire \root_rem_reg[44]_i_2_n_3 ;
  wire \root_rem_reg[48]_i_2_n_0 ;
  wire \root_rem_reg[48]_i_2_n_1 ;
  wire \root_rem_reg[48]_i_2_n_2 ;
  wire \root_rem_reg[48]_i_2_n_3 ;
  wire \root_rem_reg[4]_i_2_n_0 ;
  wire \root_rem_reg[4]_i_2_n_1 ;
  wire \root_rem_reg[4]_i_2_n_2 ;
  wire \root_rem_reg[4]_i_2_n_3 ;
  wire \root_rem_reg[8]_i_2_n_0 ;
  wire \root_rem_reg[8]_i_2_n_1 ;
  wire \root_rem_reg[8]_i_2_n_2 ;
  wire \root_rem_reg[8]_i_2_n_3 ;
  wire [50:0]root_shift;
  wire rr0_n_100;
  wire rr0_n_101;
  wire rr0_n_102;
  wire rr0_n_103;
  wire rr0_n_104;
  wire rr0_n_105;
  wire rr0_n_106;
  wire rr0_n_107;
  wire rr0_n_108;
  wire rr0_n_109;
  wire rr0_n_110;
  wire rr0_n_111;
  wire rr0_n_112;
  wire rr0_n_113;
  wire rr0_n_114;
  wire rr0_n_115;
  wire rr0_n_116;
  wire rr0_n_117;
  wire rr0_n_118;
  wire rr0_n_119;
  wire rr0_n_120;
  wire rr0_n_121;
  wire rr0_n_122;
  wire rr0_n_123;
  wire rr0_n_124;
  wire rr0_n_125;
  wire rr0_n_126;
  wire rr0_n_127;
  wire rr0_n_128;
  wire rr0_n_129;
  wire rr0_n_130;
  wire rr0_n_131;
  wire rr0_n_132;
  wire rr0_n_133;
  wire rr0_n_134;
  wire rr0_n_135;
  wire rr0_n_136;
  wire rr0_n_137;
  wire rr0_n_138;
  wire rr0_n_139;
  wire rr0_n_140;
  wire rr0_n_141;
  wire rr0_n_142;
  wire rr0_n_143;
  wire rr0_n_144;
  wire rr0_n_145;
  wire rr0_n_146;
  wire rr0_n_147;
  wire rr0_n_148;
  wire rr0_n_149;
  wire rr0_n_150;
  wire rr0_n_151;
  wire rr0_n_152;
  wire rr0_n_153;
  wire rr0_n_58;
  wire rr0_n_59;
  wire rr0_n_60;
  wire rr0_n_61;
  wire rr0_n_62;
  wire rr0_n_63;
  wire rr0_n_64;
  wire rr0_n_65;
  wire rr0_n_66;
  wire rr0_n_67;
  wire rr0_n_68;
  wire rr0_n_69;
  wire rr0_n_70;
  wire rr0_n_71;
  wire rr0_n_72;
  wire rr0_n_73;
  wire rr0_n_74;
  wire rr0_n_75;
  wire rr0_n_76;
  wire rr0_n_77;
  wire rr0_n_78;
  wire rr0_n_79;
  wire rr0_n_80;
  wire rr0_n_81;
  wire rr0_n_82;
  wire rr0_n_83;
  wire rr0_n_84;
  wire rr0_n_85;
  wire rr0_n_86;
  wire rr0_n_87;
  wire rr0_n_88;
  wire rr0_n_89;
  wire rr0_n_90;
  wire rr0_n_91;
  wire rr0_n_92;
  wire rr0_n_93;
  wire rr0_n_94;
  wire rr0_n_95;
  wire rr0_n_96;
  wire rr0_n_97;
  wire rr0_n_98;
  wire rr0_n_99;
  wire rr_reg__0_n_100;
  wire rr_reg__0_n_101;
  wire rr_reg__0_n_102;
  wire rr_reg__0_n_103;
  wire rr_reg__0_n_104;
  wire rr_reg__0_n_105;
  wire rr_reg__0_n_58;
  wire rr_reg__0_n_59;
  wire rr_reg__0_n_60;
  wire rr_reg__0_n_61;
  wire rr_reg__0_n_62;
  wire rr_reg__0_n_63;
  wire rr_reg__0_n_64;
  wire rr_reg__0_n_65;
  wire rr_reg__0_n_66;
  wire rr_reg__0_n_67;
  wire rr_reg__0_n_68;
  wire rr_reg__0_n_69;
  wire rr_reg__0_n_70;
  wire rr_reg__0_n_71;
  wire rr_reg__0_n_72;
  wire rr_reg__0_n_73;
  wire rr_reg__0_n_74;
  wire rr_reg__0_n_75;
  wire rr_reg__0_n_76;
  wire rr_reg__0_n_77;
  wire rr_reg__0_n_78;
  wire rr_reg__0_n_79;
  wire rr_reg__0_n_80;
  wire rr_reg__0_n_81;
  wire rr_reg__0_n_82;
  wire rr_reg__0_n_83;
  wire rr_reg__0_n_84;
  wire rr_reg__0_n_85;
  wire rr_reg__0_n_86;
  wire rr_reg__0_n_87;
  wire rr_reg__0_n_88;
  wire rr_reg__0_n_89;
  wire rr_reg__0_n_90;
  wire rr_reg__0_n_91;
  wire rr_reg__0_n_92;
  wire rr_reg__0_n_93;
  wire rr_reg__0_n_94;
  wire rr_reg__0_n_95;
  wire rr_reg__0_n_96;
  wire rr_reg__0_n_97;
  wire rr_reg__0_n_98;
  wire rr_reg__0_n_99;
  wire [16:0]rr_reg__1;
  wire rst;
  wire rst_0;
  wire s_axis_config_tready;
  wire [5:0]sel0;
  wire square_im__0_n_100;
  wire square_im__0_n_101;
  wire square_im__0_n_102;
  wire square_im__0_n_103;
  wire square_im__0_n_104;
  wire square_im__0_n_105;
  wire square_im__0_n_106;
  wire square_im__0_n_107;
  wire square_im__0_n_108;
  wire square_im__0_n_109;
  wire square_im__0_n_110;
  wire square_im__0_n_111;
  wire square_im__0_n_112;
  wire square_im__0_n_113;
  wire square_im__0_n_114;
  wire square_im__0_n_115;
  wire square_im__0_n_116;
  wire square_im__0_n_117;
  wire square_im__0_n_118;
  wire square_im__0_n_119;
  wire square_im__0_n_120;
  wire square_im__0_n_121;
  wire square_im__0_n_122;
  wire square_im__0_n_123;
  wire square_im__0_n_124;
  wire square_im__0_n_125;
  wire square_im__0_n_126;
  wire square_im__0_n_127;
  wire square_im__0_n_128;
  wire square_im__0_n_129;
  wire square_im__0_n_130;
  wire square_im__0_n_131;
  wire square_im__0_n_132;
  wire square_im__0_n_133;
  wire square_im__0_n_134;
  wire square_im__0_n_135;
  wire square_im__0_n_136;
  wire square_im__0_n_137;
  wire square_im__0_n_138;
  wire square_im__0_n_139;
  wire square_im__0_n_140;
  wire square_im__0_n_141;
  wire square_im__0_n_142;
  wire square_im__0_n_143;
  wire square_im__0_n_144;
  wire square_im__0_n_145;
  wire square_im__0_n_146;
  wire square_im__0_n_147;
  wire square_im__0_n_148;
  wire square_im__0_n_149;
  wire square_im__0_n_150;
  wire square_im__0_n_151;
  wire square_im__0_n_152;
  wire square_im__0_n_153;
  wire square_im__0_n_58;
  wire square_im__0_n_59;
  wire square_im__0_n_60;
  wire square_im__0_n_61;
  wire square_im__0_n_62;
  wire square_im__0_n_63;
  wire square_im__0_n_64;
  wire square_im__0_n_65;
  wire square_im__0_n_66;
  wire square_im__0_n_67;
  wire square_im__0_n_68;
  wire square_im__0_n_69;
  wire square_im__0_n_70;
  wire square_im__0_n_71;
  wire square_im__0_n_72;
  wire square_im__0_n_73;
  wire square_im__0_n_74;
  wire square_im__0_n_75;
  wire square_im__0_n_76;
  wire square_im__0_n_77;
  wire square_im__0_n_78;
  wire square_im__0_n_79;
  wire square_im__0_n_80;
  wire square_im__0_n_81;
  wire square_im__0_n_82;
  wire square_im__0_n_83;
  wire square_im__0_n_84;
  wire square_im__0_n_85;
  wire square_im__0_n_86;
  wire square_im__0_n_87;
  wire square_im__0_n_88;
  wire square_im__0_n_89;
  wire square_im__0_n_90;
  wire square_im__0_n_91;
  wire square_im__0_n_92;
  wire square_im__0_n_93;
  wire square_im__0_n_94;
  wire square_im__0_n_95;
  wire square_im__0_n_96;
  wire square_im__0_n_97;
  wire square_im__0_n_98;
  wire square_im__0_n_99;
  wire [1:0]square_im__1_0;
  wire square_im__1_n_100;
  wire square_im__1_n_101;
  wire square_im__1_n_102;
  wire square_im__1_n_103;
  wire square_im__1_n_104;
  wire square_im__1_n_105;
  wire square_im__1_n_58;
  wire square_im__1_n_59;
  wire square_im__1_n_60;
  wire square_im__1_n_61;
  wire square_im__1_n_62;
  wire square_im__1_n_63;
  wire square_im__1_n_64;
  wire square_im__1_n_65;
  wire square_im__1_n_66;
  wire square_im__1_n_67;
  wire square_im__1_n_68;
  wire square_im__1_n_69;
  wire square_im__1_n_70;
  wire square_im__1_n_71;
  wire square_im__1_n_72;
  wire square_im__1_n_73;
  wire square_im__1_n_74;
  wire square_im__1_n_75;
  wire square_im__1_n_76;
  wire square_im__1_n_77;
  wire square_im__1_n_78;
  wire square_im__1_n_79;
  wire square_im__1_n_80;
  wire square_im__1_n_81;
  wire square_im__1_n_82;
  wire square_im__1_n_83;
  wire square_im__1_n_84;
  wire square_im__1_n_85;
  wire square_im__1_n_86;
  wire square_im__1_n_87;
  wire square_im__1_n_88;
  wire square_im__1_n_89;
  wire square_im__1_n_90;
  wire square_im__1_n_91;
  wire square_im__1_n_92;
  wire square_im__1_n_93;
  wire square_im__1_n_94;
  wire square_im__1_n_95;
  wire square_im__1_n_96;
  wire square_im__1_n_97;
  wire square_im__1_n_98;
  wire square_im__1_n_99;
  wire square_im__2_i_10_n_0;
  wire square_im__2_i_11_n_0;
  wire square_im__2_i_12_n_0;
  wire square_im__2_i_13_n_0;
  wire square_im__2_i_14_n_0;
  wire square_im__2_i_15_n_0;
  wire square_im__2_i_16_n_0;
  wire square_im__2_i_17_n_0;
  wire square_im__2_i_18_n_0;
  wire square_im__2_i_19_n_0;
  wire square_im__2_i_1_n_0;
  wire square_im__2_i_1_n_1;
  wire square_im__2_i_1_n_2;
  wire square_im__2_i_1_n_3;
  wire square_im__2_i_20_n_0;
  wire square_im__2_i_2_n_0;
  wire square_im__2_i_2_n_1;
  wire square_im__2_i_2_n_2;
  wire square_im__2_i_2_n_3;
  wire square_im__2_i_3_n_0;
  wire square_im__2_i_3_n_1;
  wire square_im__2_i_3_n_2;
  wire square_im__2_i_3_n_3;
  wire square_im__2_i_4_n_0;
  wire square_im__2_i_4_n_1;
  wire square_im__2_i_4_n_2;
  wire square_im__2_i_4_n_3;
  wire square_im__2_i_5_n_0;
  wire square_im__2_i_6_n_0;
  wire square_im__2_i_7_n_0;
  wire square_im__2_i_8_n_0;
  wire square_im__2_i_9_n_0;
  wire square_im__2_n_106;
  wire square_im__2_n_107;
  wire square_im__2_n_108;
  wire square_im__2_n_109;
  wire square_im__2_n_110;
  wire square_im__2_n_111;
  wire square_im__2_n_112;
  wire square_im__2_n_113;
  wire square_im__2_n_114;
  wire square_im__2_n_115;
  wire square_im__2_n_116;
  wire square_im__2_n_117;
  wire square_im__2_n_118;
  wire square_im__2_n_119;
  wire square_im__2_n_120;
  wire square_im__2_n_121;
  wire square_im__2_n_122;
  wire square_im__2_n_123;
  wire square_im__2_n_124;
  wire square_im__2_n_125;
  wire square_im__2_n_126;
  wire square_im__2_n_127;
  wire square_im__2_n_128;
  wire square_im__2_n_129;
  wire square_im__2_n_130;
  wire square_im__2_n_131;
  wire square_im__2_n_132;
  wire square_im__2_n_133;
  wire square_im__2_n_134;
  wire square_im__2_n_135;
  wire square_im__2_n_136;
  wire square_im__2_n_137;
  wire square_im__2_n_138;
  wire square_im__2_n_139;
  wire square_im__2_n_140;
  wire square_im__2_n_141;
  wire square_im__2_n_142;
  wire square_im__2_n_143;
  wire square_im__2_n_144;
  wire square_im__2_n_145;
  wire square_im__2_n_146;
  wire square_im__2_n_147;
  wire square_im__2_n_148;
  wire square_im__2_n_149;
  wire square_im__2_n_150;
  wire square_im__2_n_151;
  wire square_im__2_n_152;
  wire square_im__2_n_153;
  wire square_im__3_n_106;
  wire square_im__3_n_107;
  wire square_im__3_n_108;
  wire square_im__3_n_109;
  wire square_im__3_n_110;
  wire square_im__3_n_111;
  wire square_im__3_n_112;
  wire square_im__3_n_113;
  wire square_im__3_n_114;
  wire square_im__3_n_115;
  wire square_im__3_n_116;
  wire square_im__3_n_117;
  wire square_im__3_n_118;
  wire square_im__3_n_119;
  wire square_im__3_n_120;
  wire square_im__3_n_121;
  wire square_im__3_n_122;
  wire square_im__3_n_123;
  wire square_im__3_n_124;
  wire square_im__3_n_125;
  wire square_im__3_n_126;
  wire square_im__3_n_127;
  wire square_im__3_n_128;
  wire square_im__3_n_129;
  wire square_im__3_n_130;
  wire square_im__3_n_131;
  wire square_im__3_n_132;
  wire square_im__3_n_133;
  wire square_im__3_n_134;
  wire square_im__3_n_135;
  wire square_im__3_n_136;
  wire square_im__3_n_137;
  wire square_im__3_n_138;
  wire square_im__3_n_139;
  wire square_im__3_n_140;
  wire square_im__3_n_141;
  wire square_im__3_n_142;
  wire square_im__3_n_143;
  wire square_im__3_n_144;
  wire square_im__3_n_145;
  wire square_im__3_n_146;
  wire square_im__3_n_147;
  wire square_im__3_n_148;
  wire square_im__3_n_149;
  wire square_im__3_n_150;
  wire square_im__3_n_151;
  wire square_im__3_n_152;
  wire square_im__3_n_153;
  wire square_im__4_n_100;
  wire square_im__4_n_101;
  wire square_im__4_n_102;
  wire square_im__4_n_103;
  wire square_im__4_n_104;
  wire square_im__4_n_105;
  wire square_im__4_n_58;
  wire square_im__4_n_59;
  wire square_im__4_n_60;
  wire square_im__4_n_61;
  wire square_im__4_n_62;
  wire square_im__4_n_63;
  wire square_im__4_n_64;
  wire square_im__4_n_65;
  wire square_im__4_n_66;
  wire square_im__4_n_67;
  wire square_im__4_n_68;
  wire square_im__4_n_69;
  wire square_im__4_n_70;
  wire square_im__4_n_71;
  wire square_im__4_n_72;
  wire square_im__4_n_73;
  wire square_im__4_n_74;
  wire square_im__4_n_75;
  wire square_im__4_n_76;
  wire square_im__4_n_77;
  wire square_im__4_n_78;
  wire square_im__4_n_79;
  wire square_im__4_n_80;
  wire square_im__4_n_81;
  wire square_im__4_n_82;
  wire square_im__4_n_83;
  wire square_im__4_n_84;
  wire square_im__4_n_85;
  wire square_im__4_n_86;
  wire square_im__4_n_87;
  wire square_im__4_n_88;
  wire square_im__4_n_89;
  wire square_im__4_n_90;
  wire square_im__4_n_91;
  wire square_im__4_n_92;
  wire square_im__4_n_93;
  wire square_im__4_n_94;
  wire square_im__4_n_95;
  wire square_im__4_n_96;
  wire square_im__4_n_97;
  wire square_im__4_n_98;
  wire square_im__4_n_99;
  wire square_im__5_n_100;
  wire square_im__5_n_101;
  wire square_im__5_n_102;
  wire square_im__5_n_103;
  wire square_im__5_n_104;
  wire square_im__5_n_105;
  wire square_im__5_n_106;
  wire square_im__5_n_107;
  wire square_im__5_n_108;
  wire square_im__5_n_109;
  wire square_im__5_n_110;
  wire square_im__5_n_111;
  wire square_im__5_n_112;
  wire square_im__5_n_113;
  wire square_im__5_n_114;
  wire square_im__5_n_115;
  wire square_im__5_n_116;
  wire square_im__5_n_117;
  wire square_im__5_n_118;
  wire square_im__5_n_119;
  wire square_im__5_n_120;
  wire square_im__5_n_121;
  wire square_im__5_n_122;
  wire square_im__5_n_123;
  wire square_im__5_n_124;
  wire square_im__5_n_125;
  wire square_im__5_n_126;
  wire square_im__5_n_127;
  wire square_im__5_n_128;
  wire square_im__5_n_129;
  wire square_im__5_n_130;
  wire square_im__5_n_131;
  wire square_im__5_n_132;
  wire square_im__5_n_133;
  wire square_im__5_n_134;
  wire square_im__5_n_135;
  wire square_im__5_n_136;
  wire square_im__5_n_137;
  wire square_im__5_n_138;
  wire square_im__5_n_139;
  wire square_im__5_n_140;
  wire square_im__5_n_141;
  wire square_im__5_n_142;
  wire square_im__5_n_143;
  wire square_im__5_n_144;
  wire square_im__5_n_145;
  wire square_im__5_n_146;
  wire square_im__5_n_147;
  wire square_im__5_n_148;
  wire square_im__5_n_149;
  wire square_im__5_n_150;
  wire square_im__5_n_151;
  wire square_im__5_n_152;
  wire square_im__5_n_153;
  wire square_im__5_n_58;
  wire square_im__5_n_59;
  wire square_im__5_n_60;
  wire square_im__5_n_61;
  wire square_im__5_n_62;
  wire square_im__5_n_63;
  wire square_im__5_n_64;
  wire square_im__5_n_65;
  wire square_im__5_n_66;
  wire square_im__5_n_67;
  wire square_im__5_n_68;
  wire square_im__5_n_69;
  wire square_im__5_n_70;
  wire square_im__5_n_71;
  wire square_im__5_n_72;
  wire square_im__5_n_73;
  wire square_im__5_n_74;
  wire square_im__5_n_75;
  wire square_im__5_n_76;
  wire square_im__5_n_77;
  wire square_im__5_n_78;
  wire square_im__5_n_79;
  wire square_im__5_n_80;
  wire square_im__5_n_81;
  wire square_im__5_n_82;
  wire square_im__5_n_83;
  wire square_im__5_n_84;
  wire square_im__5_n_85;
  wire square_im__5_n_86;
  wire square_im__5_n_87;
  wire square_im__5_n_88;
  wire square_im__5_n_89;
  wire square_im__5_n_90;
  wire square_im__5_n_91;
  wire square_im__5_n_92;
  wire square_im__5_n_93;
  wire square_im__5_n_94;
  wire square_im__5_n_95;
  wire square_im__5_n_96;
  wire square_im__5_n_97;
  wire square_im__5_n_98;
  wire square_im__5_n_99;
  wire square_im__6_n_106;
  wire square_im__6_n_107;
  wire square_im__6_n_108;
  wire square_im__6_n_109;
  wire square_im__6_n_110;
  wire square_im__6_n_111;
  wire square_im__6_n_112;
  wire square_im__6_n_113;
  wire square_im__6_n_114;
  wire square_im__6_n_115;
  wire square_im__6_n_116;
  wire square_im__6_n_117;
  wire square_im__6_n_118;
  wire square_im__6_n_119;
  wire square_im__6_n_120;
  wire square_im__6_n_121;
  wire square_im__6_n_122;
  wire square_im__6_n_123;
  wire square_im__6_n_124;
  wire square_im__6_n_125;
  wire square_im__6_n_126;
  wire square_im__6_n_127;
  wire square_im__6_n_128;
  wire square_im__6_n_129;
  wire square_im__6_n_130;
  wire square_im__6_n_131;
  wire square_im__6_n_132;
  wire square_im__6_n_133;
  wire square_im__6_n_134;
  wire square_im__6_n_135;
  wire square_im__6_n_136;
  wire square_im__6_n_137;
  wire square_im__6_n_138;
  wire square_im__6_n_139;
  wire square_im__6_n_140;
  wire square_im__6_n_141;
  wire square_im__6_n_142;
  wire square_im__6_n_143;
  wire square_im__6_n_144;
  wire square_im__6_n_145;
  wire square_im__6_n_146;
  wire square_im__6_n_147;
  wire square_im__6_n_148;
  wire square_im__6_n_149;
  wire square_im__6_n_150;
  wire square_im__6_n_151;
  wire square_im__6_n_152;
  wire square_im__6_n_153;
  wire square_im__7_n_100;
  wire square_im__7_n_101;
  wire square_im__7_n_102;
  wire square_im__7_n_103;
  wire square_im__7_n_104;
  wire square_im__7_n_105;
  wire square_im__7_n_58;
  wire square_im__7_n_59;
  wire square_im__7_n_60;
  wire square_im__7_n_61;
  wire square_im__7_n_62;
  wire square_im__7_n_63;
  wire square_im__7_n_64;
  wire square_im__7_n_65;
  wire square_im__7_n_66;
  wire square_im__7_n_67;
  wire square_im__7_n_68;
  wire square_im__7_n_69;
  wire square_im__7_n_70;
  wire square_im__7_n_71;
  wire square_im__7_n_72;
  wire square_im__7_n_73;
  wire square_im__7_n_74;
  wire square_im__7_n_75;
  wire square_im__7_n_76;
  wire square_im__7_n_77;
  wire square_im__7_n_78;
  wire square_im__7_n_79;
  wire square_im__7_n_80;
  wire square_im__7_n_81;
  wire square_im__7_n_82;
  wire square_im__7_n_83;
  wire square_im__7_n_84;
  wire square_im__7_n_85;
  wire square_im__7_n_86;
  wire square_im__7_n_87;
  wire square_im__7_n_88;
  wire square_im__7_n_89;
  wire square_im__7_n_90;
  wire square_im__7_n_91;
  wire square_im__7_n_92;
  wire square_im__7_n_93;
  wire square_im__7_n_94;
  wire square_im__7_n_95;
  wire square_im__7_n_96;
  wire square_im__7_n_97;
  wire square_im__7_n_98;
  wire square_im__7_n_99;
  wire [95:33]square_im__8;
  wire square_im_i_10_n_0;
  wire square_im_i_10_n_1;
  wire square_im_i_10_n_2;
  wire square_im_i_10_n_3;
  wire square_im_i_11_n_0;
  wire square_im_i_12_n_0;
  wire square_im_i_13_n_0;
  wire square_im_i_14_n_0;
  wire square_im_i_15_n_0;
  wire square_im_i_16_n_0;
  wire square_im_i_17_n_0;
  wire square_im_i_18_n_0;
  wire square_im_i_19_n_0;
  wire square_im_i_20_n_0;
  wire square_im_i_21_n_0;
  wire square_im_i_22_n_0;
  wire square_im_i_23_n_0;
  wire square_im_i_24_n_0;
  wire square_im_i_25_n_0;
  wire square_im_i_26_n_0;
  wire square_im_i_27_n_0;
  wire square_im_i_28_n_0;
  wire square_im_i_29_n_0;
  wire square_im_i_30_n_0;
  wire square_im_i_31_n_0;
  wire square_im_i_32_n_0;
  wire square_im_i_33_n_0;
  wire square_im_i_34_n_0;
  wire square_im_i_35_n_0;
  wire square_im_i_36_n_0;
  wire square_im_i_37_n_0;
  wire square_im_i_38_n_0;
  wire square_im_i_39_n_0;
  wire square_im_i_3_n_0;
  wire square_im_i_3_n_1;
  wire square_im_i_3_n_2;
  wire square_im_i_3_n_3;
  wire square_im_i_40_n_0;
  wire square_im_i_41_n_0;
  wire square_im_i_42_n_0;
  wire square_im_i_4_n_0;
  wire square_im_i_4_n_1;
  wire square_im_i_4_n_2;
  wire square_im_i_4_n_3;
  wire square_im_i_5_n_0;
  wire square_im_i_5_n_1;
  wire square_im_i_5_n_2;
  wire square_im_i_5_n_3;
  wire square_im_i_6_n_0;
  wire square_im_i_6_n_1;
  wire square_im_i_6_n_2;
  wire square_im_i_6_n_3;
  wire square_im_i_7_n_0;
  wire square_im_i_7_n_1;
  wire square_im_i_7_n_2;
  wire square_im_i_7_n_3;
  wire square_im_i_8_n_0;
  wire square_im_i_8_n_1;
  wire square_im_i_8_n_2;
  wire square_im_i_8_n_3;
  wire square_im_i_9_n_0;
  wire square_im_i_9_n_1;
  wire square_im_i_9_n_2;
  wire square_im_i_9_n_3;
  wire square_im_n_106;
  wire square_im_n_107;
  wire square_im_n_108;
  wire square_im_n_109;
  wire square_im_n_110;
  wire square_im_n_111;
  wire square_im_n_112;
  wire square_im_n_113;
  wire square_im_n_114;
  wire square_im_n_115;
  wire square_im_n_116;
  wire square_im_n_117;
  wire square_im_n_118;
  wire square_im_n_119;
  wire square_im_n_120;
  wire square_im_n_121;
  wire square_im_n_122;
  wire square_im_n_123;
  wire square_im_n_124;
  wire square_im_n_125;
  wire square_im_n_126;
  wire square_im_n_127;
  wire square_im_n_128;
  wire square_im_n_129;
  wire square_im_n_130;
  wire square_im_n_131;
  wire square_im_n_132;
  wire square_im_n_133;
  wire square_im_n_134;
  wire square_im_n_135;
  wire square_im_n_136;
  wire square_im_n_137;
  wire square_im_n_138;
  wire square_im_n_139;
  wire square_im_n_140;
  wire square_im_n_141;
  wire square_im_n_142;
  wire square_im_n_143;
  wire square_im_n_144;
  wire square_im_n_145;
  wire square_im_n_146;
  wire square_im_n_147;
  wire square_im_n_148;
  wire square_im_n_149;
  wire square_im_n_150;
  wire square_im_n_151;
  wire square_im_n_152;
  wire square_im_n_153;
  wire square_re__0_n_100;
  wire square_re__0_n_101;
  wire square_re__0_n_102;
  wire square_re__0_n_103;
  wire square_re__0_n_104;
  wire square_re__0_n_105;
  wire square_re__0_n_106;
  wire square_re__0_n_107;
  wire square_re__0_n_108;
  wire square_re__0_n_109;
  wire square_re__0_n_110;
  wire square_re__0_n_111;
  wire square_re__0_n_112;
  wire square_re__0_n_113;
  wire square_re__0_n_114;
  wire square_re__0_n_115;
  wire square_re__0_n_116;
  wire square_re__0_n_117;
  wire square_re__0_n_118;
  wire square_re__0_n_119;
  wire square_re__0_n_120;
  wire square_re__0_n_121;
  wire square_re__0_n_122;
  wire square_re__0_n_123;
  wire square_re__0_n_124;
  wire square_re__0_n_125;
  wire square_re__0_n_126;
  wire square_re__0_n_127;
  wire square_re__0_n_128;
  wire square_re__0_n_129;
  wire square_re__0_n_130;
  wire square_re__0_n_131;
  wire square_re__0_n_132;
  wire square_re__0_n_133;
  wire square_re__0_n_134;
  wire square_re__0_n_135;
  wire square_re__0_n_136;
  wire square_re__0_n_137;
  wire square_re__0_n_138;
  wire square_re__0_n_139;
  wire square_re__0_n_140;
  wire square_re__0_n_141;
  wire square_re__0_n_142;
  wire square_re__0_n_143;
  wire square_re__0_n_144;
  wire square_re__0_n_145;
  wire square_re__0_n_146;
  wire square_re__0_n_147;
  wire square_re__0_n_148;
  wire square_re__0_n_149;
  wire square_re__0_n_150;
  wire square_re__0_n_151;
  wire square_re__0_n_152;
  wire square_re__0_n_153;
  wire square_re__0_n_58;
  wire square_re__0_n_59;
  wire square_re__0_n_60;
  wire square_re__0_n_61;
  wire square_re__0_n_62;
  wire square_re__0_n_63;
  wire square_re__0_n_64;
  wire square_re__0_n_65;
  wire square_re__0_n_66;
  wire square_re__0_n_67;
  wire square_re__0_n_68;
  wire square_re__0_n_69;
  wire square_re__0_n_70;
  wire square_re__0_n_71;
  wire square_re__0_n_72;
  wire square_re__0_n_73;
  wire square_re__0_n_74;
  wire square_re__0_n_75;
  wire square_re__0_n_76;
  wire square_re__0_n_77;
  wire square_re__0_n_78;
  wire square_re__0_n_79;
  wire square_re__0_n_80;
  wire square_re__0_n_81;
  wire square_re__0_n_82;
  wire square_re__0_n_83;
  wire square_re__0_n_84;
  wire square_re__0_n_85;
  wire square_re__0_n_86;
  wire square_re__0_n_87;
  wire square_re__0_n_88;
  wire square_re__0_n_89;
  wire square_re__0_n_90;
  wire square_re__0_n_91;
  wire square_re__0_n_92;
  wire square_re__0_n_93;
  wire square_re__0_n_94;
  wire square_re__0_n_95;
  wire square_re__0_n_96;
  wire square_re__0_n_97;
  wire square_re__0_n_98;
  wire square_re__0_n_99;
  wire [1:0]square_re__1_0;
  wire square_re__1_n_100;
  wire square_re__1_n_101;
  wire square_re__1_n_102;
  wire square_re__1_n_103;
  wire square_re__1_n_104;
  wire square_re__1_n_105;
  wire square_re__1_n_58;
  wire square_re__1_n_59;
  wire square_re__1_n_60;
  wire square_re__1_n_61;
  wire square_re__1_n_62;
  wire square_re__1_n_63;
  wire square_re__1_n_64;
  wire square_re__1_n_65;
  wire square_re__1_n_66;
  wire square_re__1_n_67;
  wire square_re__1_n_68;
  wire square_re__1_n_69;
  wire square_re__1_n_70;
  wire square_re__1_n_71;
  wire square_re__1_n_72;
  wire square_re__1_n_73;
  wire square_re__1_n_74;
  wire square_re__1_n_75;
  wire square_re__1_n_76;
  wire square_re__1_n_77;
  wire square_re__1_n_78;
  wire square_re__1_n_79;
  wire square_re__1_n_80;
  wire square_re__1_n_81;
  wire square_re__1_n_82;
  wire square_re__1_n_83;
  wire square_re__1_n_84;
  wire square_re__1_n_85;
  wire square_re__1_n_86;
  wire square_re__1_n_87;
  wire square_re__1_n_88;
  wire square_re__1_n_89;
  wire square_re__1_n_90;
  wire square_re__1_n_91;
  wire square_re__1_n_92;
  wire square_re__1_n_93;
  wire square_re__1_n_94;
  wire square_re__1_n_95;
  wire square_re__1_n_96;
  wire square_re__1_n_97;
  wire square_re__1_n_98;
  wire square_re__1_n_99;
  wire square_re__2_i_10_n_0;
  wire square_re__2_i_11_n_0;
  wire square_re__2_i_12_n_0;
  wire square_re__2_i_13_n_0;
  wire square_re__2_i_14_n_0;
  wire square_re__2_i_15_n_0;
  wire square_re__2_i_16_n_0;
  wire square_re__2_i_17_n_0;
  wire square_re__2_i_18_n_0;
  wire square_re__2_i_19_n_0;
  wire square_re__2_i_1_n_0;
  wire square_re__2_i_1_n_1;
  wire square_re__2_i_1_n_2;
  wire square_re__2_i_1_n_3;
  wire square_re__2_i_20_n_0;
  wire square_re__2_i_2_n_0;
  wire square_re__2_i_2_n_1;
  wire square_re__2_i_2_n_2;
  wire square_re__2_i_2_n_3;
  wire square_re__2_i_3_n_0;
  wire square_re__2_i_3_n_1;
  wire square_re__2_i_3_n_2;
  wire square_re__2_i_3_n_3;
  wire square_re__2_i_4_n_0;
  wire square_re__2_i_4_n_1;
  wire square_re__2_i_4_n_2;
  wire square_re__2_i_4_n_3;
  wire square_re__2_i_5_n_0;
  wire square_re__2_i_6_n_0;
  wire square_re__2_i_7_n_0;
  wire square_re__2_i_8_n_0;
  wire square_re__2_i_9_n_0;
  wire square_re__2_n_106;
  wire square_re__2_n_107;
  wire square_re__2_n_108;
  wire square_re__2_n_109;
  wire square_re__2_n_110;
  wire square_re__2_n_111;
  wire square_re__2_n_112;
  wire square_re__2_n_113;
  wire square_re__2_n_114;
  wire square_re__2_n_115;
  wire square_re__2_n_116;
  wire square_re__2_n_117;
  wire square_re__2_n_118;
  wire square_re__2_n_119;
  wire square_re__2_n_120;
  wire square_re__2_n_121;
  wire square_re__2_n_122;
  wire square_re__2_n_123;
  wire square_re__2_n_124;
  wire square_re__2_n_125;
  wire square_re__2_n_126;
  wire square_re__2_n_127;
  wire square_re__2_n_128;
  wire square_re__2_n_129;
  wire square_re__2_n_130;
  wire square_re__2_n_131;
  wire square_re__2_n_132;
  wire square_re__2_n_133;
  wire square_re__2_n_134;
  wire square_re__2_n_135;
  wire square_re__2_n_136;
  wire square_re__2_n_137;
  wire square_re__2_n_138;
  wire square_re__2_n_139;
  wire square_re__2_n_140;
  wire square_re__2_n_141;
  wire square_re__2_n_142;
  wire square_re__2_n_143;
  wire square_re__2_n_144;
  wire square_re__2_n_145;
  wire square_re__2_n_146;
  wire square_re__2_n_147;
  wire square_re__2_n_148;
  wire square_re__2_n_149;
  wire square_re__2_n_150;
  wire square_re__2_n_151;
  wire square_re__2_n_152;
  wire square_re__2_n_153;
  wire square_re__3_n_106;
  wire square_re__3_n_107;
  wire square_re__3_n_108;
  wire square_re__3_n_109;
  wire square_re__3_n_110;
  wire square_re__3_n_111;
  wire square_re__3_n_112;
  wire square_re__3_n_113;
  wire square_re__3_n_114;
  wire square_re__3_n_115;
  wire square_re__3_n_116;
  wire square_re__3_n_117;
  wire square_re__3_n_118;
  wire square_re__3_n_119;
  wire square_re__3_n_120;
  wire square_re__3_n_121;
  wire square_re__3_n_122;
  wire square_re__3_n_123;
  wire square_re__3_n_124;
  wire square_re__3_n_125;
  wire square_re__3_n_126;
  wire square_re__3_n_127;
  wire square_re__3_n_128;
  wire square_re__3_n_129;
  wire square_re__3_n_130;
  wire square_re__3_n_131;
  wire square_re__3_n_132;
  wire square_re__3_n_133;
  wire square_re__3_n_134;
  wire square_re__3_n_135;
  wire square_re__3_n_136;
  wire square_re__3_n_137;
  wire square_re__3_n_138;
  wire square_re__3_n_139;
  wire square_re__3_n_140;
  wire square_re__3_n_141;
  wire square_re__3_n_142;
  wire square_re__3_n_143;
  wire square_re__3_n_144;
  wire square_re__3_n_145;
  wire square_re__3_n_146;
  wire square_re__3_n_147;
  wire square_re__3_n_148;
  wire square_re__3_n_149;
  wire square_re__3_n_150;
  wire square_re__3_n_151;
  wire square_re__3_n_152;
  wire square_re__3_n_153;
  wire square_re__4_n_100;
  wire square_re__4_n_101;
  wire square_re__4_n_102;
  wire square_re__4_n_103;
  wire square_re__4_n_104;
  wire square_re__4_n_105;
  wire square_re__4_n_58;
  wire square_re__4_n_59;
  wire square_re__4_n_60;
  wire square_re__4_n_61;
  wire square_re__4_n_62;
  wire square_re__4_n_63;
  wire square_re__4_n_64;
  wire square_re__4_n_65;
  wire square_re__4_n_66;
  wire square_re__4_n_67;
  wire square_re__4_n_68;
  wire square_re__4_n_69;
  wire square_re__4_n_70;
  wire square_re__4_n_71;
  wire square_re__4_n_72;
  wire square_re__4_n_73;
  wire square_re__4_n_74;
  wire square_re__4_n_75;
  wire square_re__4_n_76;
  wire square_re__4_n_77;
  wire square_re__4_n_78;
  wire square_re__4_n_79;
  wire square_re__4_n_80;
  wire square_re__4_n_81;
  wire square_re__4_n_82;
  wire square_re__4_n_83;
  wire square_re__4_n_84;
  wire square_re__4_n_85;
  wire square_re__4_n_86;
  wire square_re__4_n_87;
  wire square_re__4_n_88;
  wire square_re__4_n_89;
  wire square_re__4_n_90;
  wire square_re__4_n_91;
  wire square_re__4_n_92;
  wire square_re__4_n_93;
  wire square_re__4_n_94;
  wire square_re__4_n_95;
  wire square_re__4_n_96;
  wire square_re__4_n_97;
  wire square_re__4_n_98;
  wire square_re__4_n_99;
  wire square_re__5_n_100;
  wire square_re__5_n_101;
  wire square_re__5_n_102;
  wire square_re__5_n_103;
  wire square_re__5_n_104;
  wire square_re__5_n_105;
  wire square_re__5_n_106;
  wire square_re__5_n_107;
  wire square_re__5_n_108;
  wire square_re__5_n_109;
  wire square_re__5_n_110;
  wire square_re__5_n_111;
  wire square_re__5_n_112;
  wire square_re__5_n_113;
  wire square_re__5_n_114;
  wire square_re__5_n_115;
  wire square_re__5_n_116;
  wire square_re__5_n_117;
  wire square_re__5_n_118;
  wire square_re__5_n_119;
  wire square_re__5_n_120;
  wire square_re__5_n_121;
  wire square_re__5_n_122;
  wire square_re__5_n_123;
  wire square_re__5_n_124;
  wire square_re__5_n_125;
  wire square_re__5_n_126;
  wire square_re__5_n_127;
  wire square_re__5_n_128;
  wire square_re__5_n_129;
  wire square_re__5_n_130;
  wire square_re__5_n_131;
  wire square_re__5_n_132;
  wire square_re__5_n_133;
  wire square_re__5_n_134;
  wire square_re__5_n_135;
  wire square_re__5_n_136;
  wire square_re__5_n_137;
  wire square_re__5_n_138;
  wire square_re__5_n_139;
  wire square_re__5_n_140;
  wire square_re__5_n_141;
  wire square_re__5_n_142;
  wire square_re__5_n_143;
  wire square_re__5_n_144;
  wire square_re__5_n_145;
  wire square_re__5_n_146;
  wire square_re__5_n_147;
  wire square_re__5_n_148;
  wire square_re__5_n_149;
  wire square_re__5_n_150;
  wire square_re__5_n_151;
  wire square_re__5_n_152;
  wire square_re__5_n_153;
  wire square_re__5_n_58;
  wire square_re__5_n_59;
  wire square_re__5_n_60;
  wire square_re__5_n_61;
  wire square_re__5_n_62;
  wire square_re__5_n_63;
  wire square_re__5_n_64;
  wire square_re__5_n_65;
  wire square_re__5_n_66;
  wire square_re__5_n_67;
  wire square_re__5_n_68;
  wire square_re__5_n_69;
  wire square_re__5_n_70;
  wire square_re__5_n_71;
  wire square_re__5_n_72;
  wire square_re__5_n_73;
  wire square_re__5_n_74;
  wire square_re__5_n_75;
  wire square_re__5_n_76;
  wire square_re__5_n_77;
  wire square_re__5_n_78;
  wire square_re__5_n_79;
  wire square_re__5_n_80;
  wire square_re__5_n_81;
  wire square_re__5_n_82;
  wire square_re__5_n_83;
  wire square_re__5_n_84;
  wire square_re__5_n_85;
  wire square_re__5_n_86;
  wire square_re__5_n_87;
  wire square_re__5_n_88;
  wire square_re__5_n_89;
  wire square_re__5_n_90;
  wire square_re__5_n_91;
  wire square_re__5_n_92;
  wire square_re__5_n_93;
  wire square_re__5_n_94;
  wire square_re__5_n_95;
  wire square_re__5_n_96;
  wire square_re__5_n_97;
  wire square_re__5_n_98;
  wire square_re__5_n_99;
  wire square_re__6_n_106;
  wire square_re__6_n_107;
  wire square_re__6_n_108;
  wire square_re__6_n_109;
  wire square_re__6_n_110;
  wire square_re__6_n_111;
  wire square_re__6_n_112;
  wire square_re__6_n_113;
  wire square_re__6_n_114;
  wire square_re__6_n_115;
  wire square_re__6_n_116;
  wire square_re__6_n_117;
  wire square_re__6_n_118;
  wire square_re__6_n_119;
  wire square_re__6_n_120;
  wire square_re__6_n_121;
  wire square_re__6_n_122;
  wire square_re__6_n_123;
  wire square_re__6_n_124;
  wire square_re__6_n_125;
  wire square_re__6_n_126;
  wire square_re__6_n_127;
  wire square_re__6_n_128;
  wire square_re__6_n_129;
  wire square_re__6_n_130;
  wire square_re__6_n_131;
  wire square_re__6_n_132;
  wire square_re__6_n_133;
  wire square_re__6_n_134;
  wire square_re__6_n_135;
  wire square_re__6_n_136;
  wire square_re__6_n_137;
  wire square_re__6_n_138;
  wire square_re__6_n_139;
  wire square_re__6_n_140;
  wire square_re__6_n_141;
  wire square_re__6_n_142;
  wire square_re__6_n_143;
  wire square_re__6_n_144;
  wire square_re__6_n_145;
  wire square_re__6_n_146;
  wire square_re__6_n_147;
  wire square_re__6_n_148;
  wire square_re__6_n_149;
  wire square_re__6_n_150;
  wire square_re__6_n_151;
  wire square_re__6_n_152;
  wire square_re__6_n_153;
  wire square_re__7_n_100;
  wire square_re__7_n_101;
  wire square_re__7_n_102;
  wire square_re__7_n_103;
  wire square_re__7_n_104;
  wire square_re__7_n_105;
  wire square_re__7_n_58;
  wire square_re__7_n_59;
  wire square_re__7_n_60;
  wire square_re__7_n_61;
  wire square_re__7_n_62;
  wire square_re__7_n_63;
  wire square_re__7_n_64;
  wire square_re__7_n_65;
  wire square_re__7_n_66;
  wire square_re__7_n_67;
  wire square_re__7_n_68;
  wire square_re__7_n_69;
  wire square_re__7_n_70;
  wire square_re__7_n_71;
  wire square_re__7_n_72;
  wire square_re__7_n_73;
  wire square_re__7_n_74;
  wire square_re__7_n_75;
  wire square_re__7_n_76;
  wire square_re__7_n_77;
  wire square_re__7_n_78;
  wire square_re__7_n_79;
  wire square_re__7_n_80;
  wire square_re__7_n_81;
  wire square_re__7_n_82;
  wire square_re__7_n_83;
  wire square_re__7_n_84;
  wire square_re__7_n_85;
  wire square_re__7_n_86;
  wire square_re__7_n_87;
  wire square_re__7_n_88;
  wire square_re__7_n_89;
  wire square_re__7_n_90;
  wire square_re__7_n_91;
  wire square_re__7_n_92;
  wire square_re__7_n_93;
  wire square_re__7_n_94;
  wire square_re__7_n_95;
  wire square_re__7_n_96;
  wire square_re__7_n_97;
  wire square_re__7_n_98;
  wire square_re__7_n_99;
  wire [95:33]square_re__8;
  wire square_re_i_10_n_0;
  wire square_re_i_11_n_0;
  wire square_re_i_12_n_0;
  wire square_re_i_13_n_0;
  wire square_re_i_14_n_0;
  wire square_re_i_15_n_0;
  wire square_re_i_16_n_0;
  wire square_re_i_17_n_0;
  wire square_re_i_18_n_0;
  wire square_re_i_19_n_0;
  wire square_re_i_20_n_0;
  wire square_re_i_21_n_0;
  wire square_re_i_22_n_0;
  wire square_re_i_23_n_0;
  wire square_re_i_24_n_0;
  wire square_re_i_25_n_0;
  wire square_re_i_26_n_0;
  wire square_re_i_27_n_0;
  wire square_re_i_28_n_0;
  wire square_re_i_29_n_0;
  wire square_re_i_2_n_0;
  wire square_re_i_2_n_1;
  wire square_re_i_2_n_2;
  wire square_re_i_2_n_3;
  wire square_re_i_30_n_0;
  wire square_re_i_31_n_0;
  wire square_re_i_32_n_0;
  wire square_re_i_33_n_0;
  wire square_re_i_34_n_0;
  wire square_re_i_35_n_0;
  wire square_re_i_36_n_0;
  wire square_re_i_37_n_0;
  wire square_re_i_38_n_0;
  wire square_re_i_39_n_0;
  wire square_re_i_3_n_0;
  wire square_re_i_3_n_1;
  wire square_re_i_3_n_2;
  wire square_re_i_3_n_3;
  wire square_re_i_40_n_0;
  wire square_re_i_41_n_0;
  wire square_re_i_42_n_0;
  wire square_re_i_4_n_0;
  wire square_re_i_4_n_1;
  wire square_re_i_4_n_2;
  wire square_re_i_4_n_3;
  wire square_re_i_5_n_0;
  wire square_re_i_5_n_1;
  wire square_re_i_5_n_2;
  wire square_re_i_5_n_3;
  wire square_re_i_6_n_0;
  wire square_re_i_6_n_1;
  wire square_re_i_6_n_2;
  wire square_re_i_6_n_3;
  wire square_re_i_7_n_0;
  wire square_re_i_7_n_1;
  wire square_re_i_7_n_2;
  wire square_re_i_7_n_3;
  wire square_re_i_8_n_0;
  wire square_re_i_8_n_1;
  wire square_re_i_8_n_2;
  wire square_re_i_8_n_3;
  wire square_re_i_9_n_0;
  wire square_re_i_9_n_1;
  wire square_re_i_9_n_2;
  wire square_re_i_9_n_3;
  wire square_re_n_106;
  wire square_re_n_107;
  wire square_re_n_108;
  wire square_re_n_109;
  wire square_re_n_110;
  wire square_re_n_111;
  wire square_re_n_112;
  wire square_re_n_113;
  wire square_re_n_114;
  wire square_re_n_115;
  wire square_re_n_116;
  wire square_re_n_117;
  wire square_re_n_118;
  wire square_re_n_119;
  wire square_re_n_120;
  wire square_re_n_121;
  wire square_re_n_122;
  wire square_re_n_123;
  wire square_re_n_124;
  wire square_re_n_125;
  wire square_re_n_126;
  wire square_re_n_127;
  wire square_re_n_128;
  wire square_re_n_129;
  wire square_re_n_130;
  wire square_re_n_131;
  wire square_re_n_132;
  wire square_re_n_133;
  wire square_re_n_134;
  wire square_re_n_135;
  wire square_re_n_136;
  wire square_re_n_137;
  wire square_re_n_138;
  wire square_re_n_139;
  wire square_re_n_140;
  wire square_re_n_141;
  wire square_re_n_142;
  wire square_re_n_143;
  wire square_re_n_144;
  wire square_re_n_145;
  wire square_re_n_146;
  wire square_re_n_147;
  wire square_re_n_148;
  wire square_re_n_149;
  wire square_re_n_150;
  wire square_re_n_151;
  wire square_re_n_152;
  wire square_re_n_153;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_rep_i_1__0_n_0 ;
  wire \state[0]_rep_i_1__1_n_0 ;
  wire \state[0]_rep_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state_reg[0]_rep__0_n_0 ;
  wire \state_reg[0]_rep__1_n_0 ;
  wire \state_reg[0]_rep_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire weight_out_valid;
  wire [3:1]\NLW_abs_im_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs_im_reg[48]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_abs_re_reg[48]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs_re_reg[48]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_denominator_reg[3]_i_29_CO_UNCONNECTED ;
  wire [3:2]\NLW_denominator_reg[3]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_denominator_reg[48]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_denominator_reg[48]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_29_O_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_im_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_47_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[0]_i_8_O_UNCONNECTED ;
  wire [0:0]\NLW_div_rem_im_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_im_reg[48]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_29_O_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_im_reg[48]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_47_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_im_reg[48]_i_9_CO_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_im_reg[48]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_29_O_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_re_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_47_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_re_reg[48]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_re_reg[48]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_39_O_UNCONNECTED ;
  wire [3:1]\NLW_div_rem_re_reg[48]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_48_O_UNCONNECTED ;
  wire [3:0]\NLW_div_rem_re_reg[48]_i_7_O_UNCONNECTED ;
  wire NLW_ii0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ii0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ii0_OVERFLOW_UNCONNECTED;
  wire NLW_ii0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ii0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ii0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ii0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ii0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ii0_CARRYOUT_UNCONNECTED;
  wire NLW_ii_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ii_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ii_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_ii_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ii_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ii_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ii_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ii_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ii_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ii_reg__0_PCOUT_UNCONNECTED;
  wire NLW_ir0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ir0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ir0_OVERFLOW_UNCONNECTED;
  wire NLW_ir0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ir0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ir0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ir0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ir0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ir0_CARRYOUT_UNCONNECTED;
  wire NLW_ir_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ir_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ir_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_ir_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ir_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ir_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ir_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ir_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ir_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ir_reg__0_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_out_im_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_out_im_reg[23]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_out_re_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_out_re_reg[23]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_radicand_reg[97]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_radicand_reg[97]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_radicand_reg[97]_i_11_CO_UNCONNECTED ;
  wire [3:1]\NLW_radicand_reg[97]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_radicand_reg[97]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_radicand_reg[97]_i_2_O_UNCONNECTED ;
  wire NLW_ri0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ri0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ri0_OVERFLOW_UNCONNECTED;
  wire NLW_ri0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ri0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ri0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ri0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ri0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ri0_CARRYOUT_UNCONNECTED;
  wire NLW_ri_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ri_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ri_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_ri_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ri_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_ri_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ri_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ri_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ri_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_ri_reg__0_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_root_reg[0]_i_17_O_UNCONNECTED ;
  wire [3:2]\NLW_root_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_root_reg[0]_i_8_O_UNCONNECTED ;
  wire NLW_rr0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rr0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rr0_OVERFLOW_UNCONNECTED;
  wire NLW_rr0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rr0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rr0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rr0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rr0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rr0_CARRYOUT_UNCONNECTED;
  wire NLW_rr_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rr_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rr_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_rr_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rr_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rr_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rr_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rr_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rr_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_rr_reg__0_PCOUT_UNCONNECTED;
  wire NLW_square_im_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im_OVERFLOW_UNCONNECTED;
  wire NLW_square_im_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im_P_UNCONNECTED;
  wire NLW_square_im__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__0_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__0_CARRYOUT_UNCONNECTED;
  wire NLW_square_im__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__1_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__1_PCOUT_UNCONNECTED;
  wire NLW_square_im__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__2_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__2_P_UNCONNECTED;
  wire NLW_square_im__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__3_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__3_P_UNCONNECTED;
  wire NLW_square_im__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__4_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__4_PCOUT_UNCONNECTED;
  wire NLW_square_im__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__5_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__5_CARRYOUT_UNCONNECTED;
  wire NLW_square_im__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__6_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__6_P_UNCONNECTED;
  wire NLW_square_im__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_im__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_im__7_OVERFLOW_UNCONNECTED;
  wire NLW_square_im__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_im__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_im__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_im__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_im__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_im__7_PCOUT_UNCONNECTED;
  wire [3:0]NLW_square_im_i_2_CO_UNCONNECTED;
  wire [3:1]NLW_square_im_i_2_O_UNCONNECTED;
  wire NLW_square_re_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re_OVERFLOW_UNCONNECTED;
  wire NLW_square_re_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re_P_UNCONNECTED;
  wire NLW_square_re__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__0_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__0_CARRYOUT_UNCONNECTED;
  wire NLW_square_re__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__1_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__1_PCOUT_UNCONNECTED;
  wire NLW_square_re__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__2_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__2_P_UNCONNECTED;
  wire NLW_square_re__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__3_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__3_P_UNCONNECTED;
  wire NLW_square_re__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__4_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__4_PCOUT_UNCONNECTED;
  wire NLW_square_re__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__5_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__5_CARRYOUT_UNCONNECTED;
  wire NLW_square_re__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__6_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__6_P_UNCONNECTED;
  wire NLW_square_re__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_square_re__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_square_re__7_OVERFLOW_UNCONNECTED;
  wire NLW_square_re__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_square_re__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_square_re__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_square_re__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_square_re__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_square_re__7_PCOUT_UNCONNECTED;
  wire [3:0]NLW_square_re_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_square_re_i_1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7F5F757575557575)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .I2(\FSM_sequential_state_reg[0] [2]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(\FSM_sequential_state_reg[0] [0]),
        .I5(weight_out_valid),
        .O(E));
  LUT6 #(
    .INIT(64'hF0D0F0DFF0DFF0DF)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\ri[16]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0] [2]),
        .I2(\FSM_sequential_state_reg[0] [3]),
        .I3(\FSM_sequential_state_reg[0] [0]),
        .I4(\FSM_sequential_state_reg[3]_i_3_0 ),
        .I5(s_axis_config_tready),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  MUXF7 \FSM_sequential_state_reg[3]_i_3 
       (.I0(\FSM_sequential_state_reg[0]_1 ),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .S(\FSM_sequential_state_reg[0] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[11]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[11] ),
        .O(\abs_im[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[11]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[10] ),
        .O(\abs_im[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[11]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[9] ),
        .O(\abs_im[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[11]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[8] ),
        .O(\abs_im[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[15]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[15] ),
        .O(\abs_im[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[15]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[14] ),
        .O(\abs_im[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[15]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[13] ),
        .O(\abs_im[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[15]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[12] ),
        .O(\abs_im[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[19]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[19] ),
        .O(\abs_im[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[19]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[18] ),
        .O(\abs_im[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[19]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[17] ),
        .O(\abs_im[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[19]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[16] ),
        .O(\abs_im[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[23]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[23] ),
        .O(\abs_im[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[23]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[22] ),
        .O(\abs_im[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[23]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[21] ),
        .O(\abs_im[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[23]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[20] ),
        .O(\abs_im[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[27]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[27] ),
        .O(\abs_im[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[27]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[26] ),
        .O(\abs_im[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[27]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[25] ),
        .O(\abs_im[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[27]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[24] ),
        .O(\abs_im[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[31]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[31] ),
        .O(\abs_im[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[31]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[30] ),
        .O(\abs_im[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[31]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[29] ),
        .O(\abs_im[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[31]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[28] ),
        .O(\abs_im[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[35]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[35] ),
        .O(\abs_im[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[35]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[34] ),
        .O(\abs_im[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[35]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[33] ),
        .O(\abs_im[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[35]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[32] ),
        .O(\abs_im[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[39]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[39] ),
        .O(\abs_im[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[39]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[38] ),
        .O(\abs_im[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[39]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[37] ),
        .O(\abs_im[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[39]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[36] ),
        .O(\abs_im[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[3]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[3] ),
        .O(\abs_im[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[3]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[2] ),
        .O(\abs_im[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[3]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[1] ),
        .O(\abs_im[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \abs_im[3]_i_5 
       (.I0(\cross_im_reg_n_0_[0] ),
        .O(\abs_im[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[43]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[43] ),
        .O(\abs_im[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[43]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[42] ),
        .O(\abs_im[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[43]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[41] ),
        .O(\abs_im[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[43]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[40] ),
        .O(\abs_im[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[47]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[47] ),
        .O(\abs_im[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[47]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[46] ),
        .O(\abs_im[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[47]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[45] ),
        .O(\abs_im[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[47]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[44] ),
        .O(\abs_im[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[7]_i_2 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[7] ),
        .O(\abs_im[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[7]_i_3 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[6] ),
        .O(\abs_im[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[7]_i_4 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[5] ),
        .O(\abs_im[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_im[7]_i_5 
       (.I0(\cross_im_reg_n_0_[48] ),
        .I1(\cross_im_reg_n_0_[4] ),
        .O(\abs_im[7]_i_5_n_0 ));
  FDRE \abs_im_reg[0] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[3]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[0] ),
        .R(rst_0));
  FDRE \abs_im_reg[10] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[11]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \abs_im_reg[11] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[11]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[11] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[11]_i_1 
       (.CI(\abs_im_reg[7]_i_1_n_0 ),
        .CO({\abs_im_reg[11]_i_1_n_0 ,\abs_im_reg[11]_i_1_n_1 ,\abs_im_reg[11]_i_1_n_2 ,\abs_im_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[11]_i_1_n_4 ,\abs_im_reg[11]_i_1_n_5 ,\abs_im_reg[11]_i_1_n_6 ,\abs_im_reg[11]_i_1_n_7 }),
        .S({\abs_im[11]_i_2_n_0 ,\abs_im[11]_i_3_n_0 ,\abs_im[11]_i_4_n_0 ,\abs_im[11]_i_5_n_0 }));
  FDRE \abs_im_reg[12] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[15]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \abs_im_reg[13] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[15]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \abs_im_reg[14] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[15]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \abs_im_reg[15] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[15]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[15] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[15]_i_1 
       (.CI(\abs_im_reg[11]_i_1_n_0 ),
        .CO({\abs_im_reg[15]_i_1_n_0 ,\abs_im_reg[15]_i_1_n_1 ,\abs_im_reg[15]_i_1_n_2 ,\abs_im_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[15]_i_1_n_4 ,\abs_im_reg[15]_i_1_n_5 ,\abs_im_reg[15]_i_1_n_6 ,\abs_im_reg[15]_i_1_n_7 }),
        .S({\abs_im[15]_i_2_n_0 ,\abs_im[15]_i_3_n_0 ,\abs_im[15]_i_4_n_0 ,\abs_im[15]_i_5_n_0 }));
  FDRE \abs_im_reg[16] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[19]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \abs_im_reg[17] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[19]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[17] ),
        .R(rst_0));
  FDRE \abs_im_reg[18] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[19]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[18] ),
        .R(rst_0));
  FDRE \abs_im_reg[19] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[19]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[19] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[19]_i_1 
       (.CI(\abs_im_reg[15]_i_1_n_0 ),
        .CO({\abs_im_reg[19]_i_1_n_0 ,\abs_im_reg[19]_i_1_n_1 ,\abs_im_reg[19]_i_1_n_2 ,\abs_im_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[19]_i_1_n_4 ,\abs_im_reg[19]_i_1_n_5 ,\abs_im_reg[19]_i_1_n_6 ,\abs_im_reg[19]_i_1_n_7 }),
        .S({\abs_im[19]_i_2_n_0 ,\abs_im[19]_i_3_n_0 ,\abs_im[19]_i_4_n_0 ,\abs_im[19]_i_5_n_0 }));
  FDRE \abs_im_reg[1] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[3]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \abs_im_reg[20] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[23]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[20] ),
        .R(rst_0));
  FDRE \abs_im_reg[21] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[23]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[21] ),
        .R(rst_0));
  FDRE \abs_im_reg[22] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[23]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[22] ),
        .R(rst_0));
  FDRE \abs_im_reg[23] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[23]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[23] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[23]_i_1 
       (.CI(\abs_im_reg[19]_i_1_n_0 ),
        .CO({\abs_im_reg[23]_i_1_n_0 ,\abs_im_reg[23]_i_1_n_1 ,\abs_im_reg[23]_i_1_n_2 ,\abs_im_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[23]_i_1_n_4 ,\abs_im_reg[23]_i_1_n_5 ,\abs_im_reg[23]_i_1_n_6 ,\abs_im_reg[23]_i_1_n_7 }),
        .S({\abs_im[23]_i_2_n_0 ,\abs_im[23]_i_3_n_0 ,\abs_im[23]_i_4_n_0 ,\abs_im[23]_i_5_n_0 }));
  FDRE \abs_im_reg[24] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[27]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[24] ),
        .R(rst_0));
  FDRE \abs_im_reg[25] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[27]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[25] ),
        .R(rst_0));
  FDRE \abs_im_reg[26] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[27]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[26] ),
        .R(rst_0));
  FDRE \abs_im_reg[27] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[27]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[27] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[27]_i_1 
       (.CI(\abs_im_reg[23]_i_1_n_0 ),
        .CO({\abs_im_reg[27]_i_1_n_0 ,\abs_im_reg[27]_i_1_n_1 ,\abs_im_reg[27]_i_1_n_2 ,\abs_im_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[27]_i_1_n_4 ,\abs_im_reg[27]_i_1_n_5 ,\abs_im_reg[27]_i_1_n_6 ,\abs_im_reg[27]_i_1_n_7 }),
        .S({\abs_im[27]_i_2_n_0 ,\abs_im[27]_i_3_n_0 ,\abs_im[27]_i_4_n_0 ,\abs_im[27]_i_5_n_0 }));
  FDRE \abs_im_reg[28] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[31]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[28] ),
        .R(rst_0));
  FDRE \abs_im_reg[29] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[31]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[29] ),
        .R(rst_0));
  FDRE \abs_im_reg[2] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[3]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \abs_im_reg[30] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[31]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[30] ),
        .R(rst_0));
  FDRE \abs_im_reg[31] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[31]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[31] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[31]_i_1 
       (.CI(\abs_im_reg[27]_i_1_n_0 ),
        .CO({\abs_im_reg[31]_i_1_n_0 ,\abs_im_reg[31]_i_1_n_1 ,\abs_im_reg[31]_i_1_n_2 ,\abs_im_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[31]_i_1_n_4 ,\abs_im_reg[31]_i_1_n_5 ,\abs_im_reg[31]_i_1_n_6 ,\abs_im_reg[31]_i_1_n_7 }),
        .S({\abs_im[31]_i_2_n_0 ,\abs_im[31]_i_3_n_0 ,\abs_im[31]_i_4_n_0 ,\abs_im[31]_i_5_n_0 }));
  FDRE \abs_im_reg[32] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[35]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[32] ),
        .R(rst_0));
  FDRE \abs_im_reg[33] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[35]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[33] ),
        .R(rst_0));
  FDRE \abs_im_reg[34] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[35]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[34] ),
        .R(rst_0));
  FDRE \abs_im_reg[35] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[35]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[35] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[35]_i_1 
       (.CI(\abs_im_reg[31]_i_1_n_0 ),
        .CO({\abs_im_reg[35]_i_1_n_0 ,\abs_im_reg[35]_i_1_n_1 ,\abs_im_reg[35]_i_1_n_2 ,\abs_im_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[35]_i_1_n_4 ,\abs_im_reg[35]_i_1_n_5 ,\abs_im_reg[35]_i_1_n_6 ,\abs_im_reg[35]_i_1_n_7 }),
        .S({\abs_im[35]_i_2_n_0 ,\abs_im[35]_i_3_n_0 ,\abs_im[35]_i_4_n_0 ,\abs_im[35]_i_5_n_0 }));
  FDRE \abs_im_reg[36] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[39]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[36] ),
        .R(rst_0));
  FDRE \abs_im_reg[37] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[39]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[37] ),
        .R(rst_0));
  FDRE \abs_im_reg[38] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[39]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[38] ),
        .R(rst_0));
  FDRE \abs_im_reg[39] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[39]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[39] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[39]_i_1 
       (.CI(\abs_im_reg[35]_i_1_n_0 ),
        .CO({\abs_im_reg[39]_i_1_n_0 ,\abs_im_reg[39]_i_1_n_1 ,\abs_im_reg[39]_i_1_n_2 ,\abs_im_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[39]_i_1_n_4 ,\abs_im_reg[39]_i_1_n_5 ,\abs_im_reg[39]_i_1_n_6 ,\abs_im_reg[39]_i_1_n_7 }),
        .S({\abs_im[39]_i_2_n_0 ,\abs_im[39]_i_3_n_0 ,\abs_im[39]_i_4_n_0 ,\abs_im[39]_i_5_n_0 }));
  FDRE \abs_im_reg[3] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[3]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[3] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\abs_im_reg[3]_i_1_n_0 ,\abs_im_reg[3]_i_1_n_1 ,\abs_im_reg[3]_i_1_n_2 ,\abs_im_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cross_im_reg_n_0_[48] }),
        .O({\abs_im_reg[3]_i_1_n_4 ,\abs_im_reg[3]_i_1_n_5 ,\abs_im_reg[3]_i_1_n_6 ,\abs_im_reg[3]_i_1_n_7 }),
        .S({\abs_im[3]_i_2_n_0 ,\abs_im[3]_i_3_n_0 ,\abs_im[3]_i_4_n_0 ,\abs_im[3]_i_5_n_0 }));
  FDRE \abs_im_reg[40] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[43]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[40] ),
        .R(rst_0));
  FDRE \abs_im_reg[41] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[43]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[41] ),
        .R(rst_0));
  FDRE \abs_im_reg[42] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[43]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[42] ),
        .R(rst_0));
  FDRE \abs_im_reg[43] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[43]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[43] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[43]_i_1 
       (.CI(\abs_im_reg[39]_i_1_n_0 ),
        .CO({\abs_im_reg[43]_i_1_n_0 ,\abs_im_reg[43]_i_1_n_1 ,\abs_im_reg[43]_i_1_n_2 ,\abs_im_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[43]_i_1_n_4 ,\abs_im_reg[43]_i_1_n_5 ,\abs_im_reg[43]_i_1_n_6 ,\abs_im_reg[43]_i_1_n_7 }),
        .S({\abs_im[43]_i_2_n_0 ,\abs_im[43]_i_3_n_0 ,\abs_im[43]_i_4_n_0 ,\abs_im[43]_i_5_n_0 }));
  FDRE \abs_im_reg[44] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[47]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[44] ),
        .R(rst_0));
  FDRE \abs_im_reg[45] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[47]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[45] ),
        .R(rst_0));
  FDRE \abs_im_reg[46] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[47]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[46] ),
        .R(rst_0));
  FDRE \abs_im_reg[47] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[47]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[47] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[47]_i_1 
       (.CI(\abs_im_reg[43]_i_1_n_0 ),
        .CO({\abs_im_reg[47]_i_1_n_0 ,\abs_im_reg[47]_i_1_n_1 ,\abs_im_reg[47]_i_1_n_2 ,\abs_im_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[47]_i_1_n_4 ,\abs_im_reg[47]_i_1_n_5 ,\abs_im_reg[47]_i_1_n_6 ,\abs_im_reg[47]_i_1_n_7 }),
        .S({\abs_im[47]_i_2_n_0 ,\abs_im[47]_i_3_n_0 ,\abs_im[47]_i_4_n_0 ,\abs_im[47]_i_5_n_0 }));
  FDRE \abs_im_reg[48] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[48]_i_1_n_3 ),
        .Q(\abs_im_reg_n_0_[48] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[48]_i_1 
       (.CI(\abs_im_reg[47]_i_1_n_0 ),
        .CO({\NLW_abs_im_reg[48]_i_1_CO_UNCONNECTED [3:1],\abs_im_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_abs_im_reg[48]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_im_reg[4] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[7]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \abs_im_reg[5] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[7]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \abs_im_reg[6] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[7]_i_1_n_5 ),
        .Q(\abs_im_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \abs_im_reg[7] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[7]_i_1_n_4 ),
        .Q(\abs_im_reg_n_0_[7] ),
        .R(rst_0));
  CARRY4 \abs_im_reg[7]_i_1 
       (.CI(\abs_im_reg[3]_i_1_n_0 ),
        .CO({\abs_im_reg[7]_i_1_n_0 ,\abs_im_reg[7]_i_1_n_1 ,\abs_im_reg[7]_i_1_n_2 ,\abs_im_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_im_reg[7]_i_1_n_4 ,\abs_im_reg[7]_i_1_n_5 ,\abs_im_reg[7]_i_1_n_6 ,\abs_im_reg[7]_i_1_n_7 }),
        .S({\abs_im[7]_i_2_n_0 ,\abs_im[7]_i_3_n_0 ,\abs_im[7]_i_4_n_0 ,\abs_im[7]_i_5_n_0 }));
  FDRE \abs_im_reg[8] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[11]_i_1_n_7 ),
        .Q(\abs_im_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \abs_im_reg[9] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_im_reg[11]_i_1_n_6 ),
        .Q(\abs_im_reg_n_0_[9] ),
        .R(rst_0));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[11]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[11]),
        .O(\abs_re[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[11]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[10]),
        .O(\abs_re[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[11]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[9]),
        .O(\abs_re[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[11]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[8]),
        .O(\abs_re[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[15]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[15]),
        .O(\abs_re[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[15]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[14]),
        .O(\abs_re[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[15]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[13]),
        .O(\abs_re[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[15]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[12]),
        .O(\abs_re[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[19]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[19]),
        .O(\abs_re[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[19]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[18]),
        .O(\abs_re[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[19]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[17]),
        .O(\abs_re[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[19]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[16]),
        .O(\abs_re[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[23]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[23]),
        .O(\abs_re[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[23]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[22]),
        .O(\abs_re[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[23]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[21]),
        .O(\abs_re[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[23]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[20]),
        .O(\abs_re[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[27]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[27]),
        .O(\abs_re[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[27]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[26]),
        .O(\abs_re[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[27]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[25]),
        .O(\abs_re[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[27]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[24]),
        .O(\abs_re[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[31]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[31]),
        .O(\abs_re[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[31]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[30]),
        .O(\abs_re[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[31]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[29]),
        .O(\abs_re[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[31]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[28]),
        .O(\abs_re[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[35]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[35]),
        .O(\abs_re[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[35]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[34]),
        .O(\abs_re[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[35]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[33]),
        .O(\abs_re[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[35]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[32]),
        .O(\abs_re[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[39]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[39]),
        .O(\abs_re[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[39]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[38]),
        .O(\abs_re[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[39]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[37]),
        .O(\abs_re[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[39]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[36]),
        .O(\abs_re[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[3]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[3]),
        .O(\abs_re[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[3]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[2]),
        .O(\abs_re[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[3]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[1]),
        .O(\abs_re[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \abs_re[3]_i_5 
       (.I0(cross_re[0]),
        .O(\abs_re[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[43]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[43]),
        .O(\abs_re[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[43]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[42]),
        .O(\abs_re[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[43]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[41]),
        .O(\abs_re[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[43]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[40]),
        .O(\abs_re[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[47]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[47]),
        .O(\abs_re[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[47]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[46]),
        .O(\abs_re[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[47]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[45]),
        .O(\abs_re[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[47]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[44]),
        .O(\abs_re[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \abs_re[48]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg[0]_rep__0_n_0 ),
        .O(abs_im));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[7]_i_2 
       (.I0(cross_re[48]),
        .I1(cross_re[7]),
        .O(\abs_re[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[7]_i_3 
       (.I0(cross_re[48]),
        .I1(cross_re[6]),
        .O(\abs_re[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[7]_i_4 
       (.I0(cross_re[48]),
        .I1(cross_re[5]),
        .O(\abs_re[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \abs_re[7]_i_5 
       (.I0(cross_re[48]),
        .I1(cross_re[4]),
        .O(\abs_re[7]_i_5_n_0 ));
  FDRE \abs_re_reg[0] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[3]_i_1_n_7 ),
        .Q(abs_re[0]),
        .R(rst_0));
  FDRE \abs_re_reg[10] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[11]_i_1_n_5 ),
        .Q(abs_re[10]),
        .R(rst_0));
  FDRE \abs_re_reg[11] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[11]_i_1_n_4 ),
        .Q(abs_re[11]),
        .R(rst_0));
  CARRY4 \abs_re_reg[11]_i_1 
       (.CI(\abs_re_reg[7]_i_1_n_0 ),
        .CO({\abs_re_reg[11]_i_1_n_0 ,\abs_re_reg[11]_i_1_n_1 ,\abs_re_reg[11]_i_1_n_2 ,\abs_re_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[11]_i_1_n_4 ,\abs_re_reg[11]_i_1_n_5 ,\abs_re_reg[11]_i_1_n_6 ,\abs_re_reg[11]_i_1_n_7 }),
        .S({\abs_re[11]_i_2_n_0 ,\abs_re[11]_i_3_n_0 ,\abs_re[11]_i_4_n_0 ,\abs_re[11]_i_5_n_0 }));
  FDRE \abs_re_reg[12] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[15]_i_1_n_7 ),
        .Q(abs_re[12]),
        .R(rst_0));
  FDRE \abs_re_reg[13] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[15]_i_1_n_6 ),
        .Q(abs_re[13]),
        .R(rst_0));
  FDRE \abs_re_reg[14] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[15]_i_1_n_5 ),
        .Q(abs_re[14]),
        .R(rst_0));
  FDRE \abs_re_reg[15] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[15]_i_1_n_4 ),
        .Q(abs_re[15]),
        .R(rst_0));
  CARRY4 \abs_re_reg[15]_i_1 
       (.CI(\abs_re_reg[11]_i_1_n_0 ),
        .CO({\abs_re_reg[15]_i_1_n_0 ,\abs_re_reg[15]_i_1_n_1 ,\abs_re_reg[15]_i_1_n_2 ,\abs_re_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[15]_i_1_n_4 ,\abs_re_reg[15]_i_1_n_5 ,\abs_re_reg[15]_i_1_n_6 ,\abs_re_reg[15]_i_1_n_7 }),
        .S({\abs_re[15]_i_2_n_0 ,\abs_re[15]_i_3_n_0 ,\abs_re[15]_i_4_n_0 ,\abs_re[15]_i_5_n_0 }));
  FDRE \abs_re_reg[16] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[19]_i_1_n_7 ),
        .Q(abs_re[16]),
        .R(rst_0));
  FDRE \abs_re_reg[17] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[19]_i_1_n_6 ),
        .Q(abs_re[17]),
        .R(rst_0));
  FDRE \abs_re_reg[18] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[19]_i_1_n_5 ),
        .Q(abs_re[18]),
        .R(rst_0));
  FDRE \abs_re_reg[19] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[19]_i_1_n_4 ),
        .Q(abs_re[19]),
        .R(rst_0));
  CARRY4 \abs_re_reg[19]_i_1 
       (.CI(\abs_re_reg[15]_i_1_n_0 ),
        .CO({\abs_re_reg[19]_i_1_n_0 ,\abs_re_reg[19]_i_1_n_1 ,\abs_re_reg[19]_i_1_n_2 ,\abs_re_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[19]_i_1_n_4 ,\abs_re_reg[19]_i_1_n_5 ,\abs_re_reg[19]_i_1_n_6 ,\abs_re_reg[19]_i_1_n_7 }),
        .S({\abs_re[19]_i_2_n_0 ,\abs_re[19]_i_3_n_0 ,\abs_re[19]_i_4_n_0 ,\abs_re[19]_i_5_n_0 }));
  FDRE \abs_re_reg[1] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[3]_i_1_n_6 ),
        .Q(abs_re[1]),
        .R(rst_0));
  FDRE \abs_re_reg[20] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[23]_i_1_n_7 ),
        .Q(abs_re[20]),
        .R(rst_0));
  FDRE \abs_re_reg[21] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[23]_i_1_n_6 ),
        .Q(abs_re[21]),
        .R(rst_0));
  FDRE \abs_re_reg[22] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[23]_i_1_n_5 ),
        .Q(abs_re[22]),
        .R(rst_0));
  FDRE \abs_re_reg[23] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[23]_i_1_n_4 ),
        .Q(abs_re[23]),
        .R(rst_0));
  CARRY4 \abs_re_reg[23]_i_1 
       (.CI(\abs_re_reg[19]_i_1_n_0 ),
        .CO({\abs_re_reg[23]_i_1_n_0 ,\abs_re_reg[23]_i_1_n_1 ,\abs_re_reg[23]_i_1_n_2 ,\abs_re_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[23]_i_1_n_4 ,\abs_re_reg[23]_i_1_n_5 ,\abs_re_reg[23]_i_1_n_6 ,\abs_re_reg[23]_i_1_n_7 }),
        .S({\abs_re[23]_i_2_n_0 ,\abs_re[23]_i_3_n_0 ,\abs_re[23]_i_4_n_0 ,\abs_re[23]_i_5_n_0 }));
  FDRE \abs_re_reg[24] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[27]_i_1_n_7 ),
        .Q(abs_re[24]),
        .R(rst_0));
  FDRE \abs_re_reg[25] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[27]_i_1_n_6 ),
        .Q(abs_re[25]),
        .R(rst_0));
  FDRE \abs_re_reg[26] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[27]_i_1_n_5 ),
        .Q(abs_re[26]),
        .R(rst_0));
  FDRE \abs_re_reg[27] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[27]_i_1_n_4 ),
        .Q(abs_re[27]),
        .R(rst_0));
  CARRY4 \abs_re_reg[27]_i_1 
       (.CI(\abs_re_reg[23]_i_1_n_0 ),
        .CO({\abs_re_reg[27]_i_1_n_0 ,\abs_re_reg[27]_i_1_n_1 ,\abs_re_reg[27]_i_1_n_2 ,\abs_re_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[27]_i_1_n_4 ,\abs_re_reg[27]_i_1_n_5 ,\abs_re_reg[27]_i_1_n_6 ,\abs_re_reg[27]_i_1_n_7 }),
        .S({\abs_re[27]_i_2_n_0 ,\abs_re[27]_i_3_n_0 ,\abs_re[27]_i_4_n_0 ,\abs_re[27]_i_5_n_0 }));
  FDRE \abs_re_reg[28] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[31]_i_1_n_7 ),
        .Q(abs_re[28]),
        .R(rst_0));
  FDRE \abs_re_reg[29] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[31]_i_1_n_6 ),
        .Q(abs_re[29]),
        .R(rst_0));
  FDRE \abs_re_reg[2] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[3]_i_1_n_5 ),
        .Q(abs_re[2]),
        .R(rst_0));
  FDRE \abs_re_reg[30] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[31]_i_1_n_5 ),
        .Q(abs_re[30]),
        .R(rst_0));
  FDRE \abs_re_reg[31] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[31]_i_1_n_4 ),
        .Q(abs_re[31]),
        .R(rst_0));
  CARRY4 \abs_re_reg[31]_i_1 
       (.CI(\abs_re_reg[27]_i_1_n_0 ),
        .CO({\abs_re_reg[31]_i_1_n_0 ,\abs_re_reg[31]_i_1_n_1 ,\abs_re_reg[31]_i_1_n_2 ,\abs_re_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[31]_i_1_n_4 ,\abs_re_reg[31]_i_1_n_5 ,\abs_re_reg[31]_i_1_n_6 ,\abs_re_reg[31]_i_1_n_7 }),
        .S({\abs_re[31]_i_2_n_0 ,\abs_re[31]_i_3_n_0 ,\abs_re[31]_i_4_n_0 ,\abs_re[31]_i_5_n_0 }));
  FDRE \abs_re_reg[32] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[35]_i_1_n_7 ),
        .Q(abs_re[32]),
        .R(rst_0));
  FDRE \abs_re_reg[33] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[35]_i_1_n_6 ),
        .Q(abs_re[33]),
        .R(rst_0));
  FDRE \abs_re_reg[34] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[35]_i_1_n_5 ),
        .Q(abs_re[34]),
        .R(rst_0));
  FDRE \abs_re_reg[35] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[35]_i_1_n_4 ),
        .Q(abs_re[35]),
        .R(rst_0));
  CARRY4 \abs_re_reg[35]_i_1 
       (.CI(\abs_re_reg[31]_i_1_n_0 ),
        .CO({\abs_re_reg[35]_i_1_n_0 ,\abs_re_reg[35]_i_1_n_1 ,\abs_re_reg[35]_i_1_n_2 ,\abs_re_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[35]_i_1_n_4 ,\abs_re_reg[35]_i_1_n_5 ,\abs_re_reg[35]_i_1_n_6 ,\abs_re_reg[35]_i_1_n_7 }),
        .S({\abs_re[35]_i_2_n_0 ,\abs_re[35]_i_3_n_0 ,\abs_re[35]_i_4_n_0 ,\abs_re[35]_i_5_n_0 }));
  FDRE \abs_re_reg[36] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[39]_i_1_n_7 ),
        .Q(abs_re[36]),
        .R(rst_0));
  FDRE \abs_re_reg[37] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[39]_i_1_n_6 ),
        .Q(abs_re[37]),
        .R(rst_0));
  FDRE \abs_re_reg[38] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[39]_i_1_n_5 ),
        .Q(abs_re[38]),
        .R(rst_0));
  FDRE \abs_re_reg[39] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[39]_i_1_n_4 ),
        .Q(abs_re[39]),
        .R(rst_0));
  CARRY4 \abs_re_reg[39]_i_1 
       (.CI(\abs_re_reg[35]_i_1_n_0 ),
        .CO({\abs_re_reg[39]_i_1_n_0 ,\abs_re_reg[39]_i_1_n_1 ,\abs_re_reg[39]_i_1_n_2 ,\abs_re_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[39]_i_1_n_4 ,\abs_re_reg[39]_i_1_n_5 ,\abs_re_reg[39]_i_1_n_6 ,\abs_re_reg[39]_i_1_n_7 }),
        .S({\abs_re[39]_i_2_n_0 ,\abs_re[39]_i_3_n_0 ,\abs_re[39]_i_4_n_0 ,\abs_re[39]_i_5_n_0 }));
  FDRE \abs_re_reg[3] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[3]_i_1_n_4 ),
        .Q(abs_re[3]),
        .R(rst_0));
  CARRY4 \abs_re_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\abs_re_reg[3]_i_1_n_0 ,\abs_re_reg[3]_i_1_n_1 ,\abs_re_reg[3]_i_1_n_2 ,\abs_re_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cross_re[48]}),
        .O({\abs_re_reg[3]_i_1_n_4 ,\abs_re_reg[3]_i_1_n_5 ,\abs_re_reg[3]_i_1_n_6 ,\abs_re_reg[3]_i_1_n_7 }),
        .S({\abs_re[3]_i_2_n_0 ,\abs_re[3]_i_3_n_0 ,\abs_re[3]_i_4_n_0 ,\abs_re[3]_i_5_n_0 }));
  FDRE \abs_re_reg[40] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[43]_i_1_n_7 ),
        .Q(abs_re[40]),
        .R(rst_0));
  FDRE \abs_re_reg[41] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[43]_i_1_n_6 ),
        .Q(abs_re[41]),
        .R(rst_0));
  FDRE \abs_re_reg[42] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[43]_i_1_n_5 ),
        .Q(abs_re[42]),
        .R(rst_0));
  FDRE \abs_re_reg[43] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[43]_i_1_n_4 ),
        .Q(abs_re[43]),
        .R(rst_0));
  CARRY4 \abs_re_reg[43]_i_1 
       (.CI(\abs_re_reg[39]_i_1_n_0 ),
        .CO({\abs_re_reg[43]_i_1_n_0 ,\abs_re_reg[43]_i_1_n_1 ,\abs_re_reg[43]_i_1_n_2 ,\abs_re_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[43]_i_1_n_4 ,\abs_re_reg[43]_i_1_n_5 ,\abs_re_reg[43]_i_1_n_6 ,\abs_re_reg[43]_i_1_n_7 }),
        .S({\abs_re[43]_i_2_n_0 ,\abs_re[43]_i_3_n_0 ,\abs_re[43]_i_4_n_0 ,\abs_re[43]_i_5_n_0 }));
  FDRE \abs_re_reg[44] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[47]_i_1_n_7 ),
        .Q(abs_re[44]),
        .R(rst_0));
  FDRE \abs_re_reg[45] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[47]_i_1_n_6 ),
        .Q(abs_re[45]),
        .R(rst_0));
  FDRE \abs_re_reg[46] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[47]_i_1_n_5 ),
        .Q(abs_re[46]),
        .R(rst_0));
  FDRE \abs_re_reg[47] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[47]_i_1_n_4 ),
        .Q(abs_re[47]),
        .R(rst_0));
  CARRY4 \abs_re_reg[47]_i_1 
       (.CI(\abs_re_reg[43]_i_1_n_0 ),
        .CO({\abs_re_reg[47]_i_1_n_0 ,\abs_re_reg[47]_i_1_n_1 ,\abs_re_reg[47]_i_1_n_2 ,\abs_re_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[47]_i_1_n_4 ,\abs_re_reg[47]_i_1_n_5 ,\abs_re_reg[47]_i_1_n_6 ,\abs_re_reg[47]_i_1_n_7 }),
        .S({\abs_re[47]_i_2_n_0 ,\abs_re[47]_i_3_n_0 ,\abs_re[47]_i_4_n_0 ,\abs_re[47]_i_5_n_0 }));
  FDRE \abs_re_reg[48] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[48]_i_2_n_3 ),
        .Q(abs_re[48]),
        .R(rst_0));
  CARRY4 \abs_re_reg[48]_i_2 
       (.CI(\abs_re_reg[47]_i_1_n_0 ),
        .CO({\NLW_abs_re_reg[48]_i_2_CO_UNCONNECTED [3:1],\abs_re_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_abs_re_reg[48]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \abs_re_reg[4] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[7]_i_1_n_7 ),
        .Q(abs_re[4]),
        .R(rst_0));
  FDRE \abs_re_reg[5] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[7]_i_1_n_6 ),
        .Q(abs_re[5]),
        .R(rst_0));
  FDRE \abs_re_reg[6] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[7]_i_1_n_5 ),
        .Q(abs_re[6]),
        .R(rst_0));
  FDRE \abs_re_reg[7] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[7]_i_1_n_4 ),
        .Q(abs_re[7]),
        .R(rst_0));
  CARRY4 \abs_re_reg[7]_i_1 
       (.CI(\abs_re_reg[3]_i_1_n_0 ),
        .CO({\abs_re_reg[7]_i_1_n_0 ,\abs_re_reg[7]_i_1_n_1 ,\abs_re_reg[7]_i_1_n_2 ,\abs_re_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\abs_re_reg[7]_i_1_n_4 ,\abs_re_reg[7]_i_1_n_5 ,\abs_re_reg[7]_i_1_n_6 ,\abs_re_reg[7]_i_1_n_7 }),
        .S({\abs_re[7]_i_2_n_0 ,\abs_re[7]_i_3_n_0 ,\abs_re[7]_i_4_n_0 ,\abs_re[7]_i_5_n_0 }));
  FDRE \abs_re_reg[8] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[11]_i_1_n_7 ),
        .Q(abs_re[8]),
        .R(rst_0));
  FDRE \abs_re_reg[9] 
       (.C(clk),
        .CE(abs_im),
        .D(\abs_re_reg[11]_i_1_n_6 ),
        .Q(abs_re[9]),
        .R(rst_0));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_2
       (.I0(rst),
        .O(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    calculating_i_1
       (.I0(calculating_reg_1),
        .I1(core_done),
        .I2(calculating),
        .O(calculating_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[0]),
        .I2(\state_reg[0]_rep__1_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[1]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC035555)) 
    \count[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\state_reg[0]_rep__1_n_0 ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \count[3]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0001FFFFFFFF)) 
    \count[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(\state_reg[0]_rep__1_n_0 ),
        .O(\count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00BBB800)) 
    \count[5]_i_1 
       (.I0(\denominator[48]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \count[5]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(\count[5]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\state_reg[0]_rep__1_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[5]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\count[5]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(rst_0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(rst_0));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(rst_0));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(rst_0));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(rst_0));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[5]_i_2_n_0 ),
        .Q(sel0[5]),
        .R(rst_0));
  FDRE \cross_im_reg[0] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[0]),
        .Q(\cross_im_reg_n_0_[0] ),
        .R(rst_0));
  FDRE \cross_im_reg[10] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[10]),
        .Q(\cross_im_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \cross_im_reg[11] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[11]),
        .Q(\cross_im_reg_n_0_[11] ),
        .R(rst_0));
  FDRE \cross_im_reg[12] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[12]),
        .Q(\cross_im_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \cross_im_reg[13] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[13]),
        .Q(\cross_im_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \cross_im_reg[14] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[14]),
        .Q(\cross_im_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \cross_im_reg[15] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[15]),
        .Q(\cross_im_reg_n_0_[15] ),
        .R(rst_0));
  FDRE \cross_im_reg[16] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[16]),
        .Q(\cross_im_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \cross_im_reg[17] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[17]),
        .Q(\cross_im_reg_n_0_[17] ),
        .R(rst_0));
  FDRE \cross_im_reg[18] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[18]),
        .Q(\cross_im_reg_n_0_[18] ),
        .R(rst_0));
  FDRE \cross_im_reg[19] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[19]),
        .Q(\cross_im_reg_n_0_[19] ),
        .R(rst_0));
  FDRE \cross_im_reg[1] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[1]),
        .Q(\cross_im_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \cross_im_reg[20] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[20]),
        .Q(\cross_im_reg_n_0_[20] ),
        .R(rst_0));
  FDRE \cross_im_reg[21] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[21]),
        .Q(\cross_im_reg_n_0_[21] ),
        .R(rst_0));
  FDRE \cross_im_reg[22] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[22]),
        .Q(\cross_im_reg_n_0_[22] ),
        .R(rst_0));
  FDRE \cross_im_reg[23] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[23]),
        .Q(\cross_im_reg_n_0_[23] ),
        .R(rst_0));
  FDRE \cross_im_reg[24] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[24]),
        .Q(\cross_im_reg_n_0_[24] ),
        .R(rst_0));
  FDRE \cross_im_reg[25] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[25]),
        .Q(\cross_im_reg_n_0_[25] ),
        .R(rst_0));
  FDRE \cross_im_reg[26] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[26]),
        .Q(\cross_im_reg_n_0_[26] ),
        .R(rst_0));
  FDRE \cross_im_reg[27] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[27]),
        .Q(\cross_im_reg_n_0_[27] ),
        .R(rst_0));
  FDRE \cross_im_reg[28] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[28]),
        .Q(\cross_im_reg_n_0_[28] ),
        .R(rst_0));
  FDRE \cross_im_reg[29] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[29]),
        .Q(\cross_im_reg_n_0_[29] ),
        .R(rst_0));
  FDRE \cross_im_reg[2] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[2]),
        .Q(\cross_im_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \cross_im_reg[30] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[30]),
        .Q(\cross_im_reg_n_0_[30] ),
        .R(rst_0));
  FDRE \cross_im_reg[31] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[31]),
        .Q(\cross_im_reg_n_0_[31] ),
        .R(rst_0));
  FDRE \cross_im_reg[32] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[32]),
        .Q(\cross_im_reg_n_0_[32] ),
        .R(rst_0));
  FDRE \cross_im_reg[33] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[33]),
        .Q(\cross_im_reg_n_0_[33] ),
        .R(rst_0));
  FDRE \cross_im_reg[34] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[34]),
        .Q(\cross_im_reg_n_0_[34] ),
        .R(rst_0));
  FDRE \cross_im_reg[35] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[35]),
        .Q(\cross_im_reg_n_0_[35] ),
        .R(rst_0));
  FDRE \cross_im_reg[36] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[36]),
        .Q(\cross_im_reg_n_0_[36] ),
        .R(rst_0));
  FDRE \cross_im_reg[37] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[37]),
        .Q(\cross_im_reg_n_0_[37] ),
        .R(rst_0));
  FDRE \cross_im_reg[38] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[38]),
        .Q(\cross_im_reg_n_0_[38] ),
        .R(rst_0));
  FDRE \cross_im_reg[39] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[39]),
        .Q(\cross_im_reg_n_0_[39] ),
        .R(rst_0));
  FDRE \cross_im_reg[3] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[3]),
        .Q(\cross_im_reg_n_0_[3] ),
        .R(rst_0));
  FDRE \cross_im_reg[40] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[40]),
        .Q(\cross_im_reg_n_0_[40] ),
        .R(rst_0));
  FDRE \cross_im_reg[41] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[41]),
        .Q(\cross_im_reg_n_0_[41] ),
        .R(rst_0));
  FDRE \cross_im_reg[42] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[42]),
        .Q(\cross_im_reg_n_0_[42] ),
        .R(rst_0));
  FDRE \cross_im_reg[43] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[43]),
        .Q(\cross_im_reg_n_0_[43] ),
        .R(rst_0));
  FDRE \cross_im_reg[44] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[44]),
        .Q(\cross_im_reg_n_0_[44] ),
        .R(rst_0));
  FDRE \cross_im_reg[45] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[45]),
        .Q(\cross_im_reg_n_0_[45] ),
        .R(rst_0));
  FDRE \cross_im_reg[46] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[46]),
        .Q(\cross_im_reg_n_0_[46] ),
        .R(rst_0));
  FDRE \cross_im_reg[47] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[47]),
        .Q(\cross_im_reg_n_0_[47] ),
        .R(rst_0));
  FDRE \cross_im_reg[48] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[48]),
        .Q(\cross_im_reg_n_0_[48] ),
        .R(rst_0));
  FDRE \cross_im_reg[4] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[4]),
        .Q(\cross_im_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \cross_im_reg[5] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[5]),
        .Q(\cross_im_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \cross_im_reg[6] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[6]),
        .Q(\cross_im_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \cross_im_reg[7] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[7]),
        .Q(\cross_im_reg_n_0_[7] ),
        .R(rst_0));
  FDRE \cross_im_reg[8] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[8]),
        .Q(\cross_im_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \cross_im_reg[9] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_im00_out[9]),
        .Q(\cross_im_reg_n_0_[9] ),
        .R(rst_0));
  FDRE \cross_re_reg[0] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[0]),
        .Q(cross_re[0]),
        .R(rst_0));
  FDRE \cross_re_reg[10] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[10]),
        .Q(cross_re[10]),
        .R(rst_0));
  FDRE \cross_re_reg[11] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[11]),
        .Q(cross_re[11]),
        .R(rst_0));
  FDRE \cross_re_reg[12] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[12]),
        .Q(cross_re[12]),
        .R(rst_0));
  FDRE \cross_re_reg[13] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[13]),
        .Q(cross_re[13]),
        .R(rst_0));
  FDRE \cross_re_reg[14] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[14]),
        .Q(cross_re[14]),
        .R(rst_0));
  FDRE \cross_re_reg[15] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[15]),
        .Q(cross_re[15]),
        .R(rst_0));
  FDRE \cross_re_reg[16] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[16]),
        .Q(cross_re[16]),
        .R(rst_0));
  FDRE \cross_re_reg[17] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[17]),
        .Q(cross_re[17]),
        .R(rst_0));
  FDRE \cross_re_reg[18] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[18]),
        .Q(cross_re[18]),
        .R(rst_0));
  FDRE \cross_re_reg[19] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[19]),
        .Q(cross_re[19]),
        .R(rst_0));
  FDRE \cross_re_reg[1] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[1]),
        .Q(cross_re[1]),
        .R(rst_0));
  FDRE \cross_re_reg[20] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[20]),
        .Q(cross_re[20]),
        .R(rst_0));
  FDRE \cross_re_reg[21] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[21]),
        .Q(cross_re[21]),
        .R(rst_0));
  FDRE \cross_re_reg[22] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[22]),
        .Q(cross_re[22]),
        .R(rst_0));
  FDRE \cross_re_reg[23] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[23]),
        .Q(cross_re[23]),
        .R(rst_0));
  FDRE \cross_re_reg[24] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[24]),
        .Q(cross_re[24]),
        .R(rst_0));
  FDRE \cross_re_reg[25] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[25]),
        .Q(cross_re[25]),
        .R(rst_0));
  FDRE \cross_re_reg[26] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[26]),
        .Q(cross_re[26]),
        .R(rst_0));
  FDRE \cross_re_reg[27] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[27]),
        .Q(cross_re[27]),
        .R(rst_0));
  FDRE \cross_re_reg[28] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[28]),
        .Q(cross_re[28]),
        .R(rst_0));
  FDRE \cross_re_reg[29] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[29]),
        .Q(cross_re[29]),
        .R(rst_0));
  FDRE \cross_re_reg[2] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[2]),
        .Q(cross_re[2]),
        .R(rst_0));
  FDRE \cross_re_reg[30] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[30]),
        .Q(cross_re[30]),
        .R(rst_0));
  FDRE \cross_re_reg[31] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[31]),
        .Q(cross_re[31]),
        .R(rst_0));
  FDRE \cross_re_reg[32] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[32]),
        .Q(cross_re[32]),
        .R(rst_0));
  FDRE \cross_re_reg[33] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[33]),
        .Q(cross_re[33]),
        .R(rst_0));
  FDRE \cross_re_reg[34] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[34]),
        .Q(cross_re[34]),
        .R(rst_0));
  FDRE \cross_re_reg[35] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[35]),
        .Q(cross_re[35]),
        .R(rst_0));
  FDRE \cross_re_reg[36] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[36]),
        .Q(cross_re[36]),
        .R(rst_0));
  FDRE \cross_re_reg[37] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[37]),
        .Q(cross_re[37]),
        .R(rst_0));
  FDRE \cross_re_reg[38] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[38]),
        .Q(cross_re[38]),
        .R(rst_0));
  FDRE \cross_re_reg[39] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[39]),
        .Q(cross_re[39]),
        .R(rst_0));
  FDRE \cross_re_reg[3] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[3]),
        .Q(cross_re[3]),
        .R(rst_0));
  FDRE \cross_re_reg[40] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[40]),
        .Q(cross_re[40]),
        .R(rst_0));
  FDRE \cross_re_reg[41] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[41]),
        .Q(cross_re[41]),
        .R(rst_0));
  FDRE \cross_re_reg[42] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[42]),
        .Q(cross_re[42]),
        .R(rst_0));
  FDRE \cross_re_reg[43] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[43]),
        .Q(cross_re[43]),
        .R(rst_0));
  FDRE \cross_re_reg[44] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[44]),
        .Q(cross_re[44]),
        .R(rst_0));
  FDRE \cross_re_reg[45] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[45]),
        .Q(cross_re[45]),
        .R(rst_0));
  FDRE \cross_re_reg[46] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[46]),
        .Q(cross_re[46]),
        .R(rst_0));
  FDRE \cross_re_reg[47] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[47]),
        .Q(cross_re[47]),
        .R(rst_0));
  FDRE \cross_re_reg[48] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[48]),
        .Q(cross_re[48]),
        .R(rst_0));
  FDRE \cross_re_reg[4] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[4]),
        .Q(cross_re[4]),
        .R(rst_0));
  FDRE \cross_re_reg[5] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[5]),
        .Q(cross_re[5]),
        .R(rst_0));
  FDRE \cross_re_reg[6] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[6]),
        .Q(cross_re[6]),
        .R(rst_0));
  FDRE \cross_re_reg[7] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[7]),
        .Q(cross_re[7]),
        .R(rst_0));
  FDRE \cross_re_reg[8] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[8]),
        .Q(cross_re[8]),
        .R(rst_0));
  FDRE \cross_re_reg[9] 
       (.C(clk),
        .CE(cross_im),
        .D(cross_re0[9]),
        .Q(cross_re[9]),
        .R(rst_0));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_10 
       (.I0(root_shift[35]),
        .I1(root_rem_next0[35]),
        .I2(\denominator[3]_i_24_n_0 ),
        .I3(root_rem_next0[34]),
        .I4(root_next__0),
        .I5(root_shift[34]),
        .O(\denominator[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_11 
       (.I0(root_shift[38]),
        .I1(root_rem_next0[38]),
        .I2(\denominator[3]_i_25_n_0 ),
        .I3(root_rem_next0[37]),
        .I4(root_next__0),
        .I5(root_shift[37]),
        .O(\denominator[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFEFE)) 
    \denominator[3]_i_12 
       (.I0(\denominator[3]_i_26_n_0 ),
        .I1(\denominator[3]_i_27_n_0 ),
        .I2(\denominator[3]_i_28_n_0 ),
        .I3(root_rem_next0[49]),
        .I4(root_next__0),
        .I5(root_shift[49]),
        .O(\denominator[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \denominator[3]_i_13 
       (.I0(\denominator[3]_i_30_n_0 ),
        .I1(root_rem_next0[44]),
        .I2(root_next__0),
        .I3(root_shift[44]),
        .I4(\denominator[3]_i_31_n_0 ),
        .I5(\denominator[3]_i_32_n_0 ),
        .O(\denominator[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_14 
       (.I0(root_shift[3]),
        .I1(root_rem_next0[3]),
        .I2(root_shift[2]),
        .I3(root_next__0),
        .I4(root_rem_next0[2]),
        .O(\denominator[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_15 
       (.I0(root_shift[6]),
        .I1(root_rem_next0[6]),
        .I2(\denominator[3]_i_33_n_0 ),
        .I3(root_rem_next0[5]),
        .I4(root_next__0),
        .I5(root_shift[5]),
        .O(\denominator[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_16 
       (.I0(root_rem_next0[7]),
        .I1(root_next__0),
        .I2(root_shift[7]),
        .O(\denominator[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_17 
       (.I0(root_rem_next0[10]),
        .I1(root_next__0),
        .I2(root_shift[10]),
        .O(\denominator[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \denominator[3]_i_18 
       (.I0(root_rem_next0[13]),
        .I1(root_next__0),
        .I2(root_shift[13]),
        .I3(root_rem_next0[14]),
        .I4(root_shift[14]),
        .I5(\denominator[3]_i_34_n_0 ),
        .O(\denominator[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_19 
       (.I0(root_shift[19]),
        .I1(root_rem_next0[19]),
        .I2(\denominator[3]_i_35_n_0 ),
        .I3(root_rem_next0[18]),
        .I4(root_next__0),
        .I5(root_shift[18]),
        .O(\denominator[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \denominator[3]_i_2 
       (.I0(root_next__0),
        .I1(\denominator[3]_i_3_n_0 ),
        .I2(\denominator[3]_i_4_n_0 ),
        .I3(\denominator[3]_i_5_n_0 ),
        .I4(\denominator[3]_i_6_n_0 ),
        .I5(\denominator[3]_i_7_n_0 ),
        .O(\denominator[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_20 
       (.I0(root_shift[25]),
        .I1(root_rem_next0[25]),
        .I2(\denominator[3]_i_36_n_0 ),
        .I3(root_rem_next0[24]),
        .I4(root_next__0),
        .I5(root_shift[24]),
        .O(\denominator[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_21 
       (.I0(root_shift[22]),
        .I1(root_rem_next0[22]),
        .I2(\denominator[3]_i_37_n_0 ),
        .I3(root_rem_next0[21]),
        .I4(root_next__0),
        .I5(root_shift[21]),
        .O(\denominator[3]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_22 
       (.I0(root_shift[27]),
        .I1(root_rem_next0[27]),
        .I2(root_shift[26]),
        .I3(root_next__0),
        .I4(root_rem_next0[26]),
        .O(\denominator[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_23 
       (.I0(root_rem_next0[30]),
        .I1(root_next__0),
        .I2(root_shift[30]),
        .O(\denominator[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_24 
       (.I0(root_rem_next0[33]),
        .I1(root_next__0),
        .I2(root_shift[33]),
        .O(\denominator[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_25 
       (.I0(root_rem_next0[36]),
        .I1(root_next__0),
        .I2(root_shift[36]),
        .O(\denominator[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_26 
       (.I0(root_shift[46]),
        .I1(root_rem_next0[46]),
        .I2(root_shift[45]),
        .I3(root_next__0),
        .I4(root_rem_next0[45]),
        .O(\denominator[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_27 
       (.I0(root_rem_next0[47]),
        .I1(root_next__0),
        .I2(root_shift[47]),
        .O(\denominator[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_28 
       (.I0(root_shift[48]),
        .I1(root_rem_next0[48]),
        .I2(root_shift[50]),
        .I3(root_next__0),
        .I4(root_rem_next0[50]),
        .O(\denominator[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \denominator[3]_i_3 
       (.I0(\denominator[3]_i_8_n_0 ),
        .I1(\denominator[3]_i_9_n_0 ),
        .I2(\denominator[3]_i_10_n_0 ),
        .I3(\denominator[3]_i_11_n_0 ),
        .I4(\denominator[3]_i_12_n_0 ),
        .I5(\denominator[3]_i_13_n_0 ),
        .O(\denominator[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_30 
       (.I0(root_shift[43]),
        .I1(root_rem_next0[43]),
        .I2(root_shift[42]),
        .I3(root_next__0),
        .I4(root_rem_next0[42]),
        .O(\denominator[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_31 
       (.I0(root_shift[40]),
        .I1(root_rem_next0[40]),
        .I2(root_shift[39]),
        .I3(root_next__0),
        .I4(root_rem_next0[39]),
        .O(\denominator[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_32 
       (.I0(root_rem_next0[41]),
        .I1(root_next__0),
        .I2(root_shift[41]),
        .O(\denominator[3]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_33 
       (.I0(root_rem_next0[4]),
        .I1(root_next__0),
        .I2(root_shift[4]),
        .O(\denominator[3]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \denominator[3]_i_34 
       (.I0(root_shift[16]),
        .I1(root_rem_next0[16]),
        .I2(root_shift[15]),
        .I3(root_next__0),
        .I4(root_rem_next0[15]),
        .O(\denominator[3]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_35 
       (.I0(root_rem_next0[17]),
        .I1(root_next__0),
        .I2(root_shift[17]),
        .O(\denominator[3]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_36 
       (.I0(root_rem_next0[23]),
        .I1(root_next__0),
        .I2(root_shift[23]),
        .O(\denominator[3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \denominator[3]_i_37 
       (.I0(root_rem_next0[20]),
        .I1(root_next__0),
        .I2(root_shift[20]),
        .O(\denominator[3]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \denominator[3]_i_38 
       (.I0(\root_reg_n_0_[48] ),
        .I1(root_shift[50]),
        .O(\denominator[3]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \denominator[3]_i_39 
       (.I0(root_next[48]),
        .I1(root_shift[49]),
        .O(\denominator[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCFFA)) 
    \denominator[3]_i_4 
       (.I0(root_shift[1]),
        .I1(root_rem_next0[1]),
        .I2(root_next__0),
        .I3(root_shift[0]),
        .I4(\denominator[3]_i_14_n_0 ),
        .I5(\denominator[3]_i_15_n_0 ),
        .O(\denominator[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_5 
       (.I0(root_shift[9]),
        .I1(root_rem_next0[9]),
        .I2(\denominator[3]_i_16_n_0 ),
        .I3(root_rem_next0[8]),
        .I4(root_next__0),
        .I5(root_shift[8]),
        .O(\denominator[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_6 
       (.I0(root_shift[12]),
        .I1(root_rem_next0[12]),
        .I2(\denominator[3]_i_17_n_0 ),
        .I3(root_rem_next0[11]),
        .I4(root_next__0),
        .I5(root_shift[11]),
        .O(\denominator[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \denominator[3]_i_7 
       (.I0(\denominator[3]_i_18_n_0 ),
        .I1(\denominator[3]_i_19_n_0 ),
        .I2(\denominator[3]_i_20_n_0 ),
        .I3(\denominator[3]_i_21_n_0 ),
        .O(\denominator[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \denominator[3]_i_8 
       (.I0(root_rem_next0[28]),
        .I1(root_next__0),
        .I2(root_shift[28]),
        .I3(root_rem_next0[29]),
        .I4(root_shift[29]),
        .I5(\denominator[3]_i_22_n_0 ),
        .O(\denominator[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \denominator[3]_i_9 
       (.I0(root_shift[32]),
        .I1(root_rem_next0[32]),
        .I2(\denominator[3]_i_23_n_0 ),
        .I3(root_rem_next0[31]),
        .I4(root_next__0),
        .I5(root_shift[31]),
        .O(\denominator[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \denominator[48]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\denominator[48]_i_3_n_0 ),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\denominator[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \denominator[48]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\denominator[48]_i_3_n_0 ));
  FDSE \denominator_reg[0] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\denominator_reg_n_0_[0] ),
        .S(rst_0));
  FDRE \denominator_reg[10] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\denominator_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \denominator_reg[11] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\denominator_reg_n_0_[11] ),
        .R(rst_0));
  CARRY4 \denominator_reg[11]_i_1 
       (.CI(\denominator_reg[7]_i_1_n_0 ),
        .CO({\denominator_reg[11]_i_1_n_0 ,\denominator_reg[11]_i_1_n_1 ,\denominator_reg[11]_i_1_n_2 ,\denominator_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[11:8]),
        .S(root_next[11:8]));
  FDRE \denominator_reg[12] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\denominator_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \denominator_reg[13] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\denominator_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \denominator_reg[14] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\denominator_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \denominator_reg[15] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\denominator_reg_n_0_[15] ),
        .R(rst_0));
  CARRY4 \denominator_reg[15]_i_1 
       (.CI(\denominator_reg[11]_i_1_n_0 ),
        .CO({\denominator_reg[15]_i_1_n_0 ,\denominator_reg[15]_i_1_n_1 ,\denominator_reg[15]_i_1_n_2 ,\denominator_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[15:12]),
        .S(root_next[15:12]));
  FDRE \denominator_reg[16] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\denominator_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \denominator_reg[17] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\denominator_reg_n_0_[17] ),
        .R(rst_0));
  FDRE \denominator_reg[18] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\denominator_reg_n_0_[18] ),
        .R(rst_0));
  FDRE \denominator_reg[19] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\denominator_reg_n_0_[19] ),
        .R(rst_0));
  CARRY4 \denominator_reg[19]_i_1 
       (.CI(\denominator_reg[15]_i_1_n_0 ),
        .CO({\denominator_reg[19]_i_1_n_0 ,\denominator_reg[19]_i_1_n_1 ,\denominator_reg[19]_i_1_n_2 ,\denominator_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[19:16]),
        .S(root_next[19:16]));
  FDRE \denominator_reg[1] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\denominator_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \denominator_reg[20] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\denominator_reg_n_0_[20] ),
        .R(rst_0));
  FDRE \denominator_reg[21] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\denominator_reg_n_0_[21] ),
        .R(rst_0));
  FDRE \denominator_reg[22] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\denominator_reg_n_0_[22] ),
        .R(rst_0));
  FDRE \denominator_reg[23] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\denominator_reg_n_0_[23] ),
        .R(rst_0));
  CARRY4 \denominator_reg[23]_i_1 
       (.CI(\denominator_reg[19]_i_1_n_0 ),
        .CO({\denominator_reg[23]_i_1_n_0 ,\denominator_reg[23]_i_1_n_1 ,\denominator_reg[23]_i_1_n_2 ,\denominator_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[23:20]),
        .S(root_next[23:20]));
  FDRE \denominator_reg[24] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\denominator_reg_n_0_[24] ),
        .R(rst_0));
  FDRE \denominator_reg[25] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\denominator_reg_n_0_[25] ),
        .R(rst_0));
  FDRE \denominator_reg[26] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\denominator_reg_n_0_[26] ),
        .R(rst_0));
  FDRE \denominator_reg[27] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\denominator_reg_n_0_[27] ),
        .R(rst_0));
  CARRY4 \denominator_reg[27]_i_1 
       (.CI(\denominator_reg[23]_i_1_n_0 ),
        .CO({\denominator_reg[27]_i_1_n_0 ,\denominator_reg[27]_i_1_n_1 ,\denominator_reg[27]_i_1_n_2 ,\denominator_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[27:24]),
        .S(root_next[27:24]));
  FDRE \denominator_reg[28] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\denominator_reg_n_0_[28] ),
        .R(rst_0));
  FDRE \denominator_reg[29] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(\denominator_reg_n_0_[29] ),
        .R(rst_0));
  FDRE \denominator_reg[2] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\denominator_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \denominator_reg[30] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(\denominator_reg_n_0_[30] ),
        .R(rst_0));
  FDRE \denominator_reg[31] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(\denominator_reg_n_0_[31] ),
        .R(rst_0));
  CARRY4 \denominator_reg[31]_i_1 
       (.CI(\denominator_reg[27]_i_1_n_0 ),
        .CO({\denominator_reg[31]_i_1_n_0 ,\denominator_reg[31]_i_1_n_1 ,\denominator_reg[31]_i_1_n_2 ,\denominator_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[31:28]),
        .S(root_next[31:28]));
  FDRE \denominator_reg[32] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[32]),
        .Q(\denominator_reg_n_0_[32] ),
        .R(rst_0));
  FDRE \denominator_reg[33] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[33]),
        .Q(\denominator_reg_n_0_[33] ),
        .R(rst_0));
  FDRE \denominator_reg[34] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[34]),
        .Q(\denominator_reg_n_0_[34] ),
        .R(rst_0));
  FDRE \denominator_reg[35] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[35]),
        .Q(\denominator_reg_n_0_[35] ),
        .R(rst_0));
  CARRY4 \denominator_reg[35]_i_1 
       (.CI(\denominator_reg[31]_i_1_n_0 ),
        .CO({\denominator_reg[35]_i_1_n_0 ,\denominator_reg[35]_i_1_n_1 ,\denominator_reg[35]_i_1_n_2 ,\denominator_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[35:32]),
        .S(root_next[35:32]));
  FDRE \denominator_reg[36] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[36]),
        .Q(\denominator_reg_n_0_[36] ),
        .R(rst_0));
  FDRE \denominator_reg[37] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[37]),
        .Q(\denominator_reg_n_0_[37] ),
        .R(rst_0));
  FDRE \denominator_reg[38] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[38]),
        .Q(\denominator_reg_n_0_[38] ),
        .R(rst_0));
  FDRE \denominator_reg[39] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[39]),
        .Q(\denominator_reg_n_0_[39] ),
        .R(rst_0));
  CARRY4 \denominator_reg[39]_i_1 
       (.CI(\denominator_reg[35]_i_1_n_0 ),
        .CO({\denominator_reg[39]_i_1_n_0 ,\denominator_reg[39]_i_1_n_1 ,\denominator_reg[39]_i_1_n_2 ,\denominator_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[39:36]),
        .S(root_next[39:36]));
  FDRE \denominator_reg[3] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\denominator_reg_n_0_[3] ),
        .R(rst_0));
  CARRY4 \denominator_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\denominator_reg[3]_i_1_n_0 ,\denominator_reg[3]_i_1_n_1 ,\denominator_reg[3]_i_1_n_2 ,\denominator_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,root_next__0}),
        .O(p_1_in[3:0]),
        .S({root_next[3:1],\denominator[3]_i_2_n_0 }));
  CARRY4 \denominator_reg[3]_i_29 
       (.CI(\root_rem_reg[48]_i_2_n_0 ),
        .CO({\NLW_denominator_reg[3]_i_29_CO_UNCONNECTED [3:1],\denominator_reg[3]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,root_shift[49]}),
        .O({\NLW_denominator_reg[3]_i_29_O_UNCONNECTED [3:2],root_rem_next0[50:49]}),
        .S({1'b0,1'b0,\denominator[3]_i_38_n_0 ,\denominator[3]_i_39_n_0 }));
  FDRE \denominator_reg[40] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[40]),
        .Q(\denominator_reg_n_0_[40] ),
        .R(rst_0));
  FDRE \denominator_reg[41] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[41]),
        .Q(\denominator_reg_n_0_[41] ),
        .R(rst_0));
  FDRE \denominator_reg[42] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[42]),
        .Q(\denominator_reg_n_0_[42] ),
        .R(rst_0));
  FDRE \denominator_reg[43] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[43]),
        .Q(\denominator_reg_n_0_[43] ),
        .R(rst_0));
  CARRY4 \denominator_reg[43]_i_1 
       (.CI(\denominator_reg[39]_i_1_n_0 ),
        .CO({\denominator_reg[43]_i_1_n_0 ,\denominator_reg[43]_i_1_n_1 ,\denominator_reg[43]_i_1_n_2 ,\denominator_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[43:40]),
        .S(root_next[43:40]));
  FDRE \denominator_reg[44] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[44]),
        .Q(\denominator_reg_n_0_[44] ),
        .R(rst_0));
  FDRE \denominator_reg[45] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[45]),
        .Q(\denominator_reg_n_0_[45] ),
        .R(rst_0));
  FDRE \denominator_reg[46] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[46]),
        .Q(\denominator_reg_n_0_[46] ),
        .R(rst_0));
  FDRE \denominator_reg[47] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[47]),
        .Q(\denominator_reg_n_0_[47] ),
        .R(rst_0));
  CARRY4 \denominator_reg[47]_i_1 
       (.CI(\denominator_reg[43]_i_1_n_0 ),
        .CO({\denominator_reg[47]_i_1_n_0 ,\denominator_reg[47]_i_1_n_1 ,\denominator_reg[47]_i_1_n_2 ,\denominator_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[47:44]),
        .S(root_next[47:44]));
  FDRE \denominator_reg[48] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[48]),
        .Q(\denominator_reg_n_0_[48] ),
        .R(rst_0));
  CARRY4 \denominator_reg[48]_i_2 
       (.CI(\denominator_reg[47]_i_1_n_0 ),
        .CO(\NLW_denominator_reg[48]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_denominator_reg[48]_i_2_O_UNCONNECTED [3:1],p_1_in[48]}),
        .S({1'b0,1'b0,1'b0,root_next[48]}));
  FDRE \denominator_reg[4] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\denominator_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \denominator_reg[5] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\denominator_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \denominator_reg[6] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\denominator_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \denominator_reg[7] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\denominator_reg_n_0_[7] ),
        .R(rst_0));
  CARRY4 \denominator_reg[7]_i_1 
       (.CI(\denominator_reg[3]_i_1_n_0 ),
        .CO({\denominator_reg[7]_i_1_n_0 ,\denominator_reg[7]_i_1_n_1 ,\denominator_reg[7]_i_1_n_2 ,\denominator_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[7:4]),
        .S(root_next[7:4]));
  FDRE \denominator_reg[8] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\denominator_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \denominator_reg[9] 
       (.C(clk),
        .CE(\denominator[48]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\denominator_reg_n_0_[9] ),
        .R(rst_0));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \div_rem_im[0]_i_1 
       (.I0(\div_rem_im_reg[48]_0 ),
        .I1(\denominator_reg_n_0_[0] ),
        .I2(\state_reg[0]_rep__1_n_0 ),
        .I3(div_rem_im10_in[0]),
        .I4(\div_rem_im_reg[0]_i_3_n_3 ),
        .I5(\abs_im_reg_n_0_[0] ),
        .O(\div_rem_im[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[0]_i_10 
       (.I0(\denominator_reg_n_0_[48] ),
        .I1(\abs_im_reg_n_0_[48] ),
        .O(\div_rem_im[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_12 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(\abs_im_reg_n_0_[47] ),
        .I2(\abs_im_reg_n_0_[46] ),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_13 
       (.I0(\denominator_reg_n_0_[45] ),
        .I1(\abs_im_reg_n_0_[45] ),
        .I2(\abs_im_reg_n_0_[44] ),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_14 
       (.I0(\denominator_reg_n_0_[43] ),
        .I1(\abs_im_reg_n_0_[43] ),
        .I2(\abs_im_reg_n_0_[42] ),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_15 
       (.I0(\denominator_reg_n_0_[41] ),
        .I1(\abs_im_reg_n_0_[41] ),
        .I2(\abs_im_reg_n_0_[40] ),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_16 
       (.I0(\abs_im_reg_n_0_[47] ),
        .I1(\denominator_reg_n_0_[47] ),
        .I2(\abs_im_reg_n_0_[46] ),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_17 
       (.I0(\abs_im_reg_n_0_[45] ),
        .I1(\denominator_reg_n_0_[45] ),
        .I2(\abs_im_reg_n_0_[44] ),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_18 
       (.I0(\abs_im_reg_n_0_[43] ),
        .I1(\denominator_reg_n_0_[43] ),
        .I2(\abs_im_reg_n_0_[42] ),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_19 
       (.I0(\abs_im_reg_n_0_[41] ),
        .I1(\denominator_reg_n_0_[41] ),
        .I2(\abs_im_reg_n_0_[40] ),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_21 
       (.I0(\denominator_reg_n_0_[39] ),
        .I1(\abs_im_reg_n_0_[39] ),
        .I2(\abs_im_reg_n_0_[38] ),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_22 
       (.I0(\denominator_reg_n_0_[37] ),
        .I1(\abs_im_reg_n_0_[37] ),
        .I2(\abs_im_reg_n_0_[36] ),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_23 
       (.I0(\denominator_reg_n_0_[35] ),
        .I1(\abs_im_reg_n_0_[35] ),
        .I2(\abs_im_reg_n_0_[34] ),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_24 
       (.I0(\denominator_reg_n_0_[33] ),
        .I1(\abs_im_reg_n_0_[33] ),
        .I2(\abs_im_reg_n_0_[32] ),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_25 
       (.I0(\abs_im_reg_n_0_[39] ),
        .I1(\denominator_reg_n_0_[39] ),
        .I2(\abs_im_reg_n_0_[38] ),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_26 
       (.I0(\abs_im_reg_n_0_[37] ),
        .I1(\denominator_reg_n_0_[37] ),
        .I2(\abs_im_reg_n_0_[36] ),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_27 
       (.I0(\abs_im_reg_n_0_[35] ),
        .I1(\denominator_reg_n_0_[35] ),
        .I2(\abs_im_reg_n_0_[34] ),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_28 
       (.I0(\abs_im_reg_n_0_[33] ),
        .I1(\denominator_reg_n_0_[33] ),
        .I2(\abs_im_reg_n_0_[32] ),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_30 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(\abs_im_reg_n_0_[31] ),
        .I2(\abs_im_reg_n_0_[30] ),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_31 
       (.I0(\denominator_reg_n_0_[29] ),
        .I1(\abs_im_reg_n_0_[29] ),
        .I2(\abs_im_reg_n_0_[28] ),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_32 
       (.I0(\denominator_reg_n_0_[27] ),
        .I1(\abs_im_reg_n_0_[27] ),
        .I2(\abs_im_reg_n_0_[26] ),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_33 
       (.I0(\denominator_reg_n_0_[25] ),
        .I1(\abs_im_reg_n_0_[25] ),
        .I2(\abs_im_reg_n_0_[24] ),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_34 
       (.I0(\abs_im_reg_n_0_[31] ),
        .I1(\denominator_reg_n_0_[31] ),
        .I2(\abs_im_reg_n_0_[30] ),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_35 
       (.I0(\abs_im_reg_n_0_[29] ),
        .I1(\denominator_reg_n_0_[29] ),
        .I2(\abs_im_reg_n_0_[28] ),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_36 
       (.I0(\abs_im_reg_n_0_[27] ),
        .I1(\denominator_reg_n_0_[27] ),
        .I2(\abs_im_reg_n_0_[26] ),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_37 
       (.I0(\abs_im_reg_n_0_[25] ),
        .I1(\denominator_reg_n_0_[25] ),
        .I2(\abs_im_reg_n_0_[24] ),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_39 
       (.I0(\denominator_reg_n_0_[23] ),
        .I1(\abs_im_reg_n_0_[23] ),
        .I2(\abs_im_reg_n_0_[22] ),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[0]_i_4 
       (.I0(\abs_im_reg_n_0_[3] ),
        .I1(\denominator_reg_n_0_[3] ),
        .O(\div_rem_im[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_40 
       (.I0(\denominator_reg_n_0_[21] ),
        .I1(\abs_im_reg_n_0_[21] ),
        .I2(\abs_im_reg_n_0_[20] ),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_41 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(\abs_im_reg_n_0_[19] ),
        .I2(\abs_im_reg_n_0_[18] ),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_42 
       (.I0(\denominator_reg_n_0_[17] ),
        .I1(\abs_im_reg_n_0_[17] ),
        .I2(\abs_im_reg_n_0_[16] ),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_43 
       (.I0(\abs_im_reg_n_0_[23] ),
        .I1(\denominator_reg_n_0_[23] ),
        .I2(\abs_im_reg_n_0_[22] ),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_44 
       (.I0(\abs_im_reg_n_0_[21] ),
        .I1(\denominator_reg_n_0_[21] ),
        .I2(\abs_im_reg_n_0_[20] ),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_45 
       (.I0(\abs_im_reg_n_0_[19] ),
        .I1(\denominator_reg_n_0_[19] ),
        .I2(\abs_im_reg_n_0_[18] ),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_46 
       (.I0(\abs_im_reg_n_0_[17] ),
        .I1(\denominator_reg_n_0_[17] ),
        .I2(\abs_im_reg_n_0_[16] ),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_48 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(\abs_im_reg_n_0_[15] ),
        .I2(\abs_im_reg_n_0_[14] ),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_49 
       (.I0(\denominator_reg_n_0_[13] ),
        .I1(\abs_im_reg_n_0_[13] ),
        .I2(\abs_im_reg_n_0_[12] ),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[0]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[0]_i_5 
       (.I0(\abs_im_reg_n_0_[2] ),
        .I1(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_50 
       (.I0(\denominator_reg_n_0_[11] ),
        .I1(\abs_im_reg_n_0_[11] ),
        .I2(\abs_im_reg_n_0_[10] ),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_51 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(\abs_im_reg_n_0_[9] ),
        .I2(\abs_im_reg_n_0_[8] ),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_52 
       (.I0(\abs_im_reg_n_0_[15] ),
        .I1(\denominator_reg_n_0_[15] ),
        .I2(\abs_im_reg_n_0_[14] ),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_53 
       (.I0(\abs_im_reg_n_0_[13] ),
        .I1(\denominator_reg_n_0_[13] ),
        .I2(\abs_im_reg_n_0_[12] ),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_54 
       (.I0(\abs_im_reg_n_0_[11] ),
        .I1(\denominator_reg_n_0_[11] ),
        .I2(\abs_im_reg_n_0_[10] ),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_55 
       (.I0(\abs_im_reg_n_0_[9] ),
        .I1(\denominator_reg_n_0_[9] ),
        .I2(\abs_im_reg_n_0_[8] ),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_56 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(\abs_im_reg_n_0_[7] ),
        .I2(\abs_im_reg_n_0_[6] ),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_57 
       (.I0(\denominator_reg_n_0_[5] ),
        .I1(\abs_im_reg_n_0_[5] ),
        .I2(\abs_im_reg_n_0_[4] ),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_58 
       (.I0(\denominator_reg_n_0_[3] ),
        .I1(\abs_im_reg_n_0_[3] ),
        .I2(\abs_im_reg_n_0_[2] ),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[0]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[0]_i_59 
       (.I0(\denominator_reg_n_0_[1] ),
        .I1(\abs_im_reg_n_0_[1] ),
        .I2(\abs_im_reg_n_0_[0] ),
        .I3(\denominator_reg_n_0_[0] ),
        .O(\div_rem_im[0]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[0]_i_6 
       (.I0(\abs_im_reg_n_0_[1] ),
        .I1(\denominator_reg_n_0_[1] ),
        .O(\div_rem_im[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_60 
       (.I0(\abs_im_reg_n_0_[7] ),
        .I1(\denominator_reg_n_0_[7] ),
        .I2(\abs_im_reg_n_0_[6] ),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[0]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_61 
       (.I0(\abs_im_reg_n_0_[5] ),
        .I1(\denominator_reg_n_0_[5] ),
        .I2(\abs_im_reg_n_0_[4] ),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_62 
       (.I0(\abs_im_reg_n_0_[3] ),
        .I1(\denominator_reg_n_0_[3] ),
        .I2(\abs_im_reg_n_0_[2] ),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[0]_i_63 
       (.I0(\abs_im_reg_n_0_[1] ),
        .I1(\denominator_reg_n_0_[1] ),
        .I2(\abs_im_reg_n_0_[0] ),
        .I3(\denominator_reg_n_0_[0] ),
        .O(\div_rem_im[0]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[0]_i_7 
       (.I0(\abs_im_reg_n_0_[0] ),
        .I1(\denominator_reg_n_0_[0] ),
        .O(\div_rem_im[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div_rem_im[0]_i_9 
       (.I0(\abs_im_reg_n_0_[48] ),
        .I1(\denominator_reg_n_0_[48] ),
        .O(\div_rem_im[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[10]_i_1 
       (.I0(div_rem_im1[10]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[9]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[10]_i_2_n_0 ),
        .O(\div_rem_im[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[10]_i_2 
       (.I0(div_rem_im10_in[10]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[10] ),
        .O(\div_rem_im[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[11]_i_1 
       (.I0(div_rem_im1[11]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[10]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[11]_i_3_n_0 ),
        .O(\div_rem_im[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_10 
       (.I0(\abs_im_reg_n_0_[10] ),
        .I1(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_11 
       (.I0(\abs_im_reg_n_0_[9] ),
        .I1(\denominator_reg_n_0_[9] ),
        .O(\div_rem_im[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_12 
       (.I0(\abs_im_reg_n_0_[8] ),
        .I1(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[11]_i_3 
       (.I0(div_rem_im10_in[11]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[11] ),
        .O(\div_rem_im[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_4 
       (.I0(div_rem_im[10]),
        .I1(\denominator_reg_n_0_[11] ),
        .O(\div_rem_im[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_5 
       (.I0(div_rem_im[9]),
        .I1(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_6 
       (.I0(div_rem_im[8]),
        .I1(\denominator_reg_n_0_[9] ),
        .O(\div_rem_im[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_7 
       (.I0(div_rem_im[7]),
        .I1(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[11]_i_9 
       (.I0(\abs_im_reg_n_0_[11] ),
        .I1(\denominator_reg_n_0_[11] ),
        .O(\div_rem_im[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[12]_i_1 
       (.I0(div_rem_im1[12]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[11]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[12]_i_2_n_0 ),
        .O(\div_rem_im[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[12]_i_2 
       (.I0(div_rem_im10_in[12]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[12] ),
        .O(\div_rem_im[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[13]_i_1 
       (.I0(div_rem_im1[13]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[12]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[13]_i_2_n_0 ),
        .O(\div_rem_im[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[13]_i_2 
       (.I0(div_rem_im10_in[13]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[13] ),
        .O(\div_rem_im[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[14]_i_1 
       (.I0(div_rem_im1[14]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[13]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[14]_i_2_n_0 ),
        .O(\div_rem_im[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[14]_i_2 
       (.I0(div_rem_im10_in[14]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[14] ),
        .O(\div_rem_im[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[15]_i_1 
       (.I0(div_rem_im1[15]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[14]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[15]_i_3_n_0 ),
        .O(\div_rem_im[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_10 
       (.I0(\abs_im_reg_n_0_[14] ),
        .I1(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_11 
       (.I0(\abs_im_reg_n_0_[13] ),
        .I1(\denominator_reg_n_0_[13] ),
        .O(\div_rem_im[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_12 
       (.I0(\abs_im_reg_n_0_[12] ),
        .I1(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[15]_i_3 
       (.I0(div_rem_im10_in[15]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[15] ),
        .O(\div_rem_im[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_4 
       (.I0(div_rem_im[14]),
        .I1(\denominator_reg_n_0_[15] ),
        .O(\div_rem_im[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_5 
       (.I0(div_rem_im[13]),
        .I1(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_6 
       (.I0(div_rem_im[12]),
        .I1(\denominator_reg_n_0_[13] ),
        .O(\div_rem_im[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_7 
       (.I0(div_rem_im[11]),
        .I1(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[15]_i_9 
       (.I0(\abs_im_reg_n_0_[15] ),
        .I1(\denominator_reg_n_0_[15] ),
        .O(\div_rem_im[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[16]_i_1 
       (.I0(div_rem_im1[16]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[15]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[16]_i_2_n_0 ),
        .O(\div_rem_im[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[16]_i_2 
       (.I0(div_rem_im10_in[16]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[16] ),
        .O(\div_rem_im[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[17]_i_1 
       (.I0(div_rem_im1[17]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[16]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[17]_i_2_n_0 ),
        .O(\div_rem_im[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[17]_i_2 
       (.I0(div_rem_im10_in[17]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[17] ),
        .O(\div_rem_im[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[18]_i_1 
       (.I0(div_rem_im1[18]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[17]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[18]_i_2_n_0 ),
        .O(\div_rem_im[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[18]_i_2 
       (.I0(div_rem_im10_in[18]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[18] ),
        .O(\div_rem_im[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[19]_i_1 
       (.I0(div_rem_im1[19]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[18]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[19]_i_3_n_0 ),
        .O(\div_rem_im[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_10 
       (.I0(\abs_im_reg_n_0_[18] ),
        .I1(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_11 
       (.I0(\abs_im_reg_n_0_[17] ),
        .I1(\denominator_reg_n_0_[17] ),
        .O(\div_rem_im[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_12 
       (.I0(\abs_im_reg_n_0_[16] ),
        .I1(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[19]_i_3 
       (.I0(div_rem_im10_in[19]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[19] ),
        .O(\div_rem_im[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_4 
       (.I0(div_rem_im[18]),
        .I1(\denominator_reg_n_0_[19] ),
        .O(\div_rem_im[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_5 
       (.I0(div_rem_im[17]),
        .I1(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_6 
       (.I0(div_rem_im[16]),
        .I1(\denominator_reg_n_0_[17] ),
        .O(\div_rem_im[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_7 
       (.I0(div_rem_im[15]),
        .I1(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[19]_i_9 
       (.I0(\abs_im_reg_n_0_[19] ),
        .I1(\denominator_reg_n_0_[19] ),
        .O(\div_rem_im[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[1]_i_1 
       (.I0(div_rem_im1[1]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[0]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[1]_i_2_n_0 ),
        .O(\div_rem_im[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[1]_i_2 
       (.I0(div_rem_im10_in[1]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[1] ),
        .O(\div_rem_im[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[20]_i_1 
       (.I0(div_rem_im1[20]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[19]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[20]_i_2_n_0 ),
        .O(\div_rem_im[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[20]_i_2 
       (.I0(div_rem_im10_in[20]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[20] ),
        .O(\div_rem_im[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[21]_i_1 
       (.I0(div_rem_im1[21]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[20]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[21]_i_2_n_0 ),
        .O(\div_rem_im[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[21]_i_2 
       (.I0(div_rem_im10_in[21]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[21] ),
        .O(\div_rem_im[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[22]_i_1 
       (.I0(div_rem_im1[22]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[21]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[22]_i_2_n_0 ),
        .O(\div_rem_im[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[22]_i_2 
       (.I0(div_rem_im10_in[22]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[22] ),
        .O(\div_rem_im[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[23]_i_1 
       (.I0(div_rem_im1[23]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[22]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[23]_i_3_n_0 ),
        .O(\div_rem_im[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_10 
       (.I0(\abs_im_reg_n_0_[22] ),
        .I1(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_11 
       (.I0(\abs_im_reg_n_0_[21] ),
        .I1(\denominator_reg_n_0_[21] ),
        .O(\div_rem_im[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_12 
       (.I0(\abs_im_reg_n_0_[20] ),
        .I1(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[23]_i_3 
       (.I0(div_rem_im10_in[23]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[23] ),
        .O(\div_rem_im[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_4 
       (.I0(div_rem_im[22]),
        .I1(\denominator_reg_n_0_[23] ),
        .O(\div_rem_im[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_5 
       (.I0(div_rem_im[21]),
        .I1(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_6 
       (.I0(div_rem_im[20]),
        .I1(\denominator_reg_n_0_[21] ),
        .O(\div_rem_im[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_7 
       (.I0(div_rem_im[19]),
        .I1(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[23]_i_9 
       (.I0(\abs_im_reg_n_0_[23] ),
        .I1(\denominator_reg_n_0_[23] ),
        .O(\div_rem_im[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[24]_i_1 
       (.I0(div_rem_im1[24]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[23]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[24]_i_2_n_0 ),
        .O(\div_rem_im[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[24]_i_2 
       (.I0(div_rem_im10_in[24]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[24] ),
        .O(\div_rem_im[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[25]_i_1 
       (.I0(div_rem_im1[25]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[24]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[25]_i_2_n_0 ),
        .O(\div_rem_im[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[25]_i_2 
       (.I0(div_rem_im10_in[25]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[25] ),
        .O(\div_rem_im[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[26]_i_1 
       (.I0(div_rem_im1[26]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[25]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[26]_i_2_n_0 ),
        .O(\div_rem_im[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[26]_i_2 
       (.I0(div_rem_im10_in[26]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[26] ),
        .O(\div_rem_im[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[27]_i_1 
       (.I0(div_rem_im1[27]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[26]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[27]_i_3_n_0 ),
        .O(\div_rem_im[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_10 
       (.I0(\abs_im_reg_n_0_[26] ),
        .I1(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_11 
       (.I0(\abs_im_reg_n_0_[25] ),
        .I1(\denominator_reg_n_0_[25] ),
        .O(\div_rem_im[27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_12 
       (.I0(\abs_im_reg_n_0_[24] ),
        .I1(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[27]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[27]_i_3 
       (.I0(div_rem_im10_in[27]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[27] ),
        .O(\div_rem_im[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_4 
       (.I0(div_rem_im[26]),
        .I1(\denominator_reg_n_0_[27] ),
        .O(\div_rem_im[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_5 
       (.I0(div_rem_im[25]),
        .I1(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_6 
       (.I0(div_rem_im[24]),
        .I1(\denominator_reg_n_0_[25] ),
        .O(\div_rem_im[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_7 
       (.I0(div_rem_im[23]),
        .I1(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[27]_i_9 
       (.I0(\abs_im_reg_n_0_[27] ),
        .I1(\denominator_reg_n_0_[27] ),
        .O(\div_rem_im[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[28]_i_1 
       (.I0(div_rem_im1[28]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[27]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[28]_i_2_n_0 ),
        .O(\div_rem_im[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[28]_i_2 
       (.I0(div_rem_im10_in[28]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[28] ),
        .O(\div_rem_im[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[29]_i_1 
       (.I0(div_rem_im1[29]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[28]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[29]_i_2_n_0 ),
        .O(\div_rem_im[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[29]_i_2 
       (.I0(div_rem_im10_in[29]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[29] ),
        .O(\div_rem_im[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[2]_i_1 
       (.I0(div_rem_im1[2]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[1]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[2]_i_2_n_0 ),
        .O(\div_rem_im[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[2]_i_2 
       (.I0(div_rem_im10_in[2]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[2] ),
        .O(\div_rem_im[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[30]_i_1 
       (.I0(div_rem_im1[30]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[29]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[30]_i_2_n_0 ),
        .O(\div_rem_im[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[30]_i_2 
       (.I0(div_rem_im10_in[30]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[30] ),
        .O(\div_rem_im[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[31]_i_1 
       (.I0(div_rem_im1[31]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[30]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[31]_i_3_n_0 ),
        .O(\div_rem_im[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_10 
       (.I0(\abs_im_reg_n_0_[30] ),
        .I1(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_11 
       (.I0(\abs_im_reg_n_0_[29] ),
        .I1(\denominator_reg_n_0_[29] ),
        .O(\div_rem_im[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_12 
       (.I0(\abs_im_reg_n_0_[28] ),
        .I1(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[31]_i_3 
       (.I0(div_rem_im10_in[31]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[31] ),
        .O(\div_rem_im[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_4 
       (.I0(div_rem_im[30]),
        .I1(\denominator_reg_n_0_[31] ),
        .O(\div_rem_im[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_5 
       (.I0(div_rem_im[29]),
        .I1(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_6 
       (.I0(div_rem_im[28]),
        .I1(\denominator_reg_n_0_[29] ),
        .O(\div_rem_im[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_7 
       (.I0(div_rem_im[27]),
        .I1(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[31]_i_9 
       (.I0(\abs_im_reg_n_0_[31] ),
        .I1(\denominator_reg_n_0_[31] ),
        .O(\div_rem_im[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[32]_i_1 
       (.I0(div_rem_im1[32]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[31]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[32]_i_2_n_0 ),
        .O(\div_rem_im[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[32]_i_2 
       (.I0(div_rem_im10_in[32]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[32] ),
        .O(\div_rem_im[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[33]_i_1 
       (.I0(div_rem_im1[33]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[32]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[33]_i_2_n_0 ),
        .O(\div_rem_im[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[33]_i_2 
       (.I0(div_rem_im10_in[33]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[33] ),
        .O(\div_rem_im[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[34]_i_1 
       (.I0(div_rem_im1[34]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[33]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[34]_i_2_n_0 ),
        .O(\div_rem_im[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[34]_i_2 
       (.I0(div_rem_im10_in[34]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[34] ),
        .O(\div_rem_im[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[35]_i_1 
       (.I0(div_rem_im1[35]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[34]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[35]_i_3_n_0 ),
        .O(\div_rem_im[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_10 
       (.I0(\abs_im_reg_n_0_[34] ),
        .I1(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[35]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_11 
       (.I0(\abs_im_reg_n_0_[33] ),
        .I1(\denominator_reg_n_0_[33] ),
        .O(\div_rem_im[35]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_12 
       (.I0(\abs_im_reg_n_0_[32] ),
        .I1(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[35]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[35]_i_3 
       (.I0(div_rem_im10_in[35]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[35] ),
        .O(\div_rem_im[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_4 
       (.I0(div_rem_im[34]),
        .I1(\denominator_reg_n_0_[35] ),
        .O(\div_rem_im[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_5 
       (.I0(div_rem_im[33]),
        .I1(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_6 
       (.I0(div_rem_im[32]),
        .I1(\denominator_reg_n_0_[33] ),
        .O(\div_rem_im[35]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_7 
       (.I0(div_rem_im[31]),
        .I1(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[35]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[35]_i_9 
       (.I0(\abs_im_reg_n_0_[35] ),
        .I1(\denominator_reg_n_0_[35] ),
        .O(\div_rem_im[35]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[36]_i_1 
       (.I0(div_rem_im1[36]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[35]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[36]_i_2_n_0 ),
        .O(\div_rem_im[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[36]_i_2 
       (.I0(div_rem_im10_in[36]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[36] ),
        .O(\div_rem_im[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[37]_i_1 
       (.I0(div_rem_im1[37]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[36]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[37]_i_2_n_0 ),
        .O(\div_rem_im[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[37]_i_2 
       (.I0(div_rem_im10_in[37]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[37] ),
        .O(\div_rem_im[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[38]_i_1 
       (.I0(div_rem_im1[38]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[37]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[38]_i_2_n_0 ),
        .O(\div_rem_im[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[38]_i_2 
       (.I0(div_rem_im10_in[38]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[38] ),
        .O(\div_rem_im[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[39]_i_1 
       (.I0(div_rem_im1[39]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[38]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[39]_i_3_n_0 ),
        .O(\div_rem_im[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_10 
       (.I0(\abs_im_reg_n_0_[38] ),
        .I1(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[39]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_11 
       (.I0(\abs_im_reg_n_0_[37] ),
        .I1(\denominator_reg_n_0_[37] ),
        .O(\div_rem_im[39]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_12 
       (.I0(\abs_im_reg_n_0_[36] ),
        .I1(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[39]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[39]_i_3 
       (.I0(div_rem_im10_in[39]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[39] ),
        .O(\div_rem_im[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_4 
       (.I0(div_rem_im[38]),
        .I1(\denominator_reg_n_0_[39] ),
        .O(\div_rem_im[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_5 
       (.I0(div_rem_im[37]),
        .I1(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_6 
       (.I0(div_rem_im[36]),
        .I1(\denominator_reg_n_0_[37] ),
        .O(\div_rem_im[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_7 
       (.I0(div_rem_im[35]),
        .I1(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[39]_i_9 
       (.I0(\abs_im_reg_n_0_[39] ),
        .I1(\denominator_reg_n_0_[39] ),
        .O(\div_rem_im[39]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[3]_i_1 
       (.I0(div_rem_im1[3]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[2]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[3]_i_3_n_0 ),
        .O(\div_rem_im[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[3]_i_3 
       (.I0(div_rem_im10_in[3]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[3] ),
        .O(\div_rem_im[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[3]_i_4 
       (.I0(div_rem_im[2]),
        .I1(\denominator_reg_n_0_[3] ),
        .O(\div_rem_im[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[3]_i_5 
       (.I0(div_rem_im[1]),
        .I1(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[3]_i_6 
       (.I0(div_rem_im[0]),
        .I1(\denominator_reg_n_0_[1] ),
        .O(\div_rem_im[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \div_rem_im[3]_i_7 
       (.I0(\denominator_reg_n_0_[0] ),
        .O(\div_rem_im[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[40]_i_1 
       (.I0(div_rem_im1[40]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[39]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[40]_i_2_n_0 ),
        .O(\div_rem_im[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[40]_i_2 
       (.I0(div_rem_im10_in[40]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[40] ),
        .O(\div_rem_im[40]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[41]_i_1 
       (.I0(div_rem_im1[41]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[40]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[41]_i_2_n_0 ),
        .O(\div_rem_im[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[41]_i_2 
       (.I0(div_rem_im10_in[41]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[41] ),
        .O(\div_rem_im[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[42]_i_1 
       (.I0(div_rem_im1[42]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[41]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[42]_i_2_n_0 ),
        .O(\div_rem_im[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[42]_i_2 
       (.I0(div_rem_im10_in[42]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[42] ),
        .O(\div_rem_im[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[43]_i_1 
       (.I0(div_rem_im1[43]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[42]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[43]_i_3_n_0 ),
        .O(\div_rem_im[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_10 
       (.I0(\abs_im_reg_n_0_[42] ),
        .I1(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_11 
       (.I0(\abs_im_reg_n_0_[41] ),
        .I1(\denominator_reg_n_0_[41] ),
        .O(\div_rem_im[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_12 
       (.I0(\abs_im_reg_n_0_[40] ),
        .I1(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[43]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[43]_i_3 
       (.I0(div_rem_im10_in[43]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[43] ),
        .O(\div_rem_im[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_4 
       (.I0(div_rem_im[42]),
        .I1(\denominator_reg_n_0_[43] ),
        .O(\div_rem_im[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_5 
       (.I0(div_rem_im[41]),
        .I1(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_6 
       (.I0(div_rem_im[40]),
        .I1(\denominator_reg_n_0_[41] ),
        .O(\div_rem_im[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_7 
       (.I0(div_rem_im[39]),
        .I1(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[43]_i_9 
       (.I0(\abs_im_reg_n_0_[43] ),
        .I1(\denominator_reg_n_0_[43] ),
        .O(\div_rem_im[43]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[44]_i_1 
       (.I0(div_rem_im1[44]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[43]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[44]_i_2_n_0 ),
        .O(\div_rem_im[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[44]_i_2 
       (.I0(div_rem_im10_in[44]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[44] ),
        .O(\div_rem_im[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[45]_i_1 
       (.I0(div_rem_im1[45]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[44]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[45]_i_2_n_0 ),
        .O(\div_rem_im[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[45]_i_2 
       (.I0(div_rem_im10_in[45]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[45] ),
        .O(\div_rem_im[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[46]_i_1 
       (.I0(div_rem_im1[46]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[45]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[46]_i_2_n_0 ),
        .O(\div_rem_im[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[46]_i_2 
       (.I0(div_rem_im10_in[46]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[46] ),
        .O(\div_rem_im[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[47]_i_1 
       (.I0(div_rem_im1[47]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[46]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[47]_i_3_n_0 ),
        .O(\div_rem_im[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_10 
       (.I0(\abs_im_reg_n_0_[46] ),
        .I1(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_11 
       (.I0(\abs_im_reg_n_0_[45] ),
        .I1(\denominator_reg_n_0_[45] ),
        .O(\div_rem_im[47]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_12 
       (.I0(\abs_im_reg_n_0_[44] ),
        .I1(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[47]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[47]_i_3 
       (.I0(div_rem_im10_in[47]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[47] ),
        .O(\div_rem_im[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_4 
       (.I0(div_rem_im[46]),
        .I1(\denominator_reg_n_0_[47] ),
        .O(\div_rem_im[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_5 
       (.I0(div_rem_im[45]),
        .I1(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_6 
       (.I0(div_rem_im[44]),
        .I1(\denominator_reg_n_0_[45] ),
        .O(\div_rem_im[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_7 
       (.I0(div_rem_im[43]),
        .I1(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[47]_i_9 
       (.I0(\abs_im_reg_n_0_[47] ),
        .I1(\denominator_reg_n_0_[47] ),
        .O(\div_rem_im[47]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[48]_i_1 
       (.I0(div_rem_im1[48]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[47]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[48]_i_4_n_0 ),
        .O(\div_rem_im[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_11 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(div_rem_im[46]),
        .I2(div_rem_im[45]),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[48]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_12 
       (.I0(\denominator_reg_n_0_[45] ),
        .I1(div_rem_im[44]),
        .I2(div_rem_im[43]),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[48]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_13 
       (.I0(\denominator_reg_n_0_[43] ),
        .I1(div_rem_im[42]),
        .I2(div_rem_im[41]),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[48]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_14 
       (.I0(\denominator_reg_n_0_[41] ),
        .I1(div_rem_im[40]),
        .I2(div_rem_im[39]),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[48]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_15 
       (.I0(div_rem_im[46]),
        .I1(\denominator_reg_n_0_[47] ),
        .I2(div_rem_im[45]),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_im[48]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_16 
       (.I0(div_rem_im[44]),
        .I1(\denominator_reg_n_0_[45] ),
        .I2(div_rem_im[43]),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_im[48]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_17 
       (.I0(div_rem_im[42]),
        .I1(\denominator_reg_n_0_[43] ),
        .I2(div_rem_im[41]),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_im[48]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_18 
       (.I0(div_rem_im[40]),
        .I1(\denominator_reg_n_0_[41] ),
        .I2(div_rem_im[39]),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_im[48]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[48]_i_19 
       (.I0(\denominator_reg_n_0_[48] ),
        .I1(\abs_im_reg_n_0_[48] ),
        .O(\div_rem_im[48]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_21 
       (.I0(\denominator_reg_n_0_[39] ),
        .I1(div_rem_im[38]),
        .I2(div_rem_im[37]),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[48]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_22 
       (.I0(\denominator_reg_n_0_[37] ),
        .I1(div_rem_im[36]),
        .I2(div_rem_im[35]),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[48]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_23 
       (.I0(\denominator_reg_n_0_[35] ),
        .I1(div_rem_im[34]),
        .I2(div_rem_im[33]),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[48]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_24 
       (.I0(\denominator_reg_n_0_[33] ),
        .I1(div_rem_im[32]),
        .I2(div_rem_im[31]),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[48]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_25 
       (.I0(div_rem_im[38]),
        .I1(\denominator_reg_n_0_[39] ),
        .I2(div_rem_im[37]),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_im[48]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_26 
       (.I0(div_rem_im[36]),
        .I1(\denominator_reg_n_0_[37] ),
        .I2(div_rem_im[35]),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_im[48]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_27 
       (.I0(div_rem_im[34]),
        .I1(\denominator_reg_n_0_[35] ),
        .I2(div_rem_im[33]),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_im[48]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_28 
       (.I0(div_rem_im[32]),
        .I1(\denominator_reg_n_0_[33] ),
        .I2(div_rem_im[31]),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_im[48]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_30 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(div_rem_im[30]),
        .I2(div_rem_im[29]),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[48]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_31 
       (.I0(\denominator_reg_n_0_[29] ),
        .I1(div_rem_im[28]),
        .I2(div_rem_im[27]),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[48]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_32 
       (.I0(\denominator_reg_n_0_[27] ),
        .I1(div_rem_im[26]),
        .I2(div_rem_im[25]),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[48]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_33 
       (.I0(\denominator_reg_n_0_[25] ),
        .I1(div_rem_im[24]),
        .I2(div_rem_im[23]),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[48]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_34 
       (.I0(div_rem_im[30]),
        .I1(\denominator_reg_n_0_[31] ),
        .I2(div_rem_im[29]),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_im[48]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_35 
       (.I0(div_rem_im[28]),
        .I1(\denominator_reg_n_0_[29] ),
        .I2(div_rem_im[27]),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_im[48]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_36 
       (.I0(div_rem_im[26]),
        .I1(\denominator_reg_n_0_[27] ),
        .I2(div_rem_im[25]),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_im[48]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_37 
       (.I0(div_rem_im[24]),
        .I1(\denominator_reg_n_0_[25] ),
        .I2(div_rem_im[23]),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_im[48]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_39 
       (.I0(\denominator_reg_n_0_[23] ),
        .I1(div_rem_im[22]),
        .I2(div_rem_im[21]),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[48]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[48]_i_4 
       (.I0(div_rem_im10_in[48]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[48] ),
        .O(\div_rem_im[48]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_40 
       (.I0(\denominator_reg_n_0_[21] ),
        .I1(div_rem_im[20]),
        .I2(div_rem_im[19]),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[48]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_41 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(div_rem_im[18]),
        .I2(div_rem_im[17]),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[48]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_42 
       (.I0(\denominator_reg_n_0_[17] ),
        .I1(div_rem_im[16]),
        .I2(div_rem_im[15]),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[48]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_43 
       (.I0(div_rem_im[22]),
        .I1(\denominator_reg_n_0_[23] ),
        .I2(div_rem_im[21]),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_im[48]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_44 
       (.I0(div_rem_im[20]),
        .I1(\denominator_reg_n_0_[21] ),
        .I2(div_rem_im[19]),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_im[48]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_45 
       (.I0(div_rem_im[18]),
        .I1(\denominator_reg_n_0_[19] ),
        .I2(div_rem_im[17]),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_im[48]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_46 
       (.I0(div_rem_im[16]),
        .I1(\denominator_reg_n_0_[17] ),
        .I2(div_rem_im[15]),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_im[48]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_48 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(div_rem_im[14]),
        .I2(div_rem_im[13]),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[48]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_49 
       (.I0(\denominator_reg_n_0_[13] ),
        .I1(div_rem_im[12]),
        .I2(div_rem_im[11]),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[48]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[48]_i_5 
       (.I0(\denominator_reg_n_0_[48] ),
        .I1(div_rem_im[47]),
        .O(\div_rem_im[48]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_50 
       (.I0(\denominator_reg_n_0_[11] ),
        .I1(div_rem_im[10]),
        .I2(div_rem_im[9]),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[48]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_51 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(div_rem_im[8]),
        .I2(div_rem_im[7]),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[48]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_52 
       (.I0(div_rem_im[14]),
        .I1(\denominator_reg_n_0_[15] ),
        .I2(div_rem_im[13]),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_im[48]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_53 
       (.I0(div_rem_im[12]),
        .I1(\denominator_reg_n_0_[13] ),
        .I2(div_rem_im[11]),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_im[48]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_54 
       (.I0(div_rem_im[10]),
        .I1(\denominator_reg_n_0_[11] ),
        .I2(div_rem_im[9]),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_im[48]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_55 
       (.I0(div_rem_im[8]),
        .I1(\denominator_reg_n_0_[9] ),
        .I2(div_rem_im[7]),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_im[48]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_56 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(div_rem_im[6]),
        .I2(div_rem_im[5]),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[48]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_57 
       (.I0(\denominator_reg_n_0_[5] ),
        .I1(div_rem_im[4]),
        .I2(div_rem_im[3]),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[48]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_im[48]_i_58 
       (.I0(\denominator_reg_n_0_[3] ),
        .I1(div_rem_im[2]),
        .I2(div_rem_im[1]),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[48]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div_rem_im[48]_i_59 
       (.I0(div_rem_im[0]),
        .I1(\denominator_reg_n_0_[1] ),
        .O(\div_rem_im[48]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_60 
       (.I0(div_rem_im[6]),
        .I1(\denominator_reg_n_0_[7] ),
        .I2(div_rem_im[5]),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[48]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_61 
       (.I0(div_rem_im[4]),
        .I1(\denominator_reg_n_0_[5] ),
        .I2(div_rem_im[3]),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[48]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_im[48]_i_62 
       (.I0(div_rem_im[2]),
        .I1(\denominator_reg_n_0_[3] ),
        .I2(div_rem_im[1]),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_im[48]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \div_rem_im[48]_i_63 
       (.I0(\denominator_reg_n_0_[0] ),
        .I1(div_rem_im[0]),
        .I2(\denominator_reg_n_0_[1] ),
        .O(\div_rem_im[48]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \div_rem_im[48]_i_7 
       (.I0(div_rem_im[48]),
        .I1(\denominator_reg_n_0_[48] ),
        .I2(div_rem_im[47]),
        .O(\div_rem_im[48]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \div_rem_im[48]_i_8 
       (.I0(div_rem_im[47]),
        .I1(\denominator_reg_n_0_[48] ),
        .I2(div_rem_im[48]),
        .O(\div_rem_im[48]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[4]_i_1 
       (.I0(div_rem_im1[4]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[3]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[4]_i_2_n_0 ),
        .O(\div_rem_im[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[4]_i_2 
       (.I0(div_rem_im10_in[4]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[4] ),
        .O(\div_rem_im[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[5]_i_1 
       (.I0(div_rem_im1[5]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[4]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[5]_i_2_n_0 ),
        .O(\div_rem_im[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[5]_i_2 
       (.I0(div_rem_im10_in[5]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[5] ),
        .O(\div_rem_im[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[6]_i_1 
       (.I0(div_rem_im1[6]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[5]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[6]_i_2_n_0 ),
        .O(\div_rem_im[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[6]_i_2 
       (.I0(div_rem_im10_in[6]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[6] ),
        .O(\div_rem_im[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[7]_i_1 
       (.I0(div_rem_im1[7]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[6]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[7]_i_3_n_0 ),
        .O(\div_rem_im[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_10 
       (.I0(\abs_im_reg_n_0_[6] ),
        .I1(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_11 
       (.I0(\abs_im_reg_n_0_[5] ),
        .I1(\denominator_reg_n_0_[5] ),
        .O(\div_rem_im[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_12 
       (.I0(\abs_im_reg_n_0_[4] ),
        .I1(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[7]_i_3 
       (.I0(div_rem_im10_in[7]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[7] ),
        .O(\div_rem_im[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_4 
       (.I0(div_rem_im[6]),
        .I1(\denominator_reg_n_0_[7] ),
        .O(\div_rem_im[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_5 
       (.I0(div_rem_im[5]),
        .I1(\denominator_reg_n_0_[6] ),
        .O(\div_rem_im[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_6 
       (.I0(div_rem_im[4]),
        .I1(\denominator_reg_n_0_[5] ),
        .O(\div_rem_im[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_7 
       (.I0(div_rem_im[3]),
        .I1(\denominator_reg_n_0_[4] ),
        .O(\div_rem_im[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_im[7]_i_9 
       (.I0(\abs_im_reg_n_0_[7] ),
        .I1(\denominator_reg_n_0_[7] ),
        .O(\div_rem_im[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[8]_i_1 
       (.I0(div_rem_im1[8]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[7]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[8]_i_2_n_0 ),
        .O(\div_rem_im[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[8]_i_2 
       (.I0(div_rem_im10_in[8]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[8] ),
        .O(\div_rem_im[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_im[9]_i_1 
       (.I0(div_rem_im1[9]),
        .I1(\div_rem_im_reg[48]_0 ),
        .I2(div_rem_im[8]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_im[9]_i_2_n_0 ),
        .O(\div_rem_im[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_im[9]_i_2 
       (.I0(div_rem_im10_in[9]),
        .I1(\div_rem_im_reg[0]_i_3_n_3 ),
        .I2(\abs_im_reg_n_0_[9] ),
        .O(\div_rem_im[9]_i_2_n_0 ));
  FDRE \div_rem_im_reg[0] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[0]_i_1_n_0 ),
        .Q(div_rem_im[0]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[0]_i_11 
       (.CI(\div_rem_im_reg[0]_i_20_n_0 ),
        .CO({\div_rem_im_reg[0]_i_11_n_0 ,\div_rem_im_reg[0]_i_11_n_1 ,\div_rem_im_reg[0]_i_11_n_2 ,\div_rem_im_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[0]_i_21_n_0 ,\div_rem_im[0]_i_22_n_0 ,\div_rem_im[0]_i_23_n_0 ,\div_rem_im[0]_i_24_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_25_n_0 ,\div_rem_im[0]_i_26_n_0 ,\div_rem_im[0]_i_27_n_0 ,\div_rem_im[0]_i_28_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\div_rem_im_reg[0]_i_2_n_0 ,\div_rem_im_reg[0]_i_2_n_1 ,\div_rem_im_reg[0]_i_2_n_2 ,\div_rem_im_reg[0]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\abs_im_reg_n_0_[3] ,\abs_im_reg_n_0_[2] ,\abs_im_reg_n_0_[1] ,\abs_im_reg_n_0_[0] }),
        .O(div_rem_im10_in[3:0]),
        .S({\div_rem_im[0]_i_4_n_0 ,\div_rem_im[0]_i_5_n_0 ,\div_rem_im[0]_i_6_n_0 ,\div_rem_im[0]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_20 
       (.CI(\div_rem_im_reg[0]_i_29_n_0 ),
        .CO({\div_rem_im_reg[0]_i_20_n_0 ,\div_rem_im_reg[0]_i_20_n_1 ,\div_rem_im_reg[0]_i_20_n_2 ,\div_rem_im_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[0]_i_30_n_0 ,\div_rem_im[0]_i_31_n_0 ,\div_rem_im[0]_i_32_n_0 ,\div_rem_im[0]_i_33_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_34_n_0 ,\div_rem_im[0]_i_35_n_0 ,\div_rem_im[0]_i_36_n_0 ,\div_rem_im[0]_i_37_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_29 
       (.CI(\div_rem_im_reg[0]_i_38_n_0 ),
        .CO({\div_rem_im_reg[0]_i_29_n_0 ,\div_rem_im_reg[0]_i_29_n_1 ,\div_rem_im_reg[0]_i_29_n_2 ,\div_rem_im_reg[0]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[0]_i_39_n_0 ,\div_rem_im[0]_i_40_n_0 ,\div_rem_im[0]_i_41_n_0 ,\div_rem_im[0]_i_42_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_29_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_43_n_0 ,\div_rem_im[0]_i_44_n_0 ,\div_rem_im[0]_i_45_n_0 ,\div_rem_im[0]_i_46_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_3 
       (.CI(\div_rem_im_reg[0]_i_8_n_0 ),
        .CO({\NLW_div_rem_im_reg[0]_i_3_CO_UNCONNECTED [3:1],\div_rem_im_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_rem_im[0]_i_9_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\div_rem_im[0]_i_10_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_38 
       (.CI(\div_rem_im_reg[0]_i_47_n_0 ),
        .CO({\div_rem_im_reg[0]_i_38_n_0 ,\div_rem_im_reg[0]_i_38_n_1 ,\div_rem_im_reg[0]_i_38_n_2 ,\div_rem_im_reg[0]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[0]_i_48_n_0 ,\div_rem_im[0]_i_49_n_0 ,\div_rem_im[0]_i_50_n_0 ,\div_rem_im[0]_i_51_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_38_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_52_n_0 ,\div_rem_im[0]_i_53_n_0 ,\div_rem_im[0]_i_54_n_0 ,\div_rem_im[0]_i_55_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_47 
       (.CI(1'b0),
        .CO({\div_rem_im_reg[0]_i_47_n_0 ,\div_rem_im_reg[0]_i_47_n_1 ,\div_rem_im_reg[0]_i_47_n_2 ,\div_rem_im_reg[0]_i_47_n_3 }),
        .CYINIT(1'b1),
        .DI({\div_rem_im[0]_i_56_n_0 ,\div_rem_im[0]_i_57_n_0 ,\div_rem_im[0]_i_58_n_0 ,\div_rem_im[0]_i_59_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_47_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_60_n_0 ,\div_rem_im[0]_i_61_n_0 ,\div_rem_im[0]_i_62_n_0 ,\div_rem_im[0]_i_63_n_0 }));
  CARRY4 \div_rem_im_reg[0]_i_8 
       (.CI(\div_rem_im_reg[0]_i_11_n_0 ),
        .CO({\div_rem_im_reg[0]_i_8_n_0 ,\div_rem_im_reg[0]_i_8_n_1 ,\div_rem_im_reg[0]_i_8_n_2 ,\div_rem_im_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[0]_i_12_n_0 ,\div_rem_im[0]_i_13_n_0 ,\div_rem_im[0]_i_14_n_0 ,\div_rem_im[0]_i_15_n_0 }),
        .O(\NLW_div_rem_im_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[0]_i_16_n_0 ,\div_rem_im[0]_i_17_n_0 ,\div_rem_im[0]_i_18_n_0 ,\div_rem_im[0]_i_19_n_0 }));
  FDRE \div_rem_im_reg[10] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[10]_i_1_n_0 ),
        .Q(div_rem_im[10]),
        .R(rst_0));
  FDRE \div_rem_im_reg[11] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[11]_i_1_n_0 ),
        .Q(div_rem_im[11]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[11]_i_2 
       (.CI(\div_rem_im_reg[7]_i_2_n_0 ),
        .CO({\div_rem_im_reg[11]_i_2_n_0 ,\div_rem_im_reg[11]_i_2_n_1 ,\div_rem_im_reg[11]_i_2_n_2 ,\div_rem_im_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[10:7]),
        .O(div_rem_im1[11:8]),
        .S({\div_rem_im[11]_i_4_n_0 ,\div_rem_im[11]_i_5_n_0 ,\div_rem_im[11]_i_6_n_0 ,\div_rem_im[11]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[11]_i_8 
       (.CI(\div_rem_im_reg[7]_i_8_n_0 ),
        .CO({\div_rem_im_reg[11]_i_8_n_0 ,\div_rem_im_reg[11]_i_8_n_1 ,\div_rem_im_reg[11]_i_8_n_2 ,\div_rem_im_reg[11]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[11] ,\abs_im_reg_n_0_[10] ,\abs_im_reg_n_0_[9] ,\abs_im_reg_n_0_[8] }),
        .O(div_rem_im10_in[11:8]),
        .S({\div_rem_im[11]_i_9_n_0 ,\div_rem_im[11]_i_10_n_0 ,\div_rem_im[11]_i_11_n_0 ,\div_rem_im[11]_i_12_n_0 }));
  FDRE \div_rem_im_reg[12] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[12]_i_1_n_0 ),
        .Q(div_rem_im[12]),
        .R(rst_0));
  FDRE \div_rem_im_reg[13] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[13]_i_1_n_0 ),
        .Q(div_rem_im[13]),
        .R(rst_0));
  FDRE \div_rem_im_reg[14] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[14]_i_1_n_0 ),
        .Q(div_rem_im[14]),
        .R(rst_0));
  FDRE \div_rem_im_reg[15] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[15]_i_1_n_0 ),
        .Q(div_rem_im[15]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[15]_i_2 
       (.CI(\div_rem_im_reg[11]_i_2_n_0 ),
        .CO({\div_rem_im_reg[15]_i_2_n_0 ,\div_rem_im_reg[15]_i_2_n_1 ,\div_rem_im_reg[15]_i_2_n_2 ,\div_rem_im_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[14:11]),
        .O(div_rem_im1[15:12]),
        .S({\div_rem_im[15]_i_4_n_0 ,\div_rem_im[15]_i_5_n_0 ,\div_rem_im[15]_i_6_n_0 ,\div_rem_im[15]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[15]_i_8 
       (.CI(\div_rem_im_reg[11]_i_8_n_0 ),
        .CO({\div_rem_im_reg[15]_i_8_n_0 ,\div_rem_im_reg[15]_i_8_n_1 ,\div_rem_im_reg[15]_i_8_n_2 ,\div_rem_im_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[15] ,\abs_im_reg_n_0_[14] ,\abs_im_reg_n_0_[13] ,\abs_im_reg_n_0_[12] }),
        .O(div_rem_im10_in[15:12]),
        .S({\div_rem_im[15]_i_9_n_0 ,\div_rem_im[15]_i_10_n_0 ,\div_rem_im[15]_i_11_n_0 ,\div_rem_im[15]_i_12_n_0 }));
  FDRE \div_rem_im_reg[16] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[16]_i_1_n_0 ),
        .Q(div_rem_im[16]),
        .R(rst_0));
  FDRE \div_rem_im_reg[17] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[17]_i_1_n_0 ),
        .Q(div_rem_im[17]),
        .R(rst_0));
  FDRE \div_rem_im_reg[18] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[18]_i_1_n_0 ),
        .Q(div_rem_im[18]),
        .R(rst_0));
  FDRE \div_rem_im_reg[19] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[19]_i_1_n_0 ),
        .Q(div_rem_im[19]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[19]_i_2 
       (.CI(\div_rem_im_reg[15]_i_2_n_0 ),
        .CO({\div_rem_im_reg[19]_i_2_n_0 ,\div_rem_im_reg[19]_i_2_n_1 ,\div_rem_im_reg[19]_i_2_n_2 ,\div_rem_im_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[18:15]),
        .O(div_rem_im1[19:16]),
        .S({\div_rem_im[19]_i_4_n_0 ,\div_rem_im[19]_i_5_n_0 ,\div_rem_im[19]_i_6_n_0 ,\div_rem_im[19]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[19]_i_8 
       (.CI(\div_rem_im_reg[15]_i_8_n_0 ),
        .CO({\div_rem_im_reg[19]_i_8_n_0 ,\div_rem_im_reg[19]_i_8_n_1 ,\div_rem_im_reg[19]_i_8_n_2 ,\div_rem_im_reg[19]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[19] ,\abs_im_reg_n_0_[18] ,\abs_im_reg_n_0_[17] ,\abs_im_reg_n_0_[16] }),
        .O(div_rem_im10_in[19:16]),
        .S({\div_rem_im[19]_i_9_n_0 ,\div_rem_im[19]_i_10_n_0 ,\div_rem_im[19]_i_11_n_0 ,\div_rem_im[19]_i_12_n_0 }));
  FDRE \div_rem_im_reg[1] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[1]_i_1_n_0 ),
        .Q(div_rem_im[1]),
        .R(rst_0));
  FDRE \div_rem_im_reg[20] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[20]_i_1_n_0 ),
        .Q(div_rem_im[20]),
        .R(rst_0));
  FDRE \div_rem_im_reg[21] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[21]_i_1_n_0 ),
        .Q(div_rem_im[21]),
        .R(rst_0));
  FDRE \div_rem_im_reg[22] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[22]_i_1_n_0 ),
        .Q(div_rem_im[22]),
        .R(rst_0));
  FDRE \div_rem_im_reg[23] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[23]_i_1_n_0 ),
        .Q(div_rem_im[23]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[23]_i_2 
       (.CI(\div_rem_im_reg[19]_i_2_n_0 ),
        .CO({\div_rem_im_reg[23]_i_2_n_0 ,\div_rem_im_reg[23]_i_2_n_1 ,\div_rem_im_reg[23]_i_2_n_2 ,\div_rem_im_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[22:19]),
        .O(div_rem_im1[23:20]),
        .S({\div_rem_im[23]_i_4_n_0 ,\div_rem_im[23]_i_5_n_0 ,\div_rem_im[23]_i_6_n_0 ,\div_rem_im[23]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[23]_i_8 
       (.CI(\div_rem_im_reg[19]_i_8_n_0 ),
        .CO({\div_rem_im_reg[23]_i_8_n_0 ,\div_rem_im_reg[23]_i_8_n_1 ,\div_rem_im_reg[23]_i_8_n_2 ,\div_rem_im_reg[23]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[23] ,\abs_im_reg_n_0_[22] ,\abs_im_reg_n_0_[21] ,\abs_im_reg_n_0_[20] }),
        .O(div_rem_im10_in[23:20]),
        .S({\div_rem_im[23]_i_9_n_0 ,\div_rem_im[23]_i_10_n_0 ,\div_rem_im[23]_i_11_n_0 ,\div_rem_im[23]_i_12_n_0 }));
  FDRE \div_rem_im_reg[24] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[24]_i_1_n_0 ),
        .Q(div_rem_im[24]),
        .R(rst_0));
  FDRE \div_rem_im_reg[25] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[25]_i_1_n_0 ),
        .Q(div_rem_im[25]),
        .R(rst_0));
  FDRE \div_rem_im_reg[26] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[26]_i_1_n_0 ),
        .Q(div_rem_im[26]),
        .R(rst_0));
  FDRE \div_rem_im_reg[27] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[27]_i_1_n_0 ),
        .Q(div_rem_im[27]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[27]_i_2 
       (.CI(\div_rem_im_reg[23]_i_2_n_0 ),
        .CO({\div_rem_im_reg[27]_i_2_n_0 ,\div_rem_im_reg[27]_i_2_n_1 ,\div_rem_im_reg[27]_i_2_n_2 ,\div_rem_im_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[26:23]),
        .O(div_rem_im1[27:24]),
        .S({\div_rem_im[27]_i_4_n_0 ,\div_rem_im[27]_i_5_n_0 ,\div_rem_im[27]_i_6_n_0 ,\div_rem_im[27]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[27]_i_8 
       (.CI(\div_rem_im_reg[23]_i_8_n_0 ),
        .CO({\div_rem_im_reg[27]_i_8_n_0 ,\div_rem_im_reg[27]_i_8_n_1 ,\div_rem_im_reg[27]_i_8_n_2 ,\div_rem_im_reg[27]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[27] ,\abs_im_reg_n_0_[26] ,\abs_im_reg_n_0_[25] ,\abs_im_reg_n_0_[24] }),
        .O(div_rem_im10_in[27:24]),
        .S({\div_rem_im[27]_i_9_n_0 ,\div_rem_im[27]_i_10_n_0 ,\div_rem_im[27]_i_11_n_0 ,\div_rem_im[27]_i_12_n_0 }));
  FDRE \div_rem_im_reg[28] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[28]_i_1_n_0 ),
        .Q(div_rem_im[28]),
        .R(rst_0));
  FDRE \div_rem_im_reg[29] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[29]_i_1_n_0 ),
        .Q(div_rem_im[29]),
        .R(rst_0));
  FDRE \div_rem_im_reg[2] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[2]_i_1_n_0 ),
        .Q(div_rem_im[2]),
        .R(rst_0));
  FDRE \div_rem_im_reg[30] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[30]_i_1_n_0 ),
        .Q(div_rem_im[30]),
        .R(rst_0));
  FDRE \div_rem_im_reg[31] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[31]_i_1_n_0 ),
        .Q(div_rem_im[31]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[31]_i_2 
       (.CI(\div_rem_im_reg[27]_i_2_n_0 ),
        .CO({\div_rem_im_reg[31]_i_2_n_0 ,\div_rem_im_reg[31]_i_2_n_1 ,\div_rem_im_reg[31]_i_2_n_2 ,\div_rem_im_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[30:27]),
        .O(div_rem_im1[31:28]),
        .S({\div_rem_im[31]_i_4_n_0 ,\div_rem_im[31]_i_5_n_0 ,\div_rem_im[31]_i_6_n_0 ,\div_rem_im[31]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[31]_i_8 
       (.CI(\div_rem_im_reg[27]_i_8_n_0 ),
        .CO({\div_rem_im_reg[31]_i_8_n_0 ,\div_rem_im_reg[31]_i_8_n_1 ,\div_rem_im_reg[31]_i_8_n_2 ,\div_rem_im_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[31] ,\abs_im_reg_n_0_[30] ,\abs_im_reg_n_0_[29] ,\abs_im_reg_n_0_[28] }),
        .O(div_rem_im10_in[31:28]),
        .S({\div_rem_im[31]_i_9_n_0 ,\div_rem_im[31]_i_10_n_0 ,\div_rem_im[31]_i_11_n_0 ,\div_rem_im[31]_i_12_n_0 }));
  FDRE \div_rem_im_reg[32] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[32]_i_1_n_0 ),
        .Q(div_rem_im[32]),
        .R(rst_0));
  FDRE \div_rem_im_reg[33] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[33]_i_1_n_0 ),
        .Q(div_rem_im[33]),
        .R(rst_0));
  FDRE \div_rem_im_reg[34] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[34]_i_1_n_0 ),
        .Q(div_rem_im[34]),
        .R(rst_0));
  FDRE \div_rem_im_reg[35] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[35]_i_1_n_0 ),
        .Q(div_rem_im[35]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[35]_i_2 
       (.CI(\div_rem_im_reg[31]_i_2_n_0 ),
        .CO({\div_rem_im_reg[35]_i_2_n_0 ,\div_rem_im_reg[35]_i_2_n_1 ,\div_rem_im_reg[35]_i_2_n_2 ,\div_rem_im_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[34:31]),
        .O(div_rem_im1[35:32]),
        .S({\div_rem_im[35]_i_4_n_0 ,\div_rem_im[35]_i_5_n_0 ,\div_rem_im[35]_i_6_n_0 ,\div_rem_im[35]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[35]_i_8 
       (.CI(\div_rem_im_reg[31]_i_8_n_0 ),
        .CO({\div_rem_im_reg[35]_i_8_n_0 ,\div_rem_im_reg[35]_i_8_n_1 ,\div_rem_im_reg[35]_i_8_n_2 ,\div_rem_im_reg[35]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[35] ,\abs_im_reg_n_0_[34] ,\abs_im_reg_n_0_[33] ,\abs_im_reg_n_0_[32] }),
        .O(div_rem_im10_in[35:32]),
        .S({\div_rem_im[35]_i_9_n_0 ,\div_rem_im[35]_i_10_n_0 ,\div_rem_im[35]_i_11_n_0 ,\div_rem_im[35]_i_12_n_0 }));
  FDRE \div_rem_im_reg[36] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[36]_i_1_n_0 ),
        .Q(div_rem_im[36]),
        .R(rst_0));
  FDRE \div_rem_im_reg[37] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[37]_i_1_n_0 ),
        .Q(div_rem_im[37]),
        .R(rst_0));
  FDRE \div_rem_im_reg[38] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[38]_i_1_n_0 ),
        .Q(div_rem_im[38]),
        .R(rst_0));
  FDRE \div_rem_im_reg[39] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[39]_i_1_n_0 ),
        .Q(div_rem_im[39]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[39]_i_2 
       (.CI(\div_rem_im_reg[35]_i_2_n_0 ),
        .CO({\div_rem_im_reg[39]_i_2_n_0 ,\div_rem_im_reg[39]_i_2_n_1 ,\div_rem_im_reg[39]_i_2_n_2 ,\div_rem_im_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[38:35]),
        .O(div_rem_im1[39:36]),
        .S({\div_rem_im[39]_i_4_n_0 ,\div_rem_im[39]_i_5_n_0 ,\div_rem_im[39]_i_6_n_0 ,\div_rem_im[39]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[39]_i_8 
       (.CI(\div_rem_im_reg[35]_i_8_n_0 ),
        .CO({\div_rem_im_reg[39]_i_8_n_0 ,\div_rem_im_reg[39]_i_8_n_1 ,\div_rem_im_reg[39]_i_8_n_2 ,\div_rem_im_reg[39]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[39] ,\abs_im_reg_n_0_[38] ,\abs_im_reg_n_0_[37] ,\abs_im_reg_n_0_[36] }),
        .O(div_rem_im10_in[39:36]),
        .S({\div_rem_im[39]_i_9_n_0 ,\div_rem_im[39]_i_10_n_0 ,\div_rem_im[39]_i_11_n_0 ,\div_rem_im[39]_i_12_n_0 }));
  FDRE \div_rem_im_reg[3] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[3]_i_1_n_0 ),
        .Q(div_rem_im[3]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\div_rem_im_reg[3]_i_2_n_0 ,\div_rem_im_reg[3]_i_2_n_1 ,\div_rem_im_reg[3]_i_2_n_2 ,\div_rem_im_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({div_rem_im[2:0],1'b0}),
        .O({div_rem_im1[3:1],\NLW_div_rem_im_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\div_rem_im[3]_i_4_n_0 ,\div_rem_im[3]_i_5_n_0 ,\div_rem_im[3]_i_6_n_0 ,\div_rem_im[3]_i_7_n_0 }));
  FDRE \div_rem_im_reg[40] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[40]_i_1_n_0 ),
        .Q(div_rem_im[40]),
        .R(rst_0));
  FDRE \div_rem_im_reg[41] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[41]_i_1_n_0 ),
        .Q(div_rem_im[41]),
        .R(rst_0));
  FDRE \div_rem_im_reg[42] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[42]_i_1_n_0 ),
        .Q(div_rem_im[42]),
        .R(rst_0));
  FDRE \div_rem_im_reg[43] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[43]_i_1_n_0 ),
        .Q(div_rem_im[43]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[43]_i_2 
       (.CI(\div_rem_im_reg[39]_i_2_n_0 ),
        .CO({\div_rem_im_reg[43]_i_2_n_0 ,\div_rem_im_reg[43]_i_2_n_1 ,\div_rem_im_reg[43]_i_2_n_2 ,\div_rem_im_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[42:39]),
        .O(div_rem_im1[43:40]),
        .S({\div_rem_im[43]_i_4_n_0 ,\div_rem_im[43]_i_5_n_0 ,\div_rem_im[43]_i_6_n_0 ,\div_rem_im[43]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[43]_i_8 
       (.CI(\div_rem_im_reg[39]_i_8_n_0 ),
        .CO({\div_rem_im_reg[43]_i_8_n_0 ,\div_rem_im_reg[43]_i_8_n_1 ,\div_rem_im_reg[43]_i_8_n_2 ,\div_rem_im_reg[43]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[43] ,\abs_im_reg_n_0_[42] ,\abs_im_reg_n_0_[41] ,\abs_im_reg_n_0_[40] }),
        .O(div_rem_im10_in[43:40]),
        .S({\div_rem_im[43]_i_9_n_0 ,\div_rem_im[43]_i_10_n_0 ,\div_rem_im[43]_i_11_n_0 ,\div_rem_im[43]_i_12_n_0 }));
  FDRE \div_rem_im_reg[44] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[44]_i_1_n_0 ),
        .Q(div_rem_im[44]),
        .R(rst_0));
  FDRE \div_rem_im_reg[45] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[45]_i_1_n_0 ),
        .Q(div_rem_im[45]),
        .R(rst_0));
  FDRE \div_rem_im_reg[46] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[46]_i_1_n_0 ),
        .Q(div_rem_im[46]),
        .R(rst_0));
  FDRE \div_rem_im_reg[47] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[47]_i_1_n_0 ),
        .Q(div_rem_im[47]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[47]_i_2 
       (.CI(\div_rem_im_reg[43]_i_2_n_0 ),
        .CO({\div_rem_im_reg[47]_i_2_n_0 ,\div_rem_im_reg[47]_i_2_n_1 ,\div_rem_im_reg[47]_i_2_n_2 ,\div_rem_im_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[46:43]),
        .O(div_rem_im1[47:44]),
        .S({\div_rem_im[47]_i_4_n_0 ,\div_rem_im[47]_i_5_n_0 ,\div_rem_im[47]_i_6_n_0 ,\div_rem_im[47]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[47]_i_8 
       (.CI(\div_rem_im_reg[43]_i_8_n_0 ),
        .CO({\div_rem_im_reg[47]_i_8_n_0 ,\div_rem_im_reg[47]_i_8_n_1 ,\div_rem_im_reg[47]_i_8_n_2 ,\div_rem_im_reg[47]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[47] ,\abs_im_reg_n_0_[46] ,\abs_im_reg_n_0_[45] ,\abs_im_reg_n_0_[44] }),
        .O(div_rem_im10_in[47:44]),
        .S({\div_rem_im[47]_i_9_n_0 ,\div_rem_im[47]_i_10_n_0 ,\div_rem_im[47]_i_11_n_0 ,\div_rem_im[47]_i_12_n_0 }));
  FDRE \div_rem_im_reg[48] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[48]_i_1_n_0 ),
        .Q(div_rem_im[48]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[48]_i_10 
       (.CI(\div_rem_im_reg[48]_i_20_n_0 ),
        .CO({\div_rem_im_reg[48]_i_10_n_0 ,\div_rem_im_reg[48]_i_10_n_1 ,\div_rem_im_reg[48]_i_10_n_2 ,\div_rem_im_reg[48]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[48]_i_21_n_0 ,\div_rem_im[48]_i_22_n_0 ,\div_rem_im[48]_i_23_n_0 ,\div_rem_im[48]_i_24_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_10_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_25_n_0 ,\div_rem_im[48]_i_26_n_0 ,\div_rem_im[48]_i_27_n_0 ,\div_rem_im[48]_i_28_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_2 
       (.CI(\div_rem_im_reg[47]_i_2_n_0 ),
        .CO(\NLW_div_rem_im_reg[48]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div_rem_im_reg[48]_i_2_O_UNCONNECTED [3:1],div_rem_im1[48]}),
        .S({1'b0,1'b0,1'b0,\div_rem_im[48]_i_5_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_20 
       (.CI(\div_rem_im_reg[48]_i_29_n_0 ),
        .CO({\div_rem_im_reg[48]_i_20_n_0 ,\div_rem_im_reg[48]_i_20_n_1 ,\div_rem_im_reg[48]_i_20_n_2 ,\div_rem_im_reg[48]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[48]_i_30_n_0 ,\div_rem_im[48]_i_31_n_0 ,\div_rem_im[48]_i_32_n_0 ,\div_rem_im[48]_i_33_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_20_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_34_n_0 ,\div_rem_im[48]_i_35_n_0 ,\div_rem_im[48]_i_36_n_0 ,\div_rem_im[48]_i_37_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_29 
       (.CI(\div_rem_im_reg[48]_i_38_n_0 ),
        .CO({\div_rem_im_reg[48]_i_29_n_0 ,\div_rem_im_reg[48]_i_29_n_1 ,\div_rem_im_reg[48]_i_29_n_2 ,\div_rem_im_reg[48]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[48]_i_39_n_0 ,\div_rem_im[48]_i_40_n_0 ,\div_rem_im[48]_i_41_n_0 ,\div_rem_im[48]_i_42_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_29_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_43_n_0 ,\div_rem_im[48]_i_44_n_0 ,\div_rem_im[48]_i_45_n_0 ,\div_rem_im[48]_i_46_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_3 
       (.CI(\div_rem_im_reg[48]_i_6_n_0 ),
        .CO({\NLW_div_rem_im_reg[48]_i_3_CO_UNCONNECTED [3:1],\div_rem_im_reg[48]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_rem_im[48]_i_7_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\div_rem_im[48]_i_8_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_38 
       (.CI(\div_rem_im_reg[48]_i_47_n_0 ),
        .CO({\div_rem_im_reg[48]_i_38_n_0 ,\div_rem_im_reg[48]_i_38_n_1 ,\div_rem_im_reg[48]_i_38_n_2 ,\div_rem_im_reg[48]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[48]_i_48_n_0 ,\div_rem_im[48]_i_49_n_0 ,\div_rem_im[48]_i_50_n_0 ,\div_rem_im[48]_i_51_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_38_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_52_n_0 ,\div_rem_im[48]_i_53_n_0 ,\div_rem_im[48]_i_54_n_0 ,\div_rem_im[48]_i_55_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_47 
       (.CI(1'b0),
        .CO({\div_rem_im_reg[48]_i_47_n_0 ,\div_rem_im_reg[48]_i_47_n_1 ,\div_rem_im_reg[48]_i_47_n_2 ,\div_rem_im_reg[48]_i_47_n_3 }),
        .CYINIT(1'b1),
        .DI({\div_rem_im[48]_i_56_n_0 ,\div_rem_im[48]_i_57_n_0 ,\div_rem_im[48]_i_58_n_0 ,\div_rem_im[48]_i_59_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_47_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_60_n_0 ,\div_rem_im[48]_i_61_n_0 ,\div_rem_im[48]_i_62_n_0 ,\div_rem_im[48]_i_63_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_6 
       (.CI(\div_rem_im_reg[48]_i_10_n_0 ),
        .CO({\div_rem_im_reg[48]_i_6_n_0 ,\div_rem_im_reg[48]_i_6_n_1 ,\div_rem_im_reg[48]_i_6_n_2 ,\div_rem_im_reg[48]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_im[48]_i_11_n_0 ,\div_rem_im[48]_i_12_n_0 ,\div_rem_im[48]_i_13_n_0 ,\div_rem_im[48]_i_14_n_0 }),
        .O(\NLW_div_rem_im_reg[48]_i_6_O_UNCONNECTED [3:0]),
        .S({\div_rem_im[48]_i_15_n_0 ,\div_rem_im[48]_i_16_n_0 ,\div_rem_im[48]_i_17_n_0 ,\div_rem_im[48]_i_18_n_0 }));
  CARRY4 \div_rem_im_reg[48]_i_9 
       (.CI(\div_rem_im_reg[47]_i_8_n_0 ),
        .CO(\NLW_div_rem_im_reg[48]_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div_rem_im_reg[48]_i_9_O_UNCONNECTED [3:1],div_rem_im10_in[48]}),
        .S({1'b0,1'b0,1'b0,\div_rem_im[48]_i_19_n_0 }));
  FDRE \div_rem_im_reg[4] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[4]_i_1_n_0 ),
        .Q(div_rem_im[4]),
        .R(rst_0));
  FDRE \div_rem_im_reg[5] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[5]_i_1_n_0 ),
        .Q(div_rem_im[5]),
        .R(rst_0));
  FDRE \div_rem_im_reg[6] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[6]_i_1_n_0 ),
        .Q(div_rem_im[6]),
        .R(rst_0));
  FDRE \div_rem_im_reg[7] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[7]_i_1_n_0 ),
        .Q(div_rem_im[7]),
        .R(rst_0));
  CARRY4 \div_rem_im_reg[7]_i_2 
       (.CI(\div_rem_im_reg[3]_i_2_n_0 ),
        .CO({\div_rem_im_reg[7]_i_2_n_0 ,\div_rem_im_reg[7]_i_2_n_1 ,\div_rem_im_reg[7]_i_2_n_2 ,\div_rem_im_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_im[6:3]),
        .O(div_rem_im1[7:4]),
        .S({\div_rem_im[7]_i_4_n_0 ,\div_rem_im[7]_i_5_n_0 ,\div_rem_im[7]_i_6_n_0 ,\div_rem_im[7]_i_7_n_0 }));
  CARRY4 \div_rem_im_reg[7]_i_8 
       (.CI(\div_rem_im_reg[0]_i_2_n_0 ),
        .CO({\div_rem_im_reg[7]_i_8_n_0 ,\div_rem_im_reg[7]_i_8_n_1 ,\div_rem_im_reg[7]_i_8_n_2 ,\div_rem_im_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\abs_im_reg_n_0_[7] ,\abs_im_reg_n_0_[6] ,\abs_im_reg_n_0_[5] ,\abs_im_reg_n_0_[4] }),
        .O(div_rem_im10_in[7:4]),
        .S({\div_rem_im[7]_i_9_n_0 ,\div_rem_im[7]_i_10_n_0 ,\div_rem_im[7]_i_11_n_0 ,\div_rem_im[7]_i_12_n_0 }));
  FDRE \div_rem_im_reg[8] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[8]_i_1_n_0 ),
        .Q(div_rem_im[8]),
        .R(rst_0));
  FDRE \div_rem_im_reg[9] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_im[9]_i_1_n_0 ),
        .Q(div_rem_im[9]),
        .R(rst_0));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \div_rem_re[0]_i_1 
       (.I0(CO),
        .I1(div_rem_re1[0]),
        .I2(\state_reg[0]_rep__1_n_0 ),
        .I3(div_rem_re10_in[0]),
        .I4(\div_rem_re_reg[0]_i_3_n_3 ),
        .I5(abs_re[0]),
        .O(\div_rem_re[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[0]_i_10 
       (.I0(\denominator_reg_n_0_[48] ),
        .I1(abs_re[48]),
        .O(\div_rem_re[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_12 
       (.I0(abs_re[47]),
        .I1(\denominator_reg_n_0_[47] ),
        .I2(abs_re[46]),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_re[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_13 
       (.I0(abs_re[45]),
        .I1(\denominator_reg_n_0_[45] ),
        .I2(abs_re[44]),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_re[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_14 
       (.I0(abs_re[43]),
        .I1(\denominator_reg_n_0_[43] ),
        .I2(abs_re[42]),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_re[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_15 
       (.I0(abs_re[41]),
        .I1(\denominator_reg_n_0_[41] ),
        .I2(abs_re[40]),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_re[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_16 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(abs_re[47]),
        .I2(\denominator_reg_n_0_[46] ),
        .I3(abs_re[46]),
        .O(\div_rem_re[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_17 
       (.I0(\denominator_reg_n_0_[45] ),
        .I1(abs_re[45]),
        .I2(\denominator_reg_n_0_[44] ),
        .I3(abs_re[44]),
        .O(\div_rem_re[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_18 
       (.I0(\denominator_reg_n_0_[43] ),
        .I1(abs_re[43]),
        .I2(\denominator_reg_n_0_[42] ),
        .I3(abs_re[42]),
        .O(\div_rem_re[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_19 
       (.I0(\denominator_reg_n_0_[41] ),
        .I1(abs_re[41]),
        .I2(\denominator_reg_n_0_[40] ),
        .I3(abs_re[40]),
        .O(\div_rem_re[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_21 
       (.I0(abs_re[39]),
        .I1(\denominator_reg_n_0_[39] ),
        .I2(abs_re[38]),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_re[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_22 
       (.I0(abs_re[37]),
        .I1(\denominator_reg_n_0_[37] ),
        .I2(abs_re[36]),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_re[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_23 
       (.I0(abs_re[35]),
        .I1(\denominator_reg_n_0_[35] ),
        .I2(abs_re[34]),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_re[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_24 
       (.I0(abs_re[33]),
        .I1(\denominator_reg_n_0_[33] ),
        .I2(abs_re[32]),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_re[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_25 
       (.I0(\denominator_reg_n_0_[39] ),
        .I1(abs_re[39]),
        .I2(\denominator_reg_n_0_[38] ),
        .I3(abs_re[38]),
        .O(\div_rem_re[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_26 
       (.I0(\denominator_reg_n_0_[37] ),
        .I1(abs_re[37]),
        .I2(\denominator_reg_n_0_[36] ),
        .I3(abs_re[36]),
        .O(\div_rem_re[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_27 
       (.I0(\denominator_reg_n_0_[35] ),
        .I1(abs_re[35]),
        .I2(\denominator_reg_n_0_[34] ),
        .I3(abs_re[34]),
        .O(\div_rem_re[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_28 
       (.I0(\denominator_reg_n_0_[33] ),
        .I1(abs_re[33]),
        .I2(\denominator_reg_n_0_[32] ),
        .I3(abs_re[32]),
        .O(\div_rem_re[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_30 
       (.I0(abs_re[31]),
        .I1(\denominator_reg_n_0_[31] ),
        .I2(abs_re[30]),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_re[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_31 
       (.I0(abs_re[29]),
        .I1(\denominator_reg_n_0_[29] ),
        .I2(abs_re[28]),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_re[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_32 
       (.I0(abs_re[27]),
        .I1(\denominator_reg_n_0_[27] ),
        .I2(abs_re[26]),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_re[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_33 
       (.I0(abs_re[25]),
        .I1(\denominator_reg_n_0_[25] ),
        .I2(abs_re[24]),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_re[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_34 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(abs_re[31]),
        .I2(\denominator_reg_n_0_[30] ),
        .I3(abs_re[30]),
        .O(\div_rem_re[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_35 
       (.I0(\denominator_reg_n_0_[29] ),
        .I1(abs_re[29]),
        .I2(\denominator_reg_n_0_[28] ),
        .I3(abs_re[28]),
        .O(\div_rem_re[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_36 
       (.I0(\denominator_reg_n_0_[27] ),
        .I1(abs_re[27]),
        .I2(\denominator_reg_n_0_[26] ),
        .I3(abs_re[26]),
        .O(\div_rem_re[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_37 
       (.I0(\denominator_reg_n_0_[25] ),
        .I1(abs_re[25]),
        .I2(\denominator_reg_n_0_[24] ),
        .I3(abs_re[24]),
        .O(\div_rem_re[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_39 
       (.I0(abs_re[23]),
        .I1(\denominator_reg_n_0_[23] ),
        .I2(abs_re[22]),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_re[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[0]_i_4 
       (.I0(\denominator_reg_n_0_[3] ),
        .I1(abs_re[3]),
        .O(\div_rem_re[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_40 
       (.I0(abs_re[21]),
        .I1(\denominator_reg_n_0_[21] ),
        .I2(abs_re[20]),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_re[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_41 
       (.I0(abs_re[19]),
        .I1(\denominator_reg_n_0_[19] ),
        .I2(abs_re[18]),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_re[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_42 
       (.I0(abs_re[17]),
        .I1(\denominator_reg_n_0_[17] ),
        .I2(abs_re[16]),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_re[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_43 
       (.I0(\denominator_reg_n_0_[23] ),
        .I1(abs_re[23]),
        .I2(\denominator_reg_n_0_[22] ),
        .I3(abs_re[22]),
        .O(\div_rem_re[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_44 
       (.I0(\denominator_reg_n_0_[21] ),
        .I1(abs_re[21]),
        .I2(\denominator_reg_n_0_[20] ),
        .I3(abs_re[20]),
        .O(\div_rem_re[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_45 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(abs_re[19]),
        .I2(\denominator_reg_n_0_[18] ),
        .I3(abs_re[18]),
        .O(\div_rem_re[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_46 
       (.I0(\denominator_reg_n_0_[17] ),
        .I1(abs_re[17]),
        .I2(\denominator_reg_n_0_[16] ),
        .I3(abs_re[16]),
        .O(\div_rem_re[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_48 
       (.I0(abs_re[15]),
        .I1(\denominator_reg_n_0_[15] ),
        .I2(abs_re[14]),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_re[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_49 
       (.I0(abs_re[13]),
        .I1(\denominator_reg_n_0_[13] ),
        .I2(abs_re[12]),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_re[0]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[0]_i_5 
       (.I0(\denominator_reg_n_0_[2] ),
        .I1(abs_re[2]),
        .O(\div_rem_re[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_50 
       (.I0(abs_re[11]),
        .I1(\denominator_reg_n_0_[11] ),
        .I2(abs_re[10]),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_re[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_51 
       (.I0(abs_re[9]),
        .I1(\denominator_reg_n_0_[9] ),
        .I2(abs_re[8]),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_re[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_52 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(abs_re[15]),
        .I2(\denominator_reg_n_0_[14] ),
        .I3(abs_re[14]),
        .O(\div_rem_re[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_53 
       (.I0(\denominator_reg_n_0_[13] ),
        .I1(abs_re[13]),
        .I2(\denominator_reg_n_0_[12] ),
        .I3(abs_re[12]),
        .O(\div_rem_re[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_54 
       (.I0(\denominator_reg_n_0_[11] ),
        .I1(abs_re[11]),
        .I2(\denominator_reg_n_0_[10] ),
        .I3(abs_re[10]),
        .O(\div_rem_re[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_55 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(abs_re[9]),
        .I2(\denominator_reg_n_0_[8] ),
        .I3(abs_re[8]),
        .O(\div_rem_re[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_56 
       (.I0(abs_re[7]),
        .I1(\denominator_reg_n_0_[7] ),
        .I2(abs_re[6]),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_re[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_57 
       (.I0(abs_re[5]),
        .I1(\denominator_reg_n_0_[5] ),
        .I2(abs_re[4]),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_re[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_58 
       (.I0(abs_re[3]),
        .I1(\denominator_reg_n_0_[3] ),
        .I2(abs_re[2]),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_re[0]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \div_rem_re[0]_i_59 
       (.I0(abs_re[1]),
        .I1(\denominator_reg_n_0_[1] ),
        .I2(abs_re[0]),
        .I3(\denominator_reg_n_0_[0] ),
        .O(\div_rem_re[0]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[0]_i_6 
       (.I0(\denominator_reg_n_0_[1] ),
        .I1(abs_re[1]),
        .O(\div_rem_re[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_60 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(abs_re[7]),
        .I2(\denominator_reg_n_0_[6] ),
        .I3(abs_re[6]),
        .O(\div_rem_re[0]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_61 
       (.I0(\denominator_reg_n_0_[5] ),
        .I1(abs_re[5]),
        .I2(\denominator_reg_n_0_[4] ),
        .I3(abs_re[4]),
        .O(\div_rem_re[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_62 
       (.I0(\denominator_reg_n_0_[3] ),
        .I1(abs_re[3]),
        .I2(\denominator_reg_n_0_[2] ),
        .I3(abs_re[2]),
        .O(\div_rem_re[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[0]_i_63 
       (.I0(\denominator_reg_n_0_[1] ),
        .I1(abs_re[1]),
        .I2(\denominator_reg_n_0_[0] ),
        .I3(abs_re[0]),
        .O(\div_rem_re[0]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[0]_i_7 
       (.I0(\denominator_reg_n_0_[0] ),
        .I1(abs_re[0]),
        .O(\div_rem_re[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div_rem_re[0]_i_9 
       (.I0(abs_re[48]),
        .I1(\denominator_reg_n_0_[48] ),
        .O(\div_rem_re[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[10]_i_1 
       (.I0(div_rem_re1[10]),
        .I1(CO),
        .I2(div_rem_re[9]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[10]_i_2_n_0 ),
        .O(\div_rem_re[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[10]_i_2 
       (.I0(div_rem_re10_in[10]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[10]),
        .O(\div_rem_re[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[11]_i_1 
       (.I0(div_rem_re1[11]),
        .I1(CO),
        .I2(div_rem_re[10]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[11]_i_3_n_0 ),
        .O(\div_rem_re[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_10 
       (.I0(\denominator_reg_n_0_[10] ),
        .I1(abs_re[10]),
        .O(\div_rem_re[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_11 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(abs_re[9]),
        .O(\div_rem_re[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_12 
       (.I0(\denominator_reg_n_0_[8] ),
        .I1(abs_re[8]),
        .O(\div_rem_re[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[11]_i_3 
       (.I0(div_rem_re10_in[11]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[11]),
        .O(\div_rem_re[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_4 
       (.I0(div_rem_re[10]),
        .I1(\denominator_reg_n_0_[11] ),
        .O(\div_rem_re[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_5 
       (.I0(div_rem_re[9]),
        .I1(\denominator_reg_n_0_[10] ),
        .O(\div_rem_re[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_6 
       (.I0(div_rem_re[8]),
        .I1(\denominator_reg_n_0_[9] ),
        .O(\div_rem_re[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_7 
       (.I0(div_rem_re[7]),
        .I1(\denominator_reg_n_0_[8] ),
        .O(\div_rem_re[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[11]_i_9 
       (.I0(\denominator_reg_n_0_[11] ),
        .I1(abs_re[11]),
        .O(\div_rem_re[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[12]_i_1 
       (.I0(div_rem_re1[12]),
        .I1(CO),
        .I2(div_rem_re[11]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[12]_i_2_n_0 ),
        .O(\div_rem_re[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[12]_i_2 
       (.I0(div_rem_re10_in[12]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[12]),
        .O(\div_rem_re[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[13]_i_1 
       (.I0(div_rem_re1[13]),
        .I1(CO),
        .I2(div_rem_re[12]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[13]_i_2_n_0 ),
        .O(\div_rem_re[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[13]_i_2 
       (.I0(div_rem_re10_in[13]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[13]),
        .O(\div_rem_re[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[14]_i_1 
       (.I0(div_rem_re1[14]),
        .I1(CO),
        .I2(div_rem_re[13]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[14]_i_2_n_0 ),
        .O(\div_rem_re[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[14]_i_2 
       (.I0(div_rem_re10_in[14]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[14]),
        .O(\div_rem_re[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[15]_i_1 
       (.I0(div_rem_re1[15]),
        .I1(CO),
        .I2(div_rem_re[14]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[15]_i_3_n_0 ),
        .O(\div_rem_re[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_10 
       (.I0(\denominator_reg_n_0_[14] ),
        .I1(abs_re[14]),
        .O(\div_rem_re[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_11 
       (.I0(\denominator_reg_n_0_[13] ),
        .I1(abs_re[13]),
        .O(\div_rem_re[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_12 
       (.I0(\denominator_reg_n_0_[12] ),
        .I1(abs_re[12]),
        .O(\div_rem_re[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[15]_i_3 
       (.I0(div_rem_re10_in[15]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[15]),
        .O(\div_rem_re[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_4 
       (.I0(div_rem_re[14]),
        .I1(\denominator_reg_n_0_[15] ),
        .O(\div_rem_re[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_5 
       (.I0(div_rem_re[13]),
        .I1(\denominator_reg_n_0_[14] ),
        .O(\div_rem_re[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_6 
       (.I0(div_rem_re[12]),
        .I1(\denominator_reg_n_0_[13] ),
        .O(\div_rem_re[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_7 
       (.I0(div_rem_re[11]),
        .I1(\denominator_reg_n_0_[12] ),
        .O(\div_rem_re[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[15]_i_9 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(abs_re[15]),
        .O(\div_rem_re[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[16]_i_1 
       (.I0(div_rem_re1[16]),
        .I1(CO),
        .I2(div_rem_re[15]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[16]_i_2_n_0 ),
        .O(\div_rem_re[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[16]_i_2 
       (.I0(div_rem_re10_in[16]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[16]),
        .O(\div_rem_re[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[17]_i_1 
       (.I0(div_rem_re1[17]),
        .I1(CO),
        .I2(div_rem_re[16]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[17]_i_2_n_0 ),
        .O(\div_rem_re[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[17]_i_2 
       (.I0(div_rem_re10_in[17]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[17]),
        .O(\div_rem_re[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[18]_i_1 
       (.I0(div_rem_re1[18]),
        .I1(CO),
        .I2(div_rem_re[17]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[18]_i_2_n_0 ),
        .O(\div_rem_re[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[18]_i_2 
       (.I0(div_rem_re10_in[18]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[18]),
        .O(\div_rem_re[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[19]_i_1 
       (.I0(div_rem_re1[19]),
        .I1(CO),
        .I2(div_rem_re[18]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[19]_i_3_n_0 ),
        .O(\div_rem_re[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_10 
       (.I0(\denominator_reg_n_0_[18] ),
        .I1(abs_re[18]),
        .O(\div_rem_re[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_11 
       (.I0(\denominator_reg_n_0_[17] ),
        .I1(abs_re[17]),
        .O(\div_rem_re[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_12 
       (.I0(\denominator_reg_n_0_[16] ),
        .I1(abs_re[16]),
        .O(\div_rem_re[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[19]_i_3 
       (.I0(div_rem_re10_in[19]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[19]),
        .O(\div_rem_re[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_4 
       (.I0(div_rem_re[18]),
        .I1(\denominator_reg_n_0_[19] ),
        .O(\div_rem_re[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_5 
       (.I0(div_rem_re[17]),
        .I1(\denominator_reg_n_0_[18] ),
        .O(\div_rem_re[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_6 
       (.I0(div_rem_re[16]),
        .I1(\denominator_reg_n_0_[17] ),
        .O(\div_rem_re[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_7 
       (.I0(div_rem_re[15]),
        .I1(\denominator_reg_n_0_[16] ),
        .O(\div_rem_re[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[19]_i_9 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(abs_re[19]),
        .O(\div_rem_re[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[1]_i_1 
       (.I0(div_rem_re1[1]),
        .I1(CO),
        .I2(div_rem_re[0]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[1]_i_2_n_0 ),
        .O(\div_rem_re[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[1]_i_2 
       (.I0(div_rem_re10_in[1]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[1]),
        .O(\div_rem_re[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[20]_i_1 
       (.I0(div_rem_re1[20]),
        .I1(CO),
        .I2(div_rem_re[19]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[20]_i_2_n_0 ),
        .O(\div_rem_re[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[20]_i_2 
       (.I0(div_rem_re10_in[20]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[20]),
        .O(\div_rem_re[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[21]_i_1 
       (.I0(div_rem_re1[21]),
        .I1(CO),
        .I2(div_rem_re[20]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[21]_i_2_n_0 ),
        .O(\div_rem_re[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[21]_i_2 
       (.I0(div_rem_re10_in[21]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[21]),
        .O(\div_rem_re[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[22]_i_1 
       (.I0(div_rem_re1[22]),
        .I1(CO),
        .I2(div_rem_re[21]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[22]_i_2_n_0 ),
        .O(\div_rem_re[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[22]_i_2 
       (.I0(div_rem_re10_in[22]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[22]),
        .O(\div_rem_re[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[23]_i_1 
       (.I0(div_rem_re1[23]),
        .I1(CO),
        .I2(div_rem_re[22]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[23]_i_3_n_0 ),
        .O(\div_rem_re[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_10 
       (.I0(\denominator_reg_n_0_[22] ),
        .I1(abs_re[22]),
        .O(\div_rem_re[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_11 
       (.I0(\denominator_reg_n_0_[21] ),
        .I1(abs_re[21]),
        .O(\div_rem_re[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_12 
       (.I0(\denominator_reg_n_0_[20] ),
        .I1(abs_re[20]),
        .O(\div_rem_re[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[23]_i_3 
       (.I0(div_rem_re10_in[23]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[23]),
        .O(\div_rem_re[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_4 
       (.I0(div_rem_re[22]),
        .I1(\denominator_reg_n_0_[23] ),
        .O(\div_rem_re[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_5 
       (.I0(div_rem_re[21]),
        .I1(\denominator_reg_n_0_[22] ),
        .O(\div_rem_re[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_6 
       (.I0(div_rem_re[20]),
        .I1(\denominator_reg_n_0_[21] ),
        .O(\div_rem_re[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_7 
       (.I0(div_rem_re[19]),
        .I1(\denominator_reg_n_0_[20] ),
        .O(\div_rem_re[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[23]_i_9 
       (.I0(\denominator_reg_n_0_[23] ),
        .I1(abs_re[23]),
        .O(\div_rem_re[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[24]_i_1 
       (.I0(div_rem_re1[24]),
        .I1(CO),
        .I2(div_rem_re[23]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[24]_i_2_n_0 ),
        .O(\div_rem_re[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[24]_i_2 
       (.I0(div_rem_re10_in[24]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[24]),
        .O(\div_rem_re[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[25]_i_1 
       (.I0(div_rem_re1[25]),
        .I1(CO),
        .I2(div_rem_re[24]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[25]_i_2_n_0 ),
        .O(\div_rem_re[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[25]_i_2 
       (.I0(div_rem_re10_in[25]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[25]),
        .O(\div_rem_re[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[26]_i_1 
       (.I0(div_rem_re1[26]),
        .I1(CO),
        .I2(div_rem_re[25]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[26]_i_2_n_0 ),
        .O(\div_rem_re[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[26]_i_2 
       (.I0(div_rem_re10_in[26]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[26]),
        .O(\div_rem_re[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[27]_i_1 
       (.I0(div_rem_re1[27]),
        .I1(CO),
        .I2(div_rem_re[26]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[27]_i_3_n_0 ),
        .O(\div_rem_re[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_10 
       (.I0(\denominator_reg_n_0_[26] ),
        .I1(abs_re[26]),
        .O(\div_rem_re[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_11 
       (.I0(\denominator_reg_n_0_[25] ),
        .I1(abs_re[25]),
        .O(\div_rem_re[27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_12 
       (.I0(\denominator_reg_n_0_[24] ),
        .I1(abs_re[24]),
        .O(\div_rem_re[27]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[27]_i_3 
       (.I0(div_rem_re10_in[27]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[27]),
        .O(\div_rem_re[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_4 
       (.I0(div_rem_re[26]),
        .I1(\denominator_reg_n_0_[27] ),
        .O(\div_rem_re[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_5 
       (.I0(div_rem_re[25]),
        .I1(\denominator_reg_n_0_[26] ),
        .O(\div_rem_re[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_6 
       (.I0(div_rem_re[24]),
        .I1(\denominator_reg_n_0_[25] ),
        .O(\div_rem_re[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_7 
       (.I0(div_rem_re[23]),
        .I1(\denominator_reg_n_0_[24] ),
        .O(\div_rem_re[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[27]_i_9 
       (.I0(\denominator_reg_n_0_[27] ),
        .I1(abs_re[27]),
        .O(\div_rem_re[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[28]_i_1 
       (.I0(div_rem_re1[28]),
        .I1(CO),
        .I2(div_rem_re[27]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[28]_i_2_n_0 ),
        .O(\div_rem_re[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[28]_i_2 
       (.I0(div_rem_re10_in[28]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[28]),
        .O(\div_rem_re[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[29]_i_1 
       (.I0(div_rem_re1[29]),
        .I1(CO),
        .I2(div_rem_re[28]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[29]_i_2_n_0 ),
        .O(\div_rem_re[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[29]_i_2 
       (.I0(div_rem_re10_in[29]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[29]),
        .O(\div_rem_re[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[2]_i_1 
       (.I0(div_rem_re1[2]),
        .I1(CO),
        .I2(div_rem_re[1]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[2]_i_2_n_0 ),
        .O(\div_rem_re[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[2]_i_2 
       (.I0(div_rem_re10_in[2]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[2]),
        .O(\div_rem_re[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[30]_i_1 
       (.I0(div_rem_re1[30]),
        .I1(CO),
        .I2(div_rem_re[29]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[30]_i_2_n_0 ),
        .O(\div_rem_re[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[30]_i_2 
       (.I0(div_rem_re10_in[30]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[30]),
        .O(\div_rem_re[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[31]_i_1 
       (.I0(div_rem_re1[31]),
        .I1(CO),
        .I2(div_rem_re[30]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[31]_i_3_n_0 ),
        .O(\div_rem_re[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_10 
       (.I0(\denominator_reg_n_0_[30] ),
        .I1(abs_re[30]),
        .O(\div_rem_re[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_11 
       (.I0(\denominator_reg_n_0_[29] ),
        .I1(abs_re[29]),
        .O(\div_rem_re[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_12 
       (.I0(\denominator_reg_n_0_[28] ),
        .I1(abs_re[28]),
        .O(\div_rem_re[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[31]_i_3 
       (.I0(div_rem_re10_in[31]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[31]),
        .O(\div_rem_re[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_4 
       (.I0(div_rem_re[30]),
        .I1(\denominator_reg_n_0_[31] ),
        .O(\div_rem_re[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_5 
       (.I0(div_rem_re[29]),
        .I1(\denominator_reg_n_0_[30] ),
        .O(\div_rem_re[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_6 
       (.I0(div_rem_re[28]),
        .I1(\denominator_reg_n_0_[29] ),
        .O(\div_rem_re[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_7 
       (.I0(div_rem_re[27]),
        .I1(\denominator_reg_n_0_[28] ),
        .O(\div_rem_re[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[31]_i_9 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(abs_re[31]),
        .O(\div_rem_re[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[32]_i_1 
       (.I0(div_rem_re1[32]),
        .I1(CO),
        .I2(div_rem_re[31]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[32]_i_2_n_0 ),
        .O(\div_rem_re[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[32]_i_2 
       (.I0(div_rem_re10_in[32]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[32]),
        .O(\div_rem_re[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[33]_i_1 
       (.I0(div_rem_re1[33]),
        .I1(CO),
        .I2(div_rem_re[32]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[33]_i_2_n_0 ),
        .O(\div_rem_re[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[33]_i_2 
       (.I0(div_rem_re10_in[33]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[33]),
        .O(\div_rem_re[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[34]_i_1 
       (.I0(div_rem_re1[34]),
        .I1(CO),
        .I2(div_rem_re[33]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[34]_i_2_n_0 ),
        .O(\div_rem_re[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[34]_i_2 
       (.I0(div_rem_re10_in[34]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[34]),
        .O(\div_rem_re[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[35]_i_1 
       (.I0(div_rem_re1[35]),
        .I1(CO),
        .I2(div_rem_re[34]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[35]_i_3_n_0 ),
        .O(\div_rem_re[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_10 
       (.I0(\denominator_reg_n_0_[34] ),
        .I1(abs_re[34]),
        .O(\div_rem_re[35]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_11 
       (.I0(\denominator_reg_n_0_[33] ),
        .I1(abs_re[33]),
        .O(\div_rem_re[35]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_12 
       (.I0(\denominator_reg_n_0_[32] ),
        .I1(abs_re[32]),
        .O(\div_rem_re[35]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[35]_i_3 
       (.I0(div_rem_re10_in[35]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[35]),
        .O(\div_rem_re[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_4 
       (.I0(div_rem_re[34]),
        .I1(\denominator_reg_n_0_[35] ),
        .O(\div_rem_re[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_5 
       (.I0(div_rem_re[33]),
        .I1(\denominator_reg_n_0_[34] ),
        .O(\div_rem_re[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_6 
       (.I0(div_rem_re[32]),
        .I1(\denominator_reg_n_0_[33] ),
        .O(\div_rem_re[35]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_7 
       (.I0(div_rem_re[31]),
        .I1(\denominator_reg_n_0_[32] ),
        .O(\div_rem_re[35]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[35]_i_9 
       (.I0(\denominator_reg_n_0_[35] ),
        .I1(abs_re[35]),
        .O(\div_rem_re[35]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[36]_i_1 
       (.I0(div_rem_re1[36]),
        .I1(CO),
        .I2(div_rem_re[35]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[36]_i_2_n_0 ),
        .O(\div_rem_re[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[36]_i_2 
       (.I0(div_rem_re10_in[36]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[36]),
        .O(\div_rem_re[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[37]_i_1 
       (.I0(div_rem_re1[37]),
        .I1(CO),
        .I2(div_rem_re[36]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[37]_i_2_n_0 ),
        .O(\div_rem_re[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[37]_i_2 
       (.I0(div_rem_re10_in[37]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[37]),
        .O(\div_rem_re[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[38]_i_1 
       (.I0(div_rem_re1[38]),
        .I1(CO),
        .I2(div_rem_re[37]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[38]_i_2_n_0 ),
        .O(\div_rem_re[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[38]_i_2 
       (.I0(div_rem_re10_in[38]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[38]),
        .O(\div_rem_re[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[39]_i_1 
       (.I0(div_rem_re1[39]),
        .I1(CO),
        .I2(div_rem_re[38]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[39]_i_3_n_0 ),
        .O(\div_rem_re[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_10 
       (.I0(\denominator_reg_n_0_[38] ),
        .I1(abs_re[38]),
        .O(\div_rem_re[39]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_11 
       (.I0(\denominator_reg_n_0_[37] ),
        .I1(abs_re[37]),
        .O(\div_rem_re[39]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_12 
       (.I0(\denominator_reg_n_0_[36] ),
        .I1(abs_re[36]),
        .O(\div_rem_re[39]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[39]_i_3 
       (.I0(div_rem_re10_in[39]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[39]),
        .O(\div_rem_re[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_4 
       (.I0(div_rem_re[38]),
        .I1(\denominator_reg_n_0_[39] ),
        .O(\div_rem_re[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_5 
       (.I0(div_rem_re[37]),
        .I1(\denominator_reg_n_0_[38] ),
        .O(\div_rem_re[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_6 
       (.I0(div_rem_re[36]),
        .I1(\denominator_reg_n_0_[37] ),
        .O(\div_rem_re[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_7 
       (.I0(div_rem_re[35]),
        .I1(\denominator_reg_n_0_[36] ),
        .O(\div_rem_re[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[39]_i_9 
       (.I0(\denominator_reg_n_0_[39] ),
        .I1(abs_re[39]),
        .O(\div_rem_re[39]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[3]_i_1 
       (.I0(div_rem_re1[3]),
        .I1(CO),
        .I2(div_rem_re[2]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[3]_i_3_n_0 ),
        .O(\div_rem_re[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[3]_i_3 
       (.I0(div_rem_re10_in[3]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[3]),
        .O(\div_rem_re[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[3]_i_4 
       (.I0(div_rem_re[2]),
        .I1(\denominator_reg_n_0_[3] ),
        .O(\div_rem_re[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[3]_i_5 
       (.I0(div_rem_re[1]),
        .I1(\denominator_reg_n_0_[2] ),
        .O(\div_rem_re[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[3]_i_6 
       (.I0(div_rem_re[0]),
        .I1(\denominator_reg_n_0_[1] ),
        .O(\div_rem_re[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \div_rem_re[3]_i_7 
       (.I0(\denominator_reg_n_0_[0] ),
        .O(\div_rem_re[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[40]_i_1 
       (.I0(div_rem_re1[40]),
        .I1(CO),
        .I2(div_rem_re[39]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[40]_i_2_n_0 ),
        .O(\div_rem_re[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[40]_i_2 
       (.I0(div_rem_re10_in[40]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[40]),
        .O(\div_rem_re[40]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[41]_i_1 
       (.I0(div_rem_re1[41]),
        .I1(CO),
        .I2(div_rem_re[40]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[41]_i_2_n_0 ),
        .O(\div_rem_re[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[41]_i_2 
       (.I0(div_rem_re10_in[41]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[41]),
        .O(\div_rem_re[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[42]_i_1 
       (.I0(div_rem_re1[42]),
        .I1(CO),
        .I2(div_rem_re[41]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[42]_i_2_n_0 ),
        .O(\div_rem_re[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[42]_i_2 
       (.I0(div_rem_re10_in[42]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[42]),
        .O(\div_rem_re[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[43]_i_1 
       (.I0(div_rem_re1[43]),
        .I1(CO),
        .I2(div_rem_re[42]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[43]_i_3_n_0 ),
        .O(\div_rem_re[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_10 
       (.I0(\denominator_reg_n_0_[42] ),
        .I1(abs_re[42]),
        .O(\div_rem_re[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_11 
       (.I0(\denominator_reg_n_0_[41] ),
        .I1(abs_re[41]),
        .O(\div_rem_re[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_12 
       (.I0(\denominator_reg_n_0_[40] ),
        .I1(abs_re[40]),
        .O(\div_rem_re[43]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[43]_i_3 
       (.I0(div_rem_re10_in[43]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[43]),
        .O(\div_rem_re[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_4 
       (.I0(div_rem_re[42]),
        .I1(\denominator_reg_n_0_[43] ),
        .O(\div_rem_re[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_5 
       (.I0(div_rem_re[41]),
        .I1(\denominator_reg_n_0_[42] ),
        .O(\div_rem_re[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_6 
       (.I0(div_rem_re[40]),
        .I1(\denominator_reg_n_0_[41] ),
        .O(\div_rem_re[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_7 
       (.I0(div_rem_re[39]),
        .I1(\denominator_reg_n_0_[40] ),
        .O(\div_rem_re[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[43]_i_9 
       (.I0(\denominator_reg_n_0_[43] ),
        .I1(abs_re[43]),
        .O(\div_rem_re[43]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[44]_i_1 
       (.I0(div_rem_re1[44]),
        .I1(CO),
        .I2(div_rem_re[43]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[44]_i_2_n_0 ),
        .O(\div_rem_re[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[44]_i_2 
       (.I0(div_rem_re10_in[44]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[44]),
        .O(\div_rem_re[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[45]_i_1 
       (.I0(div_rem_re1[45]),
        .I1(CO),
        .I2(div_rem_re[44]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[45]_i_2_n_0 ),
        .O(\div_rem_re[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[45]_i_2 
       (.I0(div_rem_re10_in[45]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[45]),
        .O(\div_rem_re[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[46]_i_1 
       (.I0(div_rem_re1[46]),
        .I1(CO),
        .I2(div_rem_re[45]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[46]_i_2_n_0 ),
        .O(\div_rem_re[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[46]_i_2 
       (.I0(div_rem_re10_in[46]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[46]),
        .O(\div_rem_re[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[47]_i_1 
       (.I0(div_rem_re1[47]),
        .I1(CO),
        .I2(div_rem_re[46]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[47]_i_3_n_0 ),
        .O(\div_rem_re[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_10 
       (.I0(\denominator_reg_n_0_[46] ),
        .I1(abs_re[46]),
        .O(\div_rem_re[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_11 
       (.I0(\denominator_reg_n_0_[45] ),
        .I1(abs_re[45]),
        .O(\div_rem_re[47]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_12 
       (.I0(\denominator_reg_n_0_[44] ),
        .I1(abs_re[44]),
        .O(\div_rem_re[47]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[47]_i_3 
       (.I0(div_rem_re10_in[47]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[47]),
        .O(\div_rem_re[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_4 
       (.I0(div_rem_re[46]),
        .I1(\denominator_reg_n_0_[47] ),
        .O(\div_rem_re[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_5 
       (.I0(div_rem_re[45]),
        .I1(\denominator_reg_n_0_[46] ),
        .O(\div_rem_re[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_6 
       (.I0(div_rem_re[44]),
        .I1(\denominator_reg_n_0_[45] ),
        .O(\div_rem_re[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_7 
       (.I0(div_rem_re[43]),
        .I1(\denominator_reg_n_0_[44] ),
        .O(\div_rem_re[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[47]_i_9 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(abs_re[47]),
        .O(\div_rem_re[47]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \div_rem_re[48]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(quotient_im));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_12 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(div_rem_re[46]),
        .I2(div_rem_re[45]),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_re[48]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_13 
       (.I0(\denominator_reg_n_0_[45] ),
        .I1(div_rem_re[44]),
        .I2(div_rem_re[43]),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_re[48]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_14 
       (.I0(\denominator_reg_n_0_[43] ),
        .I1(div_rem_re[42]),
        .I2(div_rem_re[41]),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_re[48]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_15 
       (.I0(\denominator_reg_n_0_[41] ),
        .I1(div_rem_re[40]),
        .I2(div_rem_re[39]),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_re[48]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_16 
       (.I0(div_rem_re[46]),
        .I1(\denominator_reg_n_0_[47] ),
        .I2(div_rem_re[45]),
        .I3(\denominator_reg_n_0_[46] ),
        .O(\div_rem_re[48]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_17 
       (.I0(div_rem_re[44]),
        .I1(\denominator_reg_n_0_[45] ),
        .I2(div_rem_re[43]),
        .I3(\denominator_reg_n_0_[44] ),
        .O(\div_rem_re[48]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_18 
       (.I0(div_rem_re[42]),
        .I1(\denominator_reg_n_0_[43] ),
        .I2(div_rem_re[41]),
        .I3(\denominator_reg_n_0_[42] ),
        .O(\div_rem_re[48]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_19 
       (.I0(div_rem_re[40]),
        .I1(\denominator_reg_n_0_[41] ),
        .I2(div_rem_re[39]),
        .I3(\denominator_reg_n_0_[40] ),
        .O(\div_rem_re[48]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[48]_i_2 
       (.I0(div_rem_re1[48]),
        .I1(CO),
        .I2(div_rem_re[47]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .I4(\div_rem_re[48]_i_5_n_0 ),
        .O(\div_rem_re[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[48]_i_20 
       (.I0(abs_re[48]),
        .I1(\denominator_reg_n_0_[48] ),
        .O(\div_rem_re[48]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_22 
       (.I0(\denominator_reg_n_0_[39] ),
        .I1(div_rem_re[38]),
        .I2(div_rem_re[37]),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_re[48]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_23 
       (.I0(\denominator_reg_n_0_[37] ),
        .I1(div_rem_re[36]),
        .I2(div_rem_re[35]),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_re[48]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_24 
       (.I0(\denominator_reg_n_0_[35] ),
        .I1(div_rem_re[34]),
        .I2(div_rem_re[33]),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_re[48]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_25 
       (.I0(\denominator_reg_n_0_[33] ),
        .I1(div_rem_re[32]),
        .I2(div_rem_re[31]),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_re[48]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_26 
       (.I0(div_rem_re[38]),
        .I1(\denominator_reg_n_0_[39] ),
        .I2(div_rem_re[37]),
        .I3(\denominator_reg_n_0_[38] ),
        .O(\div_rem_re[48]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_27 
       (.I0(div_rem_re[36]),
        .I1(\denominator_reg_n_0_[37] ),
        .I2(div_rem_re[35]),
        .I3(\denominator_reg_n_0_[36] ),
        .O(\div_rem_re[48]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_28 
       (.I0(div_rem_re[34]),
        .I1(\denominator_reg_n_0_[35] ),
        .I2(div_rem_re[33]),
        .I3(\denominator_reg_n_0_[34] ),
        .O(\div_rem_re[48]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_29 
       (.I0(div_rem_re[32]),
        .I1(\denominator_reg_n_0_[33] ),
        .I2(div_rem_re[31]),
        .I3(\denominator_reg_n_0_[32] ),
        .O(\div_rem_re[48]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_31 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(div_rem_re[30]),
        .I2(div_rem_re[29]),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_re[48]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_32 
       (.I0(\denominator_reg_n_0_[29] ),
        .I1(div_rem_re[28]),
        .I2(div_rem_re[27]),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_re[48]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_33 
       (.I0(\denominator_reg_n_0_[27] ),
        .I1(div_rem_re[26]),
        .I2(div_rem_re[25]),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_re[48]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_34 
       (.I0(\denominator_reg_n_0_[25] ),
        .I1(div_rem_re[24]),
        .I2(div_rem_re[23]),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_re[48]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_35 
       (.I0(div_rem_re[30]),
        .I1(\denominator_reg_n_0_[31] ),
        .I2(div_rem_re[29]),
        .I3(\denominator_reg_n_0_[30] ),
        .O(\div_rem_re[48]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_36 
       (.I0(div_rem_re[28]),
        .I1(\denominator_reg_n_0_[29] ),
        .I2(div_rem_re[27]),
        .I3(\denominator_reg_n_0_[28] ),
        .O(\div_rem_re[48]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_37 
       (.I0(div_rem_re[26]),
        .I1(\denominator_reg_n_0_[27] ),
        .I2(div_rem_re[25]),
        .I3(\denominator_reg_n_0_[26] ),
        .O(\div_rem_re[48]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_38 
       (.I0(div_rem_re[24]),
        .I1(\denominator_reg_n_0_[25] ),
        .I2(div_rem_re[23]),
        .I3(\denominator_reg_n_0_[24] ),
        .O(\div_rem_re[48]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_40 
       (.I0(\denominator_reg_n_0_[23] ),
        .I1(div_rem_re[22]),
        .I2(div_rem_re[21]),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_re[48]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_41 
       (.I0(\denominator_reg_n_0_[21] ),
        .I1(div_rem_re[20]),
        .I2(div_rem_re[19]),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_re[48]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_42 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(div_rem_re[18]),
        .I2(div_rem_re[17]),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_re[48]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_43 
       (.I0(\denominator_reg_n_0_[17] ),
        .I1(div_rem_re[16]),
        .I2(div_rem_re[15]),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_re[48]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_44 
       (.I0(div_rem_re[22]),
        .I1(\denominator_reg_n_0_[23] ),
        .I2(div_rem_re[21]),
        .I3(\denominator_reg_n_0_[22] ),
        .O(\div_rem_re[48]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_45 
       (.I0(div_rem_re[20]),
        .I1(\denominator_reg_n_0_[21] ),
        .I2(div_rem_re[19]),
        .I3(\denominator_reg_n_0_[20] ),
        .O(\div_rem_re[48]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_46 
       (.I0(div_rem_re[18]),
        .I1(\denominator_reg_n_0_[19] ),
        .I2(div_rem_re[17]),
        .I3(\denominator_reg_n_0_[18] ),
        .O(\div_rem_re[48]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_47 
       (.I0(div_rem_re[16]),
        .I1(\denominator_reg_n_0_[17] ),
        .I2(div_rem_re[15]),
        .I3(\denominator_reg_n_0_[16] ),
        .O(\div_rem_re[48]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_49 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(div_rem_re[14]),
        .I2(div_rem_re[13]),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_re[48]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[48]_i_5 
       (.I0(div_rem_re10_in[48]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[48]),
        .O(\div_rem_re[48]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_50 
       (.I0(\denominator_reg_n_0_[13] ),
        .I1(div_rem_re[12]),
        .I2(div_rem_re[11]),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_re[48]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_51 
       (.I0(\denominator_reg_n_0_[11] ),
        .I1(div_rem_re[10]),
        .I2(div_rem_re[9]),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_re[48]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_52 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(div_rem_re[8]),
        .I2(div_rem_re[7]),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_re[48]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_53 
       (.I0(div_rem_re[14]),
        .I1(\denominator_reg_n_0_[15] ),
        .I2(div_rem_re[13]),
        .I3(\denominator_reg_n_0_[14] ),
        .O(\div_rem_re[48]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_54 
       (.I0(div_rem_re[12]),
        .I1(\denominator_reg_n_0_[13] ),
        .I2(div_rem_re[11]),
        .I3(\denominator_reg_n_0_[12] ),
        .O(\div_rem_re[48]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_55 
       (.I0(div_rem_re[10]),
        .I1(\denominator_reg_n_0_[11] ),
        .I2(div_rem_re[9]),
        .I3(\denominator_reg_n_0_[10] ),
        .O(\div_rem_re[48]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_56 
       (.I0(div_rem_re[8]),
        .I1(\denominator_reg_n_0_[9] ),
        .I2(div_rem_re[7]),
        .I3(\denominator_reg_n_0_[8] ),
        .O(\div_rem_re[48]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_57 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(div_rem_re[6]),
        .I2(div_rem_re[5]),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_re[48]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_58 
       (.I0(\denominator_reg_n_0_[5] ),
        .I1(div_rem_re[4]),
        .I2(div_rem_re[3]),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_re[48]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \div_rem_re[48]_i_59 
       (.I0(\denominator_reg_n_0_[3] ),
        .I1(div_rem_re[2]),
        .I2(div_rem_re[1]),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_re[48]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[48]_i_6 
       (.I0(div_rem_re[47]),
        .I1(\denominator_reg_n_0_[48] ),
        .O(\div_rem_re[48]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div_rem_re[48]_i_60 
       (.I0(div_rem_re[0]),
        .I1(\denominator_reg_n_0_[1] ),
        .O(\div_rem_re[48]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_61 
       (.I0(div_rem_re[6]),
        .I1(\denominator_reg_n_0_[7] ),
        .I2(div_rem_re[5]),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\div_rem_re[48]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_62 
       (.I0(div_rem_re[4]),
        .I1(\denominator_reg_n_0_[5] ),
        .I2(div_rem_re[3]),
        .I3(\denominator_reg_n_0_[4] ),
        .O(\div_rem_re[48]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \div_rem_re[48]_i_63 
       (.I0(div_rem_re[2]),
        .I1(\denominator_reg_n_0_[3] ),
        .I2(div_rem_re[1]),
        .I3(\denominator_reg_n_0_[2] ),
        .O(\div_rem_re[48]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \div_rem_re[48]_i_64 
       (.I0(\denominator_reg_n_0_[0] ),
        .I1(div_rem_re[0]),
        .I2(\denominator_reg_n_0_[1] ),
        .O(\div_rem_re[48]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \div_rem_re[48]_i_8 
       (.I0(div_rem_re[48]),
        .I1(\denominator_reg_n_0_[48] ),
        .I2(div_rem_re[47]),
        .O(\div_rem_re[48]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \div_rem_re[48]_i_9 
       (.I0(\denominator_reg_n_0_[48] ),
        .I1(div_rem_re[47]),
        .I2(div_rem_re[48]),
        .O(\div_rem_re[48]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[4]_i_1 
       (.I0(div_rem_re1[4]),
        .I1(CO),
        .I2(div_rem_re[3]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[4]_i_2_n_0 ),
        .O(\div_rem_re[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[4]_i_2 
       (.I0(div_rem_re10_in[4]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[4]),
        .O(\div_rem_re[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[5]_i_1 
       (.I0(div_rem_re1[5]),
        .I1(CO),
        .I2(div_rem_re[4]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[5]_i_2_n_0 ),
        .O(\div_rem_re[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[5]_i_2 
       (.I0(div_rem_re10_in[5]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[5]),
        .O(\div_rem_re[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[6]_i_1 
       (.I0(div_rem_re1[6]),
        .I1(CO),
        .I2(div_rem_re[5]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[6]_i_2_n_0 ),
        .O(\div_rem_re[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[6]_i_2 
       (.I0(div_rem_re10_in[6]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[6]),
        .O(\div_rem_re[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[7]_i_1 
       (.I0(div_rem_re1[7]),
        .I1(CO),
        .I2(div_rem_re[6]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[7]_i_3_n_0 ),
        .O(\div_rem_re[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_10 
       (.I0(\denominator_reg_n_0_[6] ),
        .I1(abs_re[6]),
        .O(\div_rem_re[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_11 
       (.I0(\denominator_reg_n_0_[5] ),
        .I1(abs_re[5]),
        .O(\div_rem_re[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_12 
       (.I0(\denominator_reg_n_0_[4] ),
        .I1(abs_re[4]),
        .O(\div_rem_re[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[7]_i_3 
       (.I0(div_rem_re10_in[7]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[7]),
        .O(\div_rem_re[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_4 
       (.I0(div_rem_re[6]),
        .I1(\denominator_reg_n_0_[7] ),
        .O(\div_rem_re[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_5 
       (.I0(div_rem_re[5]),
        .I1(\denominator_reg_n_0_[6] ),
        .O(\div_rem_re[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_6 
       (.I0(div_rem_re[4]),
        .I1(\denominator_reg_n_0_[5] ),
        .O(\div_rem_re[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_7 
       (.I0(div_rem_re[3]),
        .I1(\denominator_reg_n_0_[4] ),
        .O(\div_rem_re[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \div_rem_re[7]_i_9 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(abs_re[7]),
        .O(\div_rem_re[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[8]_i_1 
       (.I0(div_rem_re1[8]),
        .I1(CO),
        .I2(div_rem_re[7]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[8]_i_2_n_0 ),
        .O(\div_rem_re[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[8]_i_2 
       (.I0(div_rem_re10_in[8]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[8]),
        .O(\div_rem_re[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \div_rem_re[9]_i_1 
       (.I0(div_rem_re1[9]),
        .I1(CO),
        .I2(div_rem_re[8]),
        .I3(\state_reg[0]_rep__1_n_0 ),
        .I4(\div_rem_re[9]_i_2_n_0 ),
        .O(\div_rem_re[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \div_rem_re[9]_i_2 
       (.I0(div_rem_re10_in[9]),
        .I1(\div_rem_re_reg[0]_i_3_n_3 ),
        .I2(abs_re[9]),
        .O(\div_rem_re[9]_i_2_n_0 ));
  FDRE \div_rem_re_reg[0] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[0]_i_1_n_0 ),
        .Q(div_rem_re[0]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[0]_i_11 
       (.CI(\div_rem_re_reg[0]_i_20_n_0 ),
        .CO({\div_rem_re_reg[0]_i_11_n_0 ,\div_rem_re_reg[0]_i_11_n_1 ,\div_rem_re_reg[0]_i_11_n_2 ,\div_rem_re_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[0]_i_21_n_0 ,\div_rem_re[0]_i_22_n_0 ,\div_rem_re[0]_i_23_n_0 ,\div_rem_re[0]_i_24_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_25_n_0 ,\div_rem_re[0]_i_26_n_0 ,\div_rem_re[0]_i_27_n_0 ,\div_rem_re[0]_i_28_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\div_rem_re_reg[0]_i_2_n_0 ,\div_rem_re_reg[0]_i_2_n_1 ,\div_rem_re_reg[0]_i_2_n_2 ,\div_rem_re_reg[0]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(abs_re[3:0]),
        .O(div_rem_re10_in[3:0]),
        .S({\div_rem_re[0]_i_4_n_0 ,\div_rem_re[0]_i_5_n_0 ,\div_rem_re[0]_i_6_n_0 ,\div_rem_re[0]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_20 
       (.CI(\div_rem_re_reg[0]_i_29_n_0 ),
        .CO({\div_rem_re_reg[0]_i_20_n_0 ,\div_rem_re_reg[0]_i_20_n_1 ,\div_rem_re_reg[0]_i_20_n_2 ,\div_rem_re_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[0]_i_30_n_0 ,\div_rem_re[0]_i_31_n_0 ,\div_rem_re[0]_i_32_n_0 ,\div_rem_re[0]_i_33_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_34_n_0 ,\div_rem_re[0]_i_35_n_0 ,\div_rem_re[0]_i_36_n_0 ,\div_rem_re[0]_i_37_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_29 
       (.CI(\div_rem_re_reg[0]_i_38_n_0 ),
        .CO({\div_rem_re_reg[0]_i_29_n_0 ,\div_rem_re_reg[0]_i_29_n_1 ,\div_rem_re_reg[0]_i_29_n_2 ,\div_rem_re_reg[0]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[0]_i_39_n_0 ,\div_rem_re[0]_i_40_n_0 ,\div_rem_re[0]_i_41_n_0 ,\div_rem_re[0]_i_42_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_29_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_43_n_0 ,\div_rem_re[0]_i_44_n_0 ,\div_rem_re[0]_i_45_n_0 ,\div_rem_re[0]_i_46_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_3 
       (.CI(\div_rem_re_reg[0]_i_8_n_0 ),
        .CO({\NLW_div_rem_re_reg[0]_i_3_CO_UNCONNECTED [3:1],\div_rem_re_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_rem_re[0]_i_9_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\div_rem_re[0]_i_10_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_38 
       (.CI(\div_rem_re_reg[0]_i_47_n_0 ),
        .CO({\div_rem_re_reg[0]_i_38_n_0 ,\div_rem_re_reg[0]_i_38_n_1 ,\div_rem_re_reg[0]_i_38_n_2 ,\div_rem_re_reg[0]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[0]_i_48_n_0 ,\div_rem_re[0]_i_49_n_0 ,\div_rem_re[0]_i_50_n_0 ,\div_rem_re[0]_i_51_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_38_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_52_n_0 ,\div_rem_re[0]_i_53_n_0 ,\div_rem_re[0]_i_54_n_0 ,\div_rem_re[0]_i_55_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_47 
       (.CI(1'b0),
        .CO({\div_rem_re_reg[0]_i_47_n_0 ,\div_rem_re_reg[0]_i_47_n_1 ,\div_rem_re_reg[0]_i_47_n_2 ,\div_rem_re_reg[0]_i_47_n_3 }),
        .CYINIT(1'b1),
        .DI({\div_rem_re[0]_i_56_n_0 ,\div_rem_re[0]_i_57_n_0 ,\div_rem_re[0]_i_58_n_0 ,\div_rem_re[0]_i_59_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_47_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_60_n_0 ,\div_rem_re[0]_i_61_n_0 ,\div_rem_re[0]_i_62_n_0 ,\div_rem_re[0]_i_63_n_0 }));
  CARRY4 \div_rem_re_reg[0]_i_8 
       (.CI(\div_rem_re_reg[0]_i_11_n_0 ),
        .CO({\div_rem_re_reg[0]_i_8_n_0 ,\div_rem_re_reg[0]_i_8_n_1 ,\div_rem_re_reg[0]_i_8_n_2 ,\div_rem_re_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[0]_i_12_n_0 ,\div_rem_re[0]_i_13_n_0 ,\div_rem_re[0]_i_14_n_0 ,\div_rem_re[0]_i_15_n_0 }),
        .O(\NLW_div_rem_re_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[0]_i_16_n_0 ,\div_rem_re[0]_i_17_n_0 ,\div_rem_re[0]_i_18_n_0 ,\div_rem_re[0]_i_19_n_0 }));
  FDRE \div_rem_re_reg[10] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[10]_i_1_n_0 ),
        .Q(div_rem_re[10]),
        .R(rst_0));
  FDRE \div_rem_re_reg[11] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[11]_i_1_n_0 ),
        .Q(div_rem_re[11]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[11]_i_2 
       (.CI(\div_rem_re_reg[7]_i_2_n_0 ),
        .CO({\div_rem_re_reg[11]_i_2_n_0 ,\div_rem_re_reg[11]_i_2_n_1 ,\div_rem_re_reg[11]_i_2_n_2 ,\div_rem_re_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[10:7]),
        .O(div_rem_re1[11:8]),
        .S({\div_rem_re[11]_i_4_n_0 ,\div_rem_re[11]_i_5_n_0 ,\div_rem_re[11]_i_6_n_0 ,\div_rem_re[11]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[11]_i_8 
       (.CI(\div_rem_re_reg[7]_i_8_n_0 ),
        .CO({\div_rem_re_reg[11]_i_8_n_0 ,\div_rem_re_reg[11]_i_8_n_1 ,\div_rem_re_reg[11]_i_8_n_2 ,\div_rem_re_reg[11]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[11:8]),
        .O(div_rem_re10_in[11:8]),
        .S({\div_rem_re[11]_i_9_n_0 ,\div_rem_re[11]_i_10_n_0 ,\div_rem_re[11]_i_11_n_0 ,\div_rem_re[11]_i_12_n_0 }));
  FDRE \div_rem_re_reg[12] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[12]_i_1_n_0 ),
        .Q(div_rem_re[12]),
        .R(rst_0));
  FDRE \div_rem_re_reg[13] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[13]_i_1_n_0 ),
        .Q(div_rem_re[13]),
        .R(rst_0));
  FDRE \div_rem_re_reg[14] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[14]_i_1_n_0 ),
        .Q(div_rem_re[14]),
        .R(rst_0));
  FDRE \div_rem_re_reg[15] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[15]_i_1_n_0 ),
        .Q(div_rem_re[15]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[15]_i_2 
       (.CI(\div_rem_re_reg[11]_i_2_n_0 ),
        .CO({\div_rem_re_reg[15]_i_2_n_0 ,\div_rem_re_reg[15]_i_2_n_1 ,\div_rem_re_reg[15]_i_2_n_2 ,\div_rem_re_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[14:11]),
        .O(div_rem_re1[15:12]),
        .S({\div_rem_re[15]_i_4_n_0 ,\div_rem_re[15]_i_5_n_0 ,\div_rem_re[15]_i_6_n_0 ,\div_rem_re[15]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[15]_i_8 
       (.CI(\div_rem_re_reg[11]_i_8_n_0 ),
        .CO({\div_rem_re_reg[15]_i_8_n_0 ,\div_rem_re_reg[15]_i_8_n_1 ,\div_rem_re_reg[15]_i_8_n_2 ,\div_rem_re_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[15:12]),
        .O(div_rem_re10_in[15:12]),
        .S({\div_rem_re[15]_i_9_n_0 ,\div_rem_re[15]_i_10_n_0 ,\div_rem_re[15]_i_11_n_0 ,\div_rem_re[15]_i_12_n_0 }));
  FDRE \div_rem_re_reg[16] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[16]_i_1_n_0 ),
        .Q(div_rem_re[16]),
        .R(rst_0));
  FDRE \div_rem_re_reg[17] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[17]_i_1_n_0 ),
        .Q(div_rem_re[17]),
        .R(rst_0));
  FDRE \div_rem_re_reg[18] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[18]_i_1_n_0 ),
        .Q(div_rem_re[18]),
        .R(rst_0));
  FDRE \div_rem_re_reg[19] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[19]_i_1_n_0 ),
        .Q(div_rem_re[19]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[19]_i_2 
       (.CI(\div_rem_re_reg[15]_i_2_n_0 ),
        .CO({\div_rem_re_reg[19]_i_2_n_0 ,\div_rem_re_reg[19]_i_2_n_1 ,\div_rem_re_reg[19]_i_2_n_2 ,\div_rem_re_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[18:15]),
        .O(div_rem_re1[19:16]),
        .S({\div_rem_re[19]_i_4_n_0 ,\div_rem_re[19]_i_5_n_0 ,\div_rem_re[19]_i_6_n_0 ,\div_rem_re[19]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[19]_i_8 
       (.CI(\div_rem_re_reg[15]_i_8_n_0 ),
        .CO({\div_rem_re_reg[19]_i_8_n_0 ,\div_rem_re_reg[19]_i_8_n_1 ,\div_rem_re_reg[19]_i_8_n_2 ,\div_rem_re_reg[19]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[19:16]),
        .O(div_rem_re10_in[19:16]),
        .S({\div_rem_re[19]_i_9_n_0 ,\div_rem_re[19]_i_10_n_0 ,\div_rem_re[19]_i_11_n_0 ,\div_rem_re[19]_i_12_n_0 }));
  FDRE \div_rem_re_reg[1] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[1]_i_1_n_0 ),
        .Q(div_rem_re[1]),
        .R(rst_0));
  FDRE \div_rem_re_reg[20] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[20]_i_1_n_0 ),
        .Q(div_rem_re[20]),
        .R(rst_0));
  FDRE \div_rem_re_reg[21] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[21]_i_1_n_0 ),
        .Q(div_rem_re[21]),
        .R(rst_0));
  FDRE \div_rem_re_reg[22] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[22]_i_1_n_0 ),
        .Q(div_rem_re[22]),
        .R(rst_0));
  FDRE \div_rem_re_reg[23] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[23]_i_1_n_0 ),
        .Q(div_rem_re[23]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[23]_i_2 
       (.CI(\div_rem_re_reg[19]_i_2_n_0 ),
        .CO({\div_rem_re_reg[23]_i_2_n_0 ,\div_rem_re_reg[23]_i_2_n_1 ,\div_rem_re_reg[23]_i_2_n_2 ,\div_rem_re_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[22:19]),
        .O(div_rem_re1[23:20]),
        .S({\div_rem_re[23]_i_4_n_0 ,\div_rem_re[23]_i_5_n_0 ,\div_rem_re[23]_i_6_n_0 ,\div_rem_re[23]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[23]_i_8 
       (.CI(\div_rem_re_reg[19]_i_8_n_0 ),
        .CO({\div_rem_re_reg[23]_i_8_n_0 ,\div_rem_re_reg[23]_i_8_n_1 ,\div_rem_re_reg[23]_i_8_n_2 ,\div_rem_re_reg[23]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[23:20]),
        .O(div_rem_re10_in[23:20]),
        .S({\div_rem_re[23]_i_9_n_0 ,\div_rem_re[23]_i_10_n_0 ,\div_rem_re[23]_i_11_n_0 ,\div_rem_re[23]_i_12_n_0 }));
  FDRE \div_rem_re_reg[24] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[24]_i_1_n_0 ),
        .Q(div_rem_re[24]),
        .R(rst_0));
  FDRE \div_rem_re_reg[25] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[25]_i_1_n_0 ),
        .Q(div_rem_re[25]),
        .R(rst_0));
  FDRE \div_rem_re_reg[26] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[26]_i_1_n_0 ),
        .Q(div_rem_re[26]),
        .R(rst_0));
  FDRE \div_rem_re_reg[27] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[27]_i_1_n_0 ),
        .Q(div_rem_re[27]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[27]_i_2 
       (.CI(\div_rem_re_reg[23]_i_2_n_0 ),
        .CO({\div_rem_re_reg[27]_i_2_n_0 ,\div_rem_re_reg[27]_i_2_n_1 ,\div_rem_re_reg[27]_i_2_n_2 ,\div_rem_re_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[26:23]),
        .O(div_rem_re1[27:24]),
        .S({\div_rem_re[27]_i_4_n_0 ,\div_rem_re[27]_i_5_n_0 ,\div_rem_re[27]_i_6_n_0 ,\div_rem_re[27]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[27]_i_8 
       (.CI(\div_rem_re_reg[23]_i_8_n_0 ),
        .CO({\div_rem_re_reg[27]_i_8_n_0 ,\div_rem_re_reg[27]_i_8_n_1 ,\div_rem_re_reg[27]_i_8_n_2 ,\div_rem_re_reg[27]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[27:24]),
        .O(div_rem_re10_in[27:24]),
        .S({\div_rem_re[27]_i_9_n_0 ,\div_rem_re[27]_i_10_n_0 ,\div_rem_re[27]_i_11_n_0 ,\div_rem_re[27]_i_12_n_0 }));
  FDRE \div_rem_re_reg[28] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[28]_i_1_n_0 ),
        .Q(div_rem_re[28]),
        .R(rst_0));
  FDRE \div_rem_re_reg[29] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[29]_i_1_n_0 ),
        .Q(div_rem_re[29]),
        .R(rst_0));
  FDRE \div_rem_re_reg[2] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[2]_i_1_n_0 ),
        .Q(div_rem_re[2]),
        .R(rst_0));
  FDRE \div_rem_re_reg[30] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[30]_i_1_n_0 ),
        .Q(div_rem_re[30]),
        .R(rst_0));
  FDRE \div_rem_re_reg[31] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[31]_i_1_n_0 ),
        .Q(div_rem_re[31]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[31]_i_2 
       (.CI(\div_rem_re_reg[27]_i_2_n_0 ),
        .CO({\div_rem_re_reg[31]_i_2_n_0 ,\div_rem_re_reg[31]_i_2_n_1 ,\div_rem_re_reg[31]_i_2_n_2 ,\div_rem_re_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[30:27]),
        .O(div_rem_re1[31:28]),
        .S({\div_rem_re[31]_i_4_n_0 ,\div_rem_re[31]_i_5_n_0 ,\div_rem_re[31]_i_6_n_0 ,\div_rem_re[31]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[31]_i_8 
       (.CI(\div_rem_re_reg[27]_i_8_n_0 ),
        .CO({\div_rem_re_reg[31]_i_8_n_0 ,\div_rem_re_reg[31]_i_8_n_1 ,\div_rem_re_reg[31]_i_8_n_2 ,\div_rem_re_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[31:28]),
        .O(div_rem_re10_in[31:28]),
        .S({\div_rem_re[31]_i_9_n_0 ,\div_rem_re[31]_i_10_n_0 ,\div_rem_re[31]_i_11_n_0 ,\div_rem_re[31]_i_12_n_0 }));
  FDRE \div_rem_re_reg[32] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[32]_i_1_n_0 ),
        .Q(div_rem_re[32]),
        .R(rst_0));
  FDRE \div_rem_re_reg[33] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[33]_i_1_n_0 ),
        .Q(div_rem_re[33]),
        .R(rst_0));
  FDRE \div_rem_re_reg[34] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[34]_i_1_n_0 ),
        .Q(div_rem_re[34]),
        .R(rst_0));
  FDRE \div_rem_re_reg[35] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[35]_i_1_n_0 ),
        .Q(div_rem_re[35]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[35]_i_2 
       (.CI(\div_rem_re_reg[31]_i_2_n_0 ),
        .CO({\div_rem_re_reg[35]_i_2_n_0 ,\div_rem_re_reg[35]_i_2_n_1 ,\div_rem_re_reg[35]_i_2_n_2 ,\div_rem_re_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[34:31]),
        .O(div_rem_re1[35:32]),
        .S({\div_rem_re[35]_i_4_n_0 ,\div_rem_re[35]_i_5_n_0 ,\div_rem_re[35]_i_6_n_0 ,\div_rem_re[35]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[35]_i_8 
       (.CI(\div_rem_re_reg[31]_i_8_n_0 ),
        .CO({\div_rem_re_reg[35]_i_8_n_0 ,\div_rem_re_reg[35]_i_8_n_1 ,\div_rem_re_reg[35]_i_8_n_2 ,\div_rem_re_reg[35]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[35:32]),
        .O(div_rem_re10_in[35:32]),
        .S({\div_rem_re[35]_i_9_n_0 ,\div_rem_re[35]_i_10_n_0 ,\div_rem_re[35]_i_11_n_0 ,\div_rem_re[35]_i_12_n_0 }));
  FDRE \div_rem_re_reg[36] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[36]_i_1_n_0 ),
        .Q(div_rem_re[36]),
        .R(rst_0));
  FDRE \div_rem_re_reg[37] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[37]_i_1_n_0 ),
        .Q(div_rem_re[37]),
        .R(rst_0));
  FDRE \div_rem_re_reg[38] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[38]_i_1_n_0 ),
        .Q(div_rem_re[38]),
        .R(rst_0));
  FDRE \div_rem_re_reg[39] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[39]_i_1_n_0 ),
        .Q(div_rem_re[39]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[39]_i_2 
       (.CI(\div_rem_re_reg[35]_i_2_n_0 ),
        .CO({\div_rem_re_reg[39]_i_2_n_0 ,\div_rem_re_reg[39]_i_2_n_1 ,\div_rem_re_reg[39]_i_2_n_2 ,\div_rem_re_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[38:35]),
        .O(div_rem_re1[39:36]),
        .S({\div_rem_re[39]_i_4_n_0 ,\div_rem_re[39]_i_5_n_0 ,\div_rem_re[39]_i_6_n_0 ,\div_rem_re[39]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[39]_i_8 
       (.CI(\div_rem_re_reg[35]_i_8_n_0 ),
        .CO({\div_rem_re_reg[39]_i_8_n_0 ,\div_rem_re_reg[39]_i_8_n_1 ,\div_rem_re_reg[39]_i_8_n_2 ,\div_rem_re_reg[39]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[39:36]),
        .O(div_rem_re10_in[39:36]),
        .S({\div_rem_re[39]_i_9_n_0 ,\div_rem_re[39]_i_10_n_0 ,\div_rem_re[39]_i_11_n_0 ,\div_rem_re[39]_i_12_n_0 }));
  FDRE \div_rem_re_reg[3] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[3]_i_1_n_0 ),
        .Q(div_rem_re[3]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\div_rem_re_reg[3]_i_2_n_0 ,\div_rem_re_reg[3]_i_2_n_1 ,\div_rem_re_reg[3]_i_2_n_2 ,\div_rem_re_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({div_rem_re[2:0],1'b0}),
        .O(div_rem_re1[3:0]),
        .S({\div_rem_re[3]_i_4_n_0 ,\div_rem_re[3]_i_5_n_0 ,\div_rem_re[3]_i_6_n_0 ,\div_rem_re[3]_i_7_n_0 }));
  FDRE \div_rem_re_reg[40] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[40]_i_1_n_0 ),
        .Q(div_rem_re[40]),
        .R(rst_0));
  FDRE \div_rem_re_reg[41] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[41]_i_1_n_0 ),
        .Q(div_rem_re[41]),
        .R(rst_0));
  FDRE \div_rem_re_reg[42] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[42]_i_1_n_0 ),
        .Q(div_rem_re[42]),
        .R(rst_0));
  FDRE \div_rem_re_reg[43] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[43]_i_1_n_0 ),
        .Q(div_rem_re[43]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[43]_i_2 
       (.CI(\div_rem_re_reg[39]_i_2_n_0 ),
        .CO({\div_rem_re_reg[43]_i_2_n_0 ,\div_rem_re_reg[43]_i_2_n_1 ,\div_rem_re_reg[43]_i_2_n_2 ,\div_rem_re_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[42:39]),
        .O(div_rem_re1[43:40]),
        .S({\div_rem_re[43]_i_4_n_0 ,\div_rem_re[43]_i_5_n_0 ,\div_rem_re[43]_i_6_n_0 ,\div_rem_re[43]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[43]_i_8 
       (.CI(\div_rem_re_reg[39]_i_8_n_0 ),
        .CO({\div_rem_re_reg[43]_i_8_n_0 ,\div_rem_re_reg[43]_i_8_n_1 ,\div_rem_re_reg[43]_i_8_n_2 ,\div_rem_re_reg[43]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[43:40]),
        .O(div_rem_re10_in[43:40]),
        .S({\div_rem_re[43]_i_9_n_0 ,\div_rem_re[43]_i_10_n_0 ,\div_rem_re[43]_i_11_n_0 ,\div_rem_re[43]_i_12_n_0 }));
  FDRE \div_rem_re_reg[44] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[44]_i_1_n_0 ),
        .Q(div_rem_re[44]),
        .R(rst_0));
  FDRE \div_rem_re_reg[45] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[45]_i_1_n_0 ),
        .Q(div_rem_re[45]),
        .R(rst_0));
  FDRE \div_rem_re_reg[46] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[46]_i_1_n_0 ),
        .Q(div_rem_re[46]),
        .R(rst_0));
  FDRE \div_rem_re_reg[47] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[47]_i_1_n_0 ),
        .Q(div_rem_re[47]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[47]_i_2 
       (.CI(\div_rem_re_reg[43]_i_2_n_0 ),
        .CO({\div_rem_re_reg[47]_i_2_n_0 ,\div_rem_re_reg[47]_i_2_n_1 ,\div_rem_re_reg[47]_i_2_n_2 ,\div_rem_re_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[46:43]),
        .O(div_rem_re1[47:44]),
        .S({\div_rem_re[47]_i_4_n_0 ,\div_rem_re[47]_i_5_n_0 ,\div_rem_re[47]_i_6_n_0 ,\div_rem_re[47]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[47]_i_8 
       (.CI(\div_rem_re_reg[43]_i_8_n_0 ),
        .CO({\div_rem_re_reg[47]_i_8_n_0 ,\div_rem_re_reg[47]_i_8_n_1 ,\div_rem_re_reg[47]_i_8_n_2 ,\div_rem_re_reg[47]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[47:44]),
        .O(div_rem_re10_in[47:44]),
        .S({\div_rem_re[47]_i_9_n_0 ,\div_rem_re[47]_i_10_n_0 ,\div_rem_re[47]_i_11_n_0 ,\div_rem_re[47]_i_12_n_0 }));
  FDRE \div_rem_re_reg[48] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[48]_i_2_n_0 ),
        .Q(div_rem_re[48]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[48]_i_10 
       (.CI(\div_rem_re_reg[47]_i_8_n_0 ),
        .CO(\NLW_div_rem_re_reg[48]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div_rem_re_reg[48]_i_10_O_UNCONNECTED [3:1],div_rem_re10_in[48]}),
        .S({1'b0,1'b0,1'b0,\div_rem_re[48]_i_20_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_11 
       (.CI(\div_rem_re_reg[48]_i_21_n_0 ),
        .CO({\div_rem_re_reg[48]_i_11_n_0 ,\div_rem_re_reg[48]_i_11_n_1 ,\div_rem_re_reg[48]_i_11_n_2 ,\div_rem_re_reg[48]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[48]_i_22_n_0 ,\div_rem_re[48]_i_23_n_0 ,\div_rem_re[48]_i_24_n_0 ,\div_rem_re[48]_i_25_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_11_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_26_n_0 ,\div_rem_re[48]_i_27_n_0 ,\div_rem_re[48]_i_28_n_0 ,\div_rem_re[48]_i_29_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_21 
       (.CI(\div_rem_re_reg[48]_i_30_n_0 ),
        .CO({\div_rem_re_reg[48]_i_21_n_0 ,\div_rem_re_reg[48]_i_21_n_1 ,\div_rem_re_reg[48]_i_21_n_2 ,\div_rem_re_reg[48]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[48]_i_31_n_0 ,\div_rem_re[48]_i_32_n_0 ,\div_rem_re[48]_i_33_n_0 ,\div_rem_re[48]_i_34_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_21_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_35_n_0 ,\div_rem_re[48]_i_36_n_0 ,\div_rem_re[48]_i_37_n_0 ,\div_rem_re[48]_i_38_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_3 
       (.CI(\div_rem_re_reg[47]_i_2_n_0 ),
        .CO(\NLW_div_rem_re_reg[48]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_div_rem_re_reg[48]_i_3_O_UNCONNECTED [3:1],div_rem_re1[48]}),
        .S({1'b0,1'b0,1'b0,\div_rem_re[48]_i_6_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_30 
       (.CI(\div_rem_re_reg[48]_i_39_n_0 ),
        .CO({\div_rem_re_reg[48]_i_30_n_0 ,\div_rem_re_reg[48]_i_30_n_1 ,\div_rem_re_reg[48]_i_30_n_2 ,\div_rem_re_reg[48]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[48]_i_40_n_0 ,\div_rem_re[48]_i_41_n_0 ,\div_rem_re[48]_i_42_n_0 ,\div_rem_re[48]_i_43_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_30_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_44_n_0 ,\div_rem_re[48]_i_45_n_0 ,\div_rem_re[48]_i_46_n_0 ,\div_rem_re[48]_i_47_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_39 
       (.CI(\div_rem_re_reg[48]_i_48_n_0 ),
        .CO({\div_rem_re_reg[48]_i_39_n_0 ,\div_rem_re_reg[48]_i_39_n_1 ,\div_rem_re_reg[48]_i_39_n_2 ,\div_rem_re_reg[48]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[48]_i_49_n_0 ,\div_rem_re[48]_i_50_n_0 ,\div_rem_re[48]_i_51_n_0 ,\div_rem_re[48]_i_52_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_39_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_53_n_0 ,\div_rem_re[48]_i_54_n_0 ,\div_rem_re[48]_i_55_n_0 ,\div_rem_re[48]_i_56_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_4 
       (.CI(\div_rem_re_reg[48]_i_7_n_0 ),
        .CO({\NLW_div_rem_re_reg[48]_i_4_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_rem_re[48]_i_8_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\div_rem_re[48]_i_9_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_48 
       (.CI(1'b0),
        .CO({\div_rem_re_reg[48]_i_48_n_0 ,\div_rem_re_reg[48]_i_48_n_1 ,\div_rem_re_reg[48]_i_48_n_2 ,\div_rem_re_reg[48]_i_48_n_3 }),
        .CYINIT(1'b1),
        .DI({\div_rem_re[48]_i_57_n_0 ,\div_rem_re[48]_i_58_n_0 ,\div_rem_re[48]_i_59_n_0 ,\div_rem_re[48]_i_60_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_48_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_61_n_0 ,\div_rem_re[48]_i_62_n_0 ,\div_rem_re[48]_i_63_n_0 ,\div_rem_re[48]_i_64_n_0 }));
  CARRY4 \div_rem_re_reg[48]_i_7 
       (.CI(\div_rem_re_reg[48]_i_11_n_0 ),
        .CO({\div_rem_re_reg[48]_i_7_n_0 ,\div_rem_re_reg[48]_i_7_n_1 ,\div_rem_re_reg[48]_i_7_n_2 ,\div_rem_re_reg[48]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\div_rem_re[48]_i_12_n_0 ,\div_rem_re[48]_i_13_n_0 ,\div_rem_re[48]_i_14_n_0 ,\div_rem_re[48]_i_15_n_0 }),
        .O(\NLW_div_rem_re_reg[48]_i_7_O_UNCONNECTED [3:0]),
        .S({\div_rem_re[48]_i_16_n_0 ,\div_rem_re[48]_i_17_n_0 ,\div_rem_re[48]_i_18_n_0 ,\div_rem_re[48]_i_19_n_0 }));
  FDRE \div_rem_re_reg[4] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[4]_i_1_n_0 ),
        .Q(div_rem_re[4]),
        .R(rst_0));
  FDRE \div_rem_re_reg[5] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[5]_i_1_n_0 ),
        .Q(div_rem_re[5]),
        .R(rst_0));
  FDRE \div_rem_re_reg[6] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[6]_i_1_n_0 ),
        .Q(div_rem_re[6]),
        .R(rst_0));
  FDRE \div_rem_re_reg[7] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[7]_i_1_n_0 ),
        .Q(div_rem_re[7]),
        .R(rst_0));
  CARRY4 \div_rem_re_reg[7]_i_2 
       (.CI(\div_rem_re_reg[3]_i_2_n_0 ),
        .CO({\div_rem_re_reg[7]_i_2_n_0 ,\div_rem_re_reg[7]_i_2_n_1 ,\div_rem_re_reg[7]_i_2_n_2 ,\div_rem_re_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(div_rem_re[6:3]),
        .O(div_rem_re1[7:4]),
        .S({\div_rem_re[7]_i_4_n_0 ,\div_rem_re[7]_i_5_n_0 ,\div_rem_re[7]_i_6_n_0 ,\div_rem_re[7]_i_7_n_0 }));
  CARRY4 \div_rem_re_reg[7]_i_8 
       (.CI(\div_rem_re_reg[0]_i_2_n_0 ),
        .CO({\div_rem_re_reg[7]_i_8_n_0 ,\div_rem_re_reg[7]_i_8_n_1 ,\div_rem_re_reg[7]_i_8_n_2 ,\div_rem_re_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_re[7:4]),
        .O(div_rem_re10_in[7:4]),
        .S({\div_rem_re[7]_i_9_n_0 ,\div_rem_re[7]_i_10_n_0 ,\div_rem_re[7]_i_11_n_0 ,\div_rem_re[7]_i_12_n_0 }));
  FDRE \div_rem_re_reg[8] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[8]_i_1_n_0 ),
        .Q(div_rem_re[8]),
        .R(rst_0));
  FDRE \div_rem_re_reg[9] 
       (.C(clk),
        .CE(quotient_im),
        .D(\div_rem_re[9]_i_1_n_0 ),
        .Q(div_rem_re[9]),
        .R(rst_0));
  LUT6 #(
    .INIT(64'h0047000000000000)) 
    done_i_1__0
       (.I0(\denominator[48]_i_3_n_0 ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(rst),
        .O(done_i_1__0_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1__0_n_0),
        .Q(core_done),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ii0
       (.A({ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ii0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[40:24]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ii0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ii0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ii0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ii0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ii0_OVERFLOW_UNCONNECTED),
        .P({ii0_n_58,ii0_n_59,ii0_n_60,ii0_n_61,ii0_n_62,ii0_n_63,ii0_n_64,ii0_n_65,ii0_n_66,ii0_n_67,ii0_n_68,ii0_n_69,ii0_n_70,ii0_n_71,ii0_n_72,ii0_n_73,ii0_n_74,ii0_n_75,ii0_n_76,ii0_n_77,ii0_n_78,ii0_n_79,ii0_n_80,ii0_n_81,ii0_n_82,ii0_n_83,ii0_n_84,ii0_n_85,ii0_n_86,ii0_n_87,ii0_n_88,ii0_n_89,ii0_n_90,ii0_n_91,ii0_n_92,ii0_n_93,ii0_n_94,ii0_n_95,ii0_n_96,ii0_n_97,ii0_n_98,ii0_n_99,ii0_n_100,ii0_n_101,ii0_n_102,ii0_n_103,ii0_n_104,ii0_n_105}),
        .PATTERNBDETECT(NLW_ii0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ii0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ii0_n_106,ii0_n_107,ii0_n_108,ii0_n_109,ii0_n_110,ii0_n_111,ii0_n_112,ii0_n_113,ii0_n_114,ii0_n_115,ii0_n_116,ii0_n_117,ii0_n_118,ii0_n_119,ii0_n_120,ii0_n_121,ii0_n_122,ii0_n_123,ii0_n_124,ii0_n_125,ii0_n_126,ii0_n_127,ii0_n_128,ii0_n_129,ii0_n_130,ii0_n_131,ii0_n_132,ii0_n_133,ii0_n_134,ii0_n_135,ii0_n_136,ii0_n_137,ii0_n_138,ii0_n_139,ii0_n_140,ii0_n_141,ii0_n_142,ii0_n_143,ii0_n_144,ii0_n_145,ii0_n_146,ii0_n_147,ii0_n_148,ii0_n_149,ii0_n_150,ii0_n_151,ii0_n_152,ii0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ii0_UNDERFLOW_UNCONNECTED));
  FDRE \ii_reg[0] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_105),
        .Q(ii_reg__1[0]),
        .R(rst_0));
  FDRE \ii_reg[10] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_95),
        .Q(ii_reg__1[10]),
        .R(rst_0));
  FDRE \ii_reg[11] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_94),
        .Q(ii_reg__1[11]),
        .R(rst_0));
  FDRE \ii_reg[12] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_93),
        .Q(ii_reg__1[12]),
        .R(rst_0));
  FDRE \ii_reg[13] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_92),
        .Q(ii_reg__1[13]),
        .R(rst_0));
  FDRE \ii_reg[14] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_91),
        .Q(ii_reg__1[14]),
        .R(rst_0));
  FDRE \ii_reg[15] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_90),
        .Q(ii_reg__1[15]),
        .R(rst_0));
  FDRE \ii_reg[16] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_89),
        .Q(ii_reg__1[16]),
        .R(rst_0));
  FDRE \ii_reg[1] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_104),
        .Q(ii_reg__1[1]),
        .R(rst_0));
  FDRE \ii_reg[2] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_103),
        .Q(ii_reg__1[2]),
        .R(rst_0));
  FDRE \ii_reg[3] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_102),
        .Q(ii_reg__1[3]),
        .R(rst_0));
  FDRE \ii_reg[4] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_101),
        .Q(ii_reg__1[4]),
        .R(rst_0));
  FDRE \ii_reg[5] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_100),
        .Q(ii_reg__1[5]),
        .R(rst_0));
  FDRE \ii_reg[6] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_99),
        .Q(ii_reg__1[6]),
        .R(rst_0));
  FDRE \ii_reg[7] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_98),
        .Q(ii_reg__1[7]),
        .R(rst_0));
  FDRE \ii_reg[8] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_97),
        .Q(ii_reg__1[8]),
        .R(rst_0));
  FDRE \ii_reg[9] 
       (.C(clk),
        .CE(CEP),
        .D(ii0_n_96),
        .Q(ii_reg__1[9]),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ii_reg__0
       (.A({ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ii_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47:41]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ii_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ii_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ii_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ii_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ii_reg__0_OVERFLOW_UNCONNECTED),
        .P({ii_reg__0_n_58,ii_reg__0_n_59,ii_reg__0_n_60,ii_reg__0_n_61,ii_reg__0_n_62,ii_reg__0_n_63,ii_reg__0_n_64,ii_reg__0_n_65,ii_reg__0_n_66,ii_reg__0_n_67,ii_reg__0_n_68,ii_reg__0_n_69,ii_reg__0_n_70,ii_reg__0_n_71,ii_reg__0_n_72,ii_reg__0_n_73,ii_reg__0_n_74,ii_reg__0_n_75,ii_reg__0_n_76,ii_reg__0_n_77,ii_reg__0_n_78,ii_reg__0_n_79,ii_reg__0_n_80,ii_reg__0_n_81,ii_reg__0_n_82,ii_reg__0_n_83,ii_reg__0_n_84,ii_reg__0_n_85,ii_reg__0_n_86,ii_reg__0_n_87,ii_reg__0_n_88,ii_reg__0_n_89,ii_reg__0_n_90,ii_reg__0_n_91,ii_reg__0_n_92,ii_reg__0_n_93,ii_reg__0_n_94,ii_reg__0_n_95,ii_reg__0_n_96,ii_reg__0_n_97,ii_reg__0_n_98,ii_reg__0_n_99,ii_reg__0_n_100,ii_reg__0_n_101,ii_reg__0_n_102,ii_reg__0_n_103,ii_reg__0_n_104,ii_reg__0_n_105}),
        .PATTERNBDETECT(NLW_ii_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ii_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({ii0_n_106,ii0_n_107,ii0_n_108,ii0_n_109,ii0_n_110,ii0_n_111,ii0_n_112,ii0_n_113,ii0_n_114,ii0_n_115,ii0_n_116,ii0_n_117,ii0_n_118,ii0_n_119,ii0_n_120,ii0_n_121,ii0_n_122,ii0_n_123,ii0_n_124,ii0_n_125,ii0_n_126,ii0_n_127,ii0_n_128,ii0_n_129,ii0_n_130,ii0_n_131,ii0_n_132,ii0_n_133,ii0_n_134,ii0_n_135,ii0_n_136,ii0_n_137,ii0_n_138,ii0_n_139,ii0_n_140,ii0_n_141,ii0_n_142,ii0_n_143,ii0_n_144,ii0_n_145,ii0_n_146,ii0_n_147,ii0_n_148,ii0_n_149,ii0_n_150,ii0_n_151,ii0_n_152,ii0_n_153}),
        .PCOUT(NLW_ii_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_0),
        .UNDERFLOW(NLW_ii_reg__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ir0
       (.A({ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ir0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[40:24]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ir0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ir0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ir0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ir0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ir0_OVERFLOW_UNCONNECTED),
        .P({ir0_n_58,ir0_n_59,ir0_n_60,ir0_n_61,ir0_n_62,ir0_n_63,ir0_n_64,ir0_n_65,ir0_n_66,ir0_n_67,ir0_n_68,ir0_n_69,ir0_n_70,ir0_n_71,ir0_n_72,ir0_n_73,ir0_n_74,ir0_n_75,ir0_n_76,ir0_n_77,ir0_n_78,ir0_n_79,ir0_n_80,ir0_n_81,ir0_n_82,ir0_n_83,ir0_n_84,ir0_n_85,ir0_n_86,ir0_n_87,ir0_n_88,ir0_n_89,ir0_n_90,ir0_n_91,ir0_n_92,ir0_n_93,ir0_n_94,ir0_n_95,ir0_n_96,ir0_n_97,ir0_n_98,ir0_n_99,ir0_n_100,ir0_n_101,ir0_n_102,ir0_n_103,ir0_n_104,ir0_n_105}),
        .PATTERNBDETECT(NLW_ir0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ir0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ir0_n_106,ir0_n_107,ir0_n_108,ir0_n_109,ir0_n_110,ir0_n_111,ir0_n_112,ir0_n_113,ir0_n_114,ir0_n_115,ir0_n_116,ir0_n_117,ir0_n_118,ir0_n_119,ir0_n_120,ir0_n_121,ir0_n_122,ir0_n_123,ir0_n_124,ir0_n_125,ir0_n_126,ir0_n_127,ir0_n_128,ir0_n_129,ir0_n_130,ir0_n_131,ir0_n_132,ir0_n_133,ir0_n_134,ir0_n_135,ir0_n_136,ir0_n_137,ir0_n_138,ir0_n_139,ir0_n_140,ir0_n_141,ir0_n_142,ir0_n_143,ir0_n_144,ir0_n_145,ir0_n_146,ir0_n_147,ir0_n_148,ir0_n_149,ir0_n_150,ir0_n_151,ir0_n_152,ir0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ir0_UNDERFLOW_UNCONNECTED));
  FDRE \ir_reg[0] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_105),
        .Q(ir_reg__1[0]),
        .R(rst_0));
  FDRE \ir_reg[10] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_95),
        .Q(ir_reg__1[10]),
        .R(rst_0));
  FDRE \ir_reg[11] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_94),
        .Q(ir_reg__1[11]),
        .R(rst_0));
  FDRE \ir_reg[12] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_93),
        .Q(ir_reg__1[12]),
        .R(rst_0));
  FDRE \ir_reg[13] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_92),
        .Q(ir_reg__1[13]),
        .R(rst_0));
  FDRE \ir_reg[14] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_91),
        .Q(ir_reg__1[14]),
        .R(rst_0));
  FDRE \ir_reg[15] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_90),
        .Q(ir_reg__1[15]),
        .R(rst_0));
  FDRE \ir_reg[16] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_89),
        .Q(ir_reg__1[16]),
        .R(rst_0));
  FDRE \ir_reg[1] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_104),
        .Q(ir_reg__1[1]),
        .R(rst_0));
  FDRE \ir_reg[2] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_103),
        .Q(ir_reg__1[2]),
        .R(rst_0));
  FDRE \ir_reg[3] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_102),
        .Q(ir_reg__1[3]),
        .R(rst_0));
  FDRE \ir_reg[4] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_101),
        .Q(ir_reg__1[4]),
        .R(rst_0));
  FDRE \ir_reg[5] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_100),
        .Q(ir_reg__1[5]),
        .R(rst_0));
  FDRE \ir_reg[6] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_99),
        .Q(ir_reg__1[6]),
        .R(rst_0));
  FDRE \ir_reg[7] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_98),
        .Q(ir_reg__1[7]),
        .R(rst_0));
  FDRE \ir_reg[8] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_97),
        .Q(ir_reg__1[8]),
        .R(rst_0));
  FDRE \ir_reg[9] 
       (.C(clk),
        .CE(CEP),
        .D(ir0_n_96),
        .Q(ir_reg__1[9]),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ir_reg__0
       (.A({ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ir_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47],Q[47:41]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ir_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ir_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ir_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ir_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ir_reg__0_OVERFLOW_UNCONNECTED),
        .P({ir_reg__0_n_58,ir_reg__0_n_59,ir_reg__0_n_60,ir_reg__0_n_61,ir_reg__0_n_62,ir_reg__0_n_63,ir_reg__0_n_64,ir_reg__0_n_65,ir_reg__0_n_66,ir_reg__0_n_67,ir_reg__0_n_68,ir_reg__0_n_69,ir_reg__0_n_70,ir_reg__0_n_71,ir_reg__0_n_72,ir_reg__0_n_73,ir_reg__0_n_74,ir_reg__0_n_75,ir_reg__0_n_76,ir_reg__0_n_77,ir_reg__0_n_78,ir_reg__0_n_79,ir_reg__0_n_80,ir_reg__0_n_81,ir_reg__0_n_82,ir_reg__0_n_83,ir_reg__0_n_84,ir_reg__0_n_85,ir_reg__0_n_86,ir_reg__0_n_87,ir_reg__0_n_88,ir_reg__0_n_89,ir_reg__0_n_90,ir_reg__0_n_91,ir_reg__0_n_92,ir_reg__0_n_93,ir_reg__0_n_94,ir_reg__0_n_95,ir_reg__0_n_96,ir_reg__0_n_97,ir_reg__0_n_98,ir_reg__0_n_99,ir_reg__0_n_100,ir_reg__0_n_101,ir_reg__0_n_102,ir_reg__0_n_103,ir_reg__0_n_104,ir_reg__0_n_105}),
        .PATTERNBDETECT(NLW_ir_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ir_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({ir0_n_106,ir0_n_107,ir0_n_108,ir0_n_109,ir0_n_110,ir0_n_111,ir0_n_112,ir0_n_113,ir0_n_114,ir0_n_115,ir0_n_116,ir0_n_117,ir0_n_118,ir0_n_119,ir0_n_120,ir0_n_121,ir0_n_122,ir0_n_123,ir0_n_124,ir0_n_125,ir0_n_126,ir0_n_127,ir0_n_128,ir0_n_129,ir0_n_130,ir0_n_131,ir0_n_132,ir0_n_133,ir0_n_134,ir0_n_135,ir0_n_136,ir0_n_137,ir0_n_138,ir0_n_139,ir0_n_140,ir0_n_141,ir0_n_142,ir0_n_143,ir0_n_144,ir0_n_145,ir0_n_146,ir0_n_147,ir0_n_148,ir0_n_149,ir0_n_150,ir0_n_151,ir0_n_152,ir0_n_153}),
        .PCOUT(NLW_ir_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_0),
        .UNDERFLOW(NLW_ir_reg__0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    last_latched_i_1
       (.I0(last_latched_reg_0),
        .I1(calculating),
        .I2(last_latched),
        .O(last_latched_reg));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_i_1
       (.I0(core_done),
        .I1(calculating_reg_1),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'h88F8F8F8F8F8F8F8)) 
    m_axis_tvalid_i_1
       (.I0(calculating_reg_1),
        .I1(core_done),
        .I2(weight_out_valid),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(\FSM_sequential_state_reg[0] [0]),
        .I5(m_axis_tvalid_reg),
        .O(calculating_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_im[0]_i_1 
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(\div_rem_im_reg[48]_0 ),
        .O(\out_im[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[10]_i_1 
       (.I0(\quotient_im_reg_n_0_[9] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[10]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[11]_i_1 
       (.I0(\quotient_im_reg_n_0_[10] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[11]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[12]_i_1 
       (.I0(\quotient_im_reg_n_0_[11] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[12]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[12]_i_3 
       (.I0(\quotient_im_reg_n_0_[11] ),
        .O(\out_im[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[12]_i_4 
       (.I0(\quotient_im_reg_n_0_[10] ),
        .O(\out_im[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[12]_i_5 
       (.I0(\quotient_im_reg_n_0_[9] ),
        .O(\out_im[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[12]_i_6 
       (.I0(\quotient_im_reg_n_0_[8] ),
        .O(\out_im[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[13]_i_1 
       (.I0(\quotient_im_reg_n_0_[12] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[13]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[14]_i_1 
       (.I0(\quotient_im_reg_n_0_[13] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[14]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[15]_i_1 
       (.I0(\quotient_im_reg_n_0_[14] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[15]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[16]_i_1 
       (.I0(\quotient_im_reg_n_0_[15] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[16]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[16]_i_3 
       (.I0(\quotient_im_reg_n_0_[15] ),
        .O(\out_im[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[16]_i_4 
       (.I0(\quotient_im_reg_n_0_[14] ),
        .O(\out_im[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[16]_i_5 
       (.I0(\quotient_im_reg_n_0_[13] ),
        .O(\out_im[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[16]_i_6 
       (.I0(\quotient_im_reg_n_0_[12] ),
        .O(\out_im[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[17]_i_1 
       (.I0(\quotient_im_reg_n_0_[16] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[17]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[18]_i_1 
       (.I0(\quotient_im_reg_n_0_[17] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[18]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[19]_i_1 
       (.I0(\quotient_im_reg_n_0_[18] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[19]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[1]_i_1 
       (.I0(\quotient_im_reg_n_0_[0] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[1]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[20]_i_1 
       (.I0(\quotient_im_reg_n_0_[19] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[20]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[20]_i_3 
       (.I0(\quotient_im_reg_n_0_[19] ),
        .O(\out_im[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[20]_i_4 
       (.I0(\quotient_im_reg_n_0_[18] ),
        .O(\out_im[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[20]_i_5 
       (.I0(\quotient_im_reg_n_0_[17] ),
        .O(\out_im[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[20]_i_6 
       (.I0(\quotient_im_reg_n_0_[16] ),
        .O(\out_im[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[21]_i_1 
       (.I0(\quotient_im_reg_n_0_[20] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[21]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[22]_i_1 
       (.I0(\quotient_im_reg_n_0_[21] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[22]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \out_im[23]_i_1 
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(\out_im_reg[23]_i_2_n_1 ),
        .O(\out_im[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[23]_i_3 
       (.I0(\quotient_im_reg_n_0_[21] ),
        .O(\out_im[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[23]_i_4 
       (.I0(\quotient_im_reg_n_0_[20] ),
        .O(\out_im[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[2]_i_1 
       (.I0(\quotient_im_reg_n_0_[1] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[2]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[3]_i_1 
       (.I0(\quotient_im_reg_n_0_[2] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[3]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[4]_i_1 
       (.I0(\quotient_im_reg_n_0_[3] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[4]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[4]_i_4 
       (.I0(\quotient_im_reg_n_0_[3] ),
        .O(\out_im[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[4]_i_5 
       (.I0(\quotient_im_reg_n_0_[2] ),
        .O(\out_im[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[4]_i_6 
       (.I0(\quotient_im_reg_n_0_[1] ),
        .O(\out_im[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[4]_i_7 
       (.I0(\quotient_im_reg_n_0_[0] ),
        .O(\out_im[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[5]_i_1 
       (.I0(\quotient_im_reg_n_0_[4] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[5]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[6]_i_1 
       (.I0(\quotient_im_reg_n_0_[5] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[6]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[7]_i_1 
       (.I0(\quotient_im_reg_n_0_[6] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[7]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[8]_i_1 
       (.I0(\quotient_im_reg_n_0_[7] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[8]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[8]_i_3 
       (.I0(\quotient_im_reg_n_0_[7] ),
        .O(\out_im[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[8]_i_4 
       (.I0(\quotient_im_reg_n_0_[6] ),
        .O(\out_im[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[8]_i_5 
       (.I0(\quotient_im_reg_n_0_[5] ),
        .O(\out_im[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_im[8]_i_6 
       (.I0(\quotient_im_reg_n_0_[4] ),
        .O(\out_im[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_im[9]_i_1 
       (.I0(\quotient_im_reg_n_0_[8] ),
        .I1(\cross_im_reg_n_0_[48] ),
        .I2(out_im1[9]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_im[9]_i_1_n_0 ));
  FDRE \out_im_reg[0] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[0]_i_1_n_0 ),
        .Q(D[24]),
        .R(rst_0));
  FDRE \out_im_reg[10] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[10]_i_1_n_0 ),
        .Q(D[34]),
        .R(rst_0));
  FDRE \out_im_reg[11] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[11]_i_1_n_0 ),
        .Q(D[35]),
        .R(rst_0));
  FDRE \out_im_reg[12] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[12]_i_1_n_0 ),
        .Q(D[36]),
        .R(rst_0));
  CARRY4 \out_im_reg[12]_i_2 
       (.CI(\out_im_reg[8]_i_2_n_0 ),
        .CO({\out_im_reg[12]_i_2_n_0 ,\out_im_reg[12]_i_2_n_1 ,\out_im_reg[12]_i_2_n_2 ,\out_im_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_im1[12:9]),
        .S({\out_im[12]_i_3_n_0 ,\out_im[12]_i_4_n_0 ,\out_im[12]_i_5_n_0 ,\out_im[12]_i_6_n_0 }));
  FDRE \out_im_reg[13] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[13]_i_1_n_0 ),
        .Q(D[37]),
        .R(rst_0));
  FDRE \out_im_reg[14] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[14]_i_1_n_0 ),
        .Q(D[38]),
        .R(rst_0));
  FDRE \out_im_reg[15] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[15]_i_1_n_0 ),
        .Q(D[39]),
        .R(rst_0));
  FDRE \out_im_reg[16] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[16]_i_1_n_0 ),
        .Q(D[40]),
        .R(rst_0));
  CARRY4 \out_im_reg[16]_i_2 
       (.CI(\out_im_reg[12]_i_2_n_0 ),
        .CO({\out_im_reg[16]_i_2_n_0 ,\out_im_reg[16]_i_2_n_1 ,\out_im_reg[16]_i_2_n_2 ,\out_im_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_im1[16:13]),
        .S({\out_im[16]_i_3_n_0 ,\out_im[16]_i_4_n_0 ,\out_im[16]_i_5_n_0 ,\out_im[16]_i_6_n_0 }));
  FDRE \out_im_reg[17] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[17]_i_1_n_0 ),
        .Q(D[41]),
        .R(rst_0));
  FDRE \out_im_reg[18] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[18]_i_1_n_0 ),
        .Q(D[42]),
        .R(rst_0));
  FDRE \out_im_reg[19] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[19]_i_1_n_0 ),
        .Q(D[43]),
        .R(rst_0));
  FDRE \out_im_reg[1] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[1]_i_1_n_0 ),
        .Q(D[25]),
        .R(rst_0));
  FDRE \out_im_reg[20] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[20]_i_1_n_0 ),
        .Q(D[44]),
        .R(rst_0));
  CARRY4 \out_im_reg[20]_i_2 
       (.CI(\out_im_reg[16]_i_2_n_0 ),
        .CO({\out_im_reg[20]_i_2_n_0 ,\out_im_reg[20]_i_2_n_1 ,\out_im_reg[20]_i_2_n_2 ,\out_im_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_im1[20:17]),
        .S({\out_im[20]_i_3_n_0 ,\out_im[20]_i_4_n_0 ,\out_im[20]_i_5_n_0 ,\out_im[20]_i_6_n_0 }));
  FDRE \out_im_reg[21] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[21]_i_1_n_0 ),
        .Q(D[45]),
        .R(rst_0));
  FDRE \out_im_reg[22] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[22]_i_1_n_0 ),
        .Q(D[46]),
        .R(rst_0));
  FDRE \out_im_reg[23] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[23]_i_1_n_0 ),
        .Q(D[47]),
        .R(rst_0));
  CARRY4 \out_im_reg[23]_i_2 
       (.CI(\out_im_reg[20]_i_2_n_0 ),
        .CO({\NLW_out_im_reg[23]_i_2_CO_UNCONNECTED [3],\out_im_reg[23]_i_2_n_1 ,\NLW_out_im_reg[23]_i_2_CO_UNCONNECTED [1],\out_im_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_im_reg[23]_i_2_O_UNCONNECTED [3:2],out_im1[22:21]}),
        .S({1'b0,1'b1,\out_im[23]_i_3_n_0 ,\out_im[23]_i_4_n_0 }));
  FDRE \out_im_reg[2] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[2]_i_1_n_0 ),
        .Q(D[26]),
        .R(rst_0));
  FDRE \out_im_reg[3] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[3]_i_1_n_0 ),
        .Q(D[27]),
        .R(rst_0));
  FDRE \out_im_reg[4] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[4]_i_1_n_0 ),
        .Q(D[28]),
        .R(rst_0));
  CARRY4 \out_im_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\out_im_reg[4]_i_2_n_0 ,\out_im_reg[4]_i_2_n_1 ,\out_im_reg[4]_i_2_n_2 ,\out_im_reg[4]_i_2_n_3 }),
        .CYINIT(\out_im_reg[4]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_im1[4:1]),
        .S({\out_im[4]_i_4_n_0 ,\out_im[4]_i_5_n_0 ,\out_im[4]_i_6_n_0 ,\out_im[4]_i_7_n_0 }));
  FDRE \out_im_reg[5] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[5]_i_1_n_0 ),
        .Q(D[29]),
        .R(rst_0));
  FDRE \out_im_reg[6] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[6]_i_1_n_0 ),
        .Q(D[30]),
        .R(rst_0));
  FDRE \out_im_reg[7] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[7]_i_1_n_0 ),
        .Q(D[31]),
        .R(rst_0));
  FDRE \out_im_reg[8] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[8]_i_1_n_0 ),
        .Q(D[32]),
        .R(rst_0));
  CARRY4 \out_im_reg[8]_i_2 
       (.CI(\out_im_reg[4]_i_2_n_0 ),
        .CO({\out_im_reg[8]_i_2_n_0 ,\out_im_reg[8]_i_2_n_1 ,\out_im_reg[8]_i_2_n_2 ,\out_im_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_im1[8:5]),
        .S({\out_im[8]_i_3_n_0 ,\out_im[8]_i_4_n_0 ,\out_im[8]_i_5_n_0 ,\out_im[8]_i_6_n_0 }));
  FDRE \out_im_reg[9] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_im[9]_i_1_n_0 ),
        .Q(D[33]),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_re[0]_i_1 
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(CO),
        .O(\out_re[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[10]_i_1 
       (.I0(p_0_in0_in[10]),
        .I1(cross_re[48]),
        .I2(out_re1[10]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[11]_i_1 
       (.I0(p_0_in0_in[11]),
        .I1(cross_re[48]),
        .I2(out_re1[11]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[12]_i_1 
       (.I0(p_0_in0_in[12]),
        .I1(cross_re[48]),
        .I2(out_re1[12]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[12]_i_3 
       (.I0(p_0_in0_in[12]),
        .O(\out_re[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[12]_i_4 
       (.I0(p_0_in0_in[11]),
        .O(\out_re[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[12]_i_5 
       (.I0(p_0_in0_in[10]),
        .O(\out_re[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[12]_i_6 
       (.I0(p_0_in0_in[9]),
        .O(\out_re[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[13]_i_1 
       (.I0(p_0_in0_in[13]),
        .I1(cross_re[48]),
        .I2(out_re1[13]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[14]_i_1 
       (.I0(p_0_in0_in[14]),
        .I1(cross_re[48]),
        .I2(out_re1[14]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[15]_i_1 
       (.I0(p_0_in0_in[15]),
        .I1(cross_re[48]),
        .I2(out_re1[15]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[16]_i_1 
       (.I0(p_0_in0_in[16]),
        .I1(cross_re[48]),
        .I2(out_re1[16]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[16]_i_3 
       (.I0(p_0_in0_in[16]),
        .O(\out_re[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[16]_i_4 
       (.I0(p_0_in0_in[15]),
        .O(\out_re[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[16]_i_5 
       (.I0(p_0_in0_in[14]),
        .O(\out_re[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[16]_i_6 
       (.I0(p_0_in0_in[13]),
        .O(\out_re[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[17]_i_1 
       (.I0(p_0_in0_in[17]),
        .I1(cross_re[48]),
        .I2(out_re1[17]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[18]_i_1 
       (.I0(p_0_in0_in[18]),
        .I1(cross_re[48]),
        .I2(out_re1[18]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[19]_i_1 
       (.I0(p_0_in0_in[19]),
        .I1(cross_re[48]),
        .I2(out_re1[19]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[1]_i_1 
       (.I0(p_0_in0_in[1]),
        .I1(cross_re[48]),
        .I2(out_re1[1]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[20]_i_1 
       (.I0(p_0_in0_in[20]),
        .I1(cross_re[48]),
        .I2(out_re1[20]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[20]_i_3 
       (.I0(p_0_in0_in[20]),
        .O(\out_re[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[20]_i_4 
       (.I0(p_0_in0_in[19]),
        .O(\out_re[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[20]_i_5 
       (.I0(p_0_in0_in[18]),
        .O(\out_re[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[20]_i_6 
       (.I0(p_0_in0_in[17]),
        .O(\out_re[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[21]_i_1 
       (.I0(p_0_in0_in[21]),
        .I1(cross_re[48]),
        .I2(out_re1[21]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[22]_i_1 
       (.I0(p_0_in0_in[22]),
        .I1(cross_re[48]),
        .I2(out_re1[22]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00470000)) 
    \out_re[23]_i_1 
       (.I0(\denominator[48]_i_3_n_0 ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\out_re[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \out_re[23]_i_2 
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(cross_re[48]),
        .I2(\out_re_reg[23]_i_3_n_1 ),
        .O(\out_re[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[23]_i_4 
       (.I0(p_0_in0_in[22]),
        .O(\out_re[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[23]_i_5 
       (.I0(p_0_in0_in[21]),
        .O(\out_re[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[2]_i_1 
       (.I0(p_0_in0_in[2]),
        .I1(cross_re[48]),
        .I2(out_re1[2]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[3]_i_1 
       (.I0(p_0_in0_in[3]),
        .I1(cross_re[48]),
        .I2(out_re1[3]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[4]_i_1 
       (.I0(p_0_in0_in[4]),
        .I1(cross_re[48]),
        .I2(out_re1[4]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[4]_i_4 
       (.I0(p_0_in0_in[4]),
        .O(\out_re[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[4]_i_5 
       (.I0(p_0_in0_in[3]),
        .O(\out_re[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[4]_i_6 
       (.I0(p_0_in0_in[2]),
        .O(\out_re[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[4]_i_7 
       (.I0(p_0_in0_in[1]),
        .O(\out_re[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[5]_i_1 
       (.I0(p_0_in0_in[5]),
        .I1(cross_re[48]),
        .I2(out_re1[5]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[6]_i_1 
       (.I0(p_0_in0_in[6]),
        .I1(cross_re[48]),
        .I2(out_re1[6]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[7]_i_1 
       (.I0(p_0_in0_in[7]),
        .I1(cross_re[48]),
        .I2(out_re1[7]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[8]_i_1 
       (.I0(p_0_in0_in[8]),
        .I1(cross_re[48]),
        .I2(out_re1[8]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[8]_i_3 
       (.I0(p_0_in0_in[8]),
        .O(\out_re[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[8]_i_4 
       (.I0(p_0_in0_in[7]),
        .O(\out_re[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[8]_i_5 
       (.I0(p_0_in0_in[6]),
        .O(\out_re[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_re[8]_i_6 
       (.I0(p_0_in0_in[5]),
        .O(\out_re[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_re[9]_i_1 
       (.I0(p_0_in0_in[9]),
        .I1(cross_re[48]),
        .I2(out_re1[9]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\out_re[9]_i_1_n_0 ));
  FDRE \out_re_reg[0] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(rst_0));
  FDRE \out_re_reg[10] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[10]_i_1_n_0 ),
        .Q(D[10]),
        .R(rst_0));
  FDRE \out_re_reg[11] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[11]_i_1_n_0 ),
        .Q(D[11]),
        .R(rst_0));
  FDRE \out_re_reg[12] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[12]_i_1_n_0 ),
        .Q(D[12]),
        .R(rst_0));
  CARRY4 \out_re_reg[12]_i_2 
       (.CI(\out_re_reg[8]_i_2_n_0 ),
        .CO({\out_re_reg[12]_i_2_n_0 ,\out_re_reg[12]_i_2_n_1 ,\out_re_reg[12]_i_2_n_2 ,\out_re_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_re1[12:9]),
        .S({\out_re[12]_i_3_n_0 ,\out_re[12]_i_4_n_0 ,\out_re[12]_i_5_n_0 ,\out_re[12]_i_6_n_0 }));
  FDRE \out_re_reg[13] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[13]_i_1_n_0 ),
        .Q(D[13]),
        .R(rst_0));
  FDRE \out_re_reg[14] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[14]_i_1_n_0 ),
        .Q(D[14]),
        .R(rst_0));
  FDRE \out_re_reg[15] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[15]_i_1_n_0 ),
        .Q(D[15]),
        .R(rst_0));
  FDRE \out_re_reg[16] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[16]_i_1_n_0 ),
        .Q(D[16]),
        .R(rst_0));
  CARRY4 \out_re_reg[16]_i_2 
       (.CI(\out_re_reg[12]_i_2_n_0 ),
        .CO({\out_re_reg[16]_i_2_n_0 ,\out_re_reg[16]_i_2_n_1 ,\out_re_reg[16]_i_2_n_2 ,\out_re_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_re1[16:13]),
        .S({\out_re[16]_i_3_n_0 ,\out_re[16]_i_4_n_0 ,\out_re[16]_i_5_n_0 ,\out_re[16]_i_6_n_0 }));
  FDRE \out_re_reg[17] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[17]_i_1_n_0 ),
        .Q(D[17]),
        .R(rst_0));
  FDRE \out_re_reg[18] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[18]_i_1_n_0 ),
        .Q(D[18]),
        .R(rst_0));
  FDRE \out_re_reg[19] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[19]_i_1_n_0 ),
        .Q(D[19]),
        .R(rst_0));
  FDRE \out_re_reg[1] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(rst_0));
  FDRE \out_re_reg[20] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[20]_i_1_n_0 ),
        .Q(D[20]),
        .R(rst_0));
  CARRY4 \out_re_reg[20]_i_2 
       (.CI(\out_re_reg[16]_i_2_n_0 ),
        .CO({\out_re_reg[20]_i_2_n_0 ,\out_re_reg[20]_i_2_n_1 ,\out_re_reg[20]_i_2_n_2 ,\out_re_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_re1[20:17]),
        .S({\out_re[20]_i_3_n_0 ,\out_re[20]_i_4_n_0 ,\out_re[20]_i_5_n_0 ,\out_re[20]_i_6_n_0 }));
  FDRE \out_re_reg[21] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[21]_i_1_n_0 ),
        .Q(D[21]),
        .R(rst_0));
  FDRE \out_re_reg[22] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[22]_i_1_n_0 ),
        .Q(D[22]),
        .R(rst_0));
  FDRE \out_re_reg[23] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[23]_i_2_n_0 ),
        .Q(D[23]),
        .R(rst_0));
  CARRY4 \out_re_reg[23]_i_3 
       (.CI(\out_re_reg[20]_i_2_n_0 ),
        .CO({\NLW_out_re_reg[23]_i_3_CO_UNCONNECTED [3],\out_re_reg[23]_i_3_n_1 ,\NLW_out_re_reg[23]_i_3_CO_UNCONNECTED [1],\out_re_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_re_reg[23]_i_3_O_UNCONNECTED [3:2],out_re1[22:21]}),
        .S({1'b0,1'b1,\out_re[23]_i_4_n_0 ,\out_re[23]_i_5_n_0 }));
  FDRE \out_re_reg[2] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(rst_0));
  FDRE \out_re_reg[3] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(rst_0));
  FDRE \out_re_reg[4] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(rst_0));
  CARRY4 \out_re_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\out_re_reg[4]_i_2_n_0 ,\out_re_reg[4]_i_2_n_1 ,\out_re_reg[4]_i_2_n_2 ,\out_re_reg[4]_i_2_n_3 }),
        .CYINIT(\out_re_reg[4]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_re1[4:1]),
        .S({\out_re[4]_i_4_n_0 ,\out_re[4]_i_5_n_0 ,\out_re[4]_i_6_n_0 ,\out_re[4]_i_7_n_0 }));
  FDRE \out_re_reg[5] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(rst_0));
  FDRE \out_re_reg[6] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(rst_0));
  FDRE \out_re_reg[7] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(rst_0));
  FDRE \out_re_reg[8] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(rst_0));
  CARRY4 \out_re_reg[8]_i_2 
       (.CI(\out_re_reg[4]_i_2_n_0 ),
        .CO({\out_re_reg[8]_i_2_n_0 ,\out_re_reg[8]_i_2_n_1 ,\out_re_reg[8]_i_2_n_2 ,\out_re_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_re1[8:5]),
        .S({\out_re[8]_i_3_n_0 ,\out_re[8]_i_4_n_0 ,\out_re[8]_i_5_n_0 ,\out_re[8]_i_6_n_0 }));
  FDRE \out_re_reg[9] 
       (.C(clk),
        .CE(\out_re[23]_i_1_n_0 ),
        .D(\out_re[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \quotient_im[0]_i_1 
       (.I0(\div_rem_im_reg[48]_0 ),
        .I1(\state_reg[0]_rep__1_n_0 ),
        .I2(\div_rem_im_reg[0]_i_3_n_3 ),
        .O(\quotient_im[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[10]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[9] ),
        .O(\quotient_im[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[11]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[10] ),
        .O(\quotient_im[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[12]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[11] ),
        .O(\quotient_im[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[13]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[12] ),
        .O(\quotient_im[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[14]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[13] ),
        .O(\quotient_im[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[15]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[14] ),
        .O(\quotient_im[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[16]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[15] ),
        .O(\quotient_im[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[17]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[16] ),
        .O(\quotient_im[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[18]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[17] ),
        .O(\quotient_im[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[19]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[18] ),
        .O(\quotient_im[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[1]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[0] ),
        .O(\quotient_im[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[20]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[19] ),
        .O(\quotient_im[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[21]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[20] ),
        .O(\quotient_im[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[2]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[1] ),
        .O(\quotient_im[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[3]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[2] ),
        .O(\quotient_im[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[4]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[3] ),
        .O(\quotient_im[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[5]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[4] ),
        .O(\quotient_im[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[6]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[5] ),
        .O(\quotient_im[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[7]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[6] ),
        .O(\quotient_im[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[8]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[7] ),
        .O(\quotient_im[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_im[9]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(\quotient_im_reg_n_0_[8] ),
        .O(\quotient_im[9]_i_1_n_0 ));
  FDRE \quotient_im_reg[0] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[0]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[0] ),
        .R(rst_0));
  FDRE \quotient_im_reg[10] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[10]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \quotient_im_reg[11] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[11]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[11] ),
        .R(rst_0));
  FDRE \quotient_im_reg[12] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[12]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \quotient_im_reg[13] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[13]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \quotient_im_reg[14] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[14]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \quotient_im_reg[15] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[15]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[15] ),
        .R(rst_0));
  FDRE \quotient_im_reg[16] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[16]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \quotient_im_reg[17] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[17]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[17] ),
        .R(rst_0));
  FDRE \quotient_im_reg[18] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[18]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[18] ),
        .R(rst_0));
  FDRE \quotient_im_reg[19] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[19]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[19] ),
        .R(rst_0));
  FDRE \quotient_im_reg[1] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[1]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \quotient_im_reg[20] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[20]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[20] ),
        .R(rst_0));
  FDRE \quotient_im_reg[21] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[21]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[21] ),
        .R(rst_0));
  FDRE \quotient_im_reg[2] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[2]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \quotient_im_reg[3] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[3]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[3] ),
        .R(rst_0));
  FDRE \quotient_im_reg[4] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[4]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \quotient_im_reg[5] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[5]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \quotient_im_reg[6] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[6]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \quotient_im_reg[7] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[7]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[7] ),
        .R(rst_0));
  FDRE \quotient_im_reg[8] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[8]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \quotient_im_reg[9] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_im[9]_i_1_n_0 ),
        .Q(\quotient_im_reg_n_0_[9] ),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \quotient_re[0]_i_1 
       (.I0(CO),
        .I1(\state_reg[0]_rep__1_n_0 ),
        .I2(\div_rem_re_reg[0]_i_3_n_3 ),
        .O(\quotient_re[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[10]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[10]),
        .O(\quotient_re[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[11]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[11]),
        .O(\quotient_re[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[12]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[12]),
        .O(\quotient_re[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[13]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[13]),
        .O(\quotient_re[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[14]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[14]),
        .O(\quotient_re[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[15]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[15]),
        .O(\quotient_re[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[16]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[16]),
        .O(\quotient_re[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[17]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[17]),
        .O(\quotient_re[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[18]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[18]),
        .O(\quotient_re[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[19]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[19]),
        .O(\quotient_re[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[1]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[1]),
        .O(\quotient_re[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[20]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[20]),
        .O(\quotient_re[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[21]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[21]),
        .O(\quotient_re[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[2]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[2]),
        .O(\quotient_re[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[3]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[3]),
        .O(\quotient_re[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[4]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[4]),
        .O(\quotient_re[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[5]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[5]),
        .O(\quotient_re[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[6]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[6]),
        .O(\quotient_re[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[7]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[7]),
        .O(\quotient_re[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[8]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[8]),
        .O(\quotient_re[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \quotient_re[9]_i_1 
       (.I0(\state_reg[0]_rep__1_n_0 ),
        .I1(p_0_in0_in[9]),
        .O(\quotient_re[9]_i_1_n_0 ));
  FDRE \quotient_re_reg[0] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[0]_i_1_n_0 ),
        .Q(p_0_in0_in[1]),
        .R(rst_0));
  FDRE \quotient_re_reg[10] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[10]_i_1_n_0 ),
        .Q(p_0_in0_in[11]),
        .R(rst_0));
  FDRE \quotient_re_reg[11] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[11]_i_1_n_0 ),
        .Q(p_0_in0_in[12]),
        .R(rst_0));
  FDRE \quotient_re_reg[12] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[12]_i_1_n_0 ),
        .Q(p_0_in0_in[13]),
        .R(rst_0));
  FDRE \quotient_re_reg[13] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[13]_i_1_n_0 ),
        .Q(p_0_in0_in[14]),
        .R(rst_0));
  FDRE \quotient_re_reg[14] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[14]_i_1_n_0 ),
        .Q(p_0_in0_in[15]),
        .R(rst_0));
  FDRE \quotient_re_reg[15] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[15]_i_1_n_0 ),
        .Q(p_0_in0_in[16]),
        .R(rst_0));
  FDRE \quotient_re_reg[16] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[16]_i_1_n_0 ),
        .Q(p_0_in0_in[17]),
        .R(rst_0));
  FDRE \quotient_re_reg[17] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[17]_i_1_n_0 ),
        .Q(p_0_in0_in[18]),
        .R(rst_0));
  FDRE \quotient_re_reg[18] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[18]_i_1_n_0 ),
        .Q(p_0_in0_in[19]),
        .R(rst_0));
  FDRE \quotient_re_reg[19] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[19]_i_1_n_0 ),
        .Q(p_0_in0_in[20]),
        .R(rst_0));
  FDRE \quotient_re_reg[1] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[1]_i_1_n_0 ),
        .Q(p_0_in0_in[2]),
        .R(rst_0));
  FDRE \quotient_re_reg[20] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[20]_i_1_n_0 ),
        .Q(p_0_in0_in[21]),
        .R(rst_0));
  FDRE \quotient_re_reg[21] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[21]_i_1_n_0 ),
        .Q(p_0_in0_in[22]),
        .R(rst_0));
  FDRE \quotient_re_reg[2] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[2]_i_1_n_0 ),
        .Q(p_0_in0_in[3]),
        .R(rst_0));
  FDRE \quotient_re_reg[3] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[3]_i_1_n_0 ),
        .Q(p_0_in0_in[4]),
        .R(rst_0));
  FDRE \quotient_re_reg[4] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[4]_i_1_n_0 ),
        .Q(p_0_in0_in[5]),
        .R(rst_0));
  FDRE \quotient_re_reg[5] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[5]_i_1_n_0 ),
        .Q(p_0_in0_in[6]),
        .R(rst_0));
  FDRE \quotient_re_reg[6] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[6]_i_1_n_0 ),
        .Q(p_0_in0_in[7]),
        .R(rst_0));
  FDRE \quotient_re_reg[7] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[7]_i_1_n_0 ),
        .Q(p_0_in0_in[8]),
        .R(rst_0));
  FDRE \quotient_re_reg[8] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[8]_i_1_n_0 ),
        .Q(p_0_in0_in[9]),
        .R(rst_0));
  FDRE \quotient_re_reg[9] 
       (.C(clk),
        .CE(quotient_im),
        .D(\quotient_re[9]_i_1_n_0 ),
        .Q(p_0_in0_in[10]),
        .R(rst_0));
  LUT2 #(
    .INIT(4'h2)) 
    \radicand[0]_i_1 
       (.I0(radicand00_in[0]),
        .I1(\state_reg[0]_rep_n_0 ),
        .O(\radicand[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[10]_i_1 
       (.I0(\radicand_reg_n_0_[8] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[10]),
        .O(\radicand[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[11]_i_1 
       (.I0(\radicand_reg_n_0_[9] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[11]),
        .O(\radicand[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[11]_i_3 
       (.I0(square_re__5_n_94),
        .I1(square_im__5_n_94),
        .O(\radicand[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[11]_i_4 
       (.I0(square_re__5_n_95),
        .I1(square_im__5_n_95),
        .O(\radicand[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[11]_i_5 
       (.I0(square_re__5_n_96),
        .I1(square_im__5_n_96),
        .O(\radicand[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[11]_i_6 
       (.I0(square_re__5_n_97),
        .I1(square_im__5_n_97),
        .O(\radicand[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[12]_i_1 
       (.I0(\radicand_reg_n_0_[10] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[12]),
        .O(\radicand[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[13]_i_1 
       (.I0(\radicand_reg_n_0_[11] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[13]),
        .O(\radicand[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[14]_i_1 
       (.I0(\radicand_reg_n_0_[12] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[14]),
        .O(\radicand[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[15]_i_1 
       (.I0(\radicand_reg_n_0_[13] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[15]),
        .O(\radicand[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[15]_i_3 
       (.I0(square_re__5_n_90),
        .I1(square_im__5_n_90),
        .O(\radicand[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[15]_i_4 
       (.I0(square_re__5_n_91),
        .I1(square_im__5_n_91),
        .O(\radicand[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[15]_i_5 
       (.I0(square_re__5_n_92),
        .I1(square_im__5_n_92),
        .O(\radicand[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[15]_i_6 
       (.I0(square_re__5_n_93),
        .I1(square_im__5_n_93),
        .O(\radicand[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[16]_i_1 
       (.I0(\radicand_reg_n_0_[14] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[16]),
        .O(\radicand[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[17]_i_1 
       (.I0(\radicand_reg_n_0_[15] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[17]),
        .O(\radicand[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[18]_i_1 
       (.I0(\radicand_reg_n_0_[16] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[18]),
        .O(\radicand[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[19]_i_1 
       (.I0(\radicand_reg_n_0_[17] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[19]),
        .O(\radicand[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[19]_i_3 
       (.I0(square_re__7_n_103),
        .I1(square_im__7_n_103),
        .O(\radicand[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[19]_i_4 
       (.I0(square_re__7_n_104),
        .I1(square_im__7_n_104),
        .O(\radicand[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[19]_i_5 
       (.I0(square_re__7_n_105),
        .I1(square_im__7_n_105),
        .O(\radicand[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[19]_i_6 
       (.I0(square_re__5_n_89),
        .I1(square_im__5_n_89),
        .O(\radicand[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \radicand[1]_i_1 
       (.I0(radicand00_in[1]),
        .I1(\state_reg[0]_rep_n_0 ),
        .O(\radicand[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[20]_i_1 
       (.I0(\radicand_reg_n_0_[18] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[20]),
        .O(\radicand[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[21]_i_1 
       (.I0(\radicand_reg_n_0_[19] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[21]),
        .O(\radicand[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[22]_i_1 
       (.I0(\radicand_reg_n_0_[20] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[22]),
        .O(\radicand[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[23]_i_1 
       (.I0(\radicand_reg_n_0_[21] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[23]),
        .O(\radicand[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[23]_i_3 
       (.I0(square_re__7_n_99),
        .I1(square_im__7_n_99),
        .O(\radicand[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[23]_i_4 
       (.I0(square_re__7_n_100),
        .I1(square_im__7_n_100),
        .O(\radicand[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[23]_i_5 
       (.I0(square_re__7_n_101),
        .I1(square_im__7_n_101),
        .O(\radicand[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[23]_i_6 
       (.I0(square_re__7_n_102),
        .I1(square_im__7_n_102),
        .O(\radicand[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[24]_i_1 
       (.I0(\radicand_reg_n_0_[22] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[24]),
        .O(\radicand[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[25]_i_1 
       (.I0(\radicand_reg_n_0_[23] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[25]),
        .O(\radicand[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[26]_i_1 
       (.I0(\radicand_reg_n_0_[24] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[26]),
        .O(\radicand[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[27]_i_1 
       (.I0(\radicand_reg_n_0_[25] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[27]),
        .O(\radicand[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[27]_i_3 
       (.I0(square_re__7_n_95),
        .I1(square_im__7_n_95),
        .O(\radicand[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[27]_i_4 
       (.I0(square_re__7_n_96),
        .I1(square_im__7_n_96),
        .O(\radicand[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[27]_i_5 
       (.I0(square_re__7_n_97),
        .I1(square_im__7_n_97),
        .O(\radicand[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[27]_i_6 
       (.I0(square_re__7_n_98),
        .I1(square_im__7_n_98),
        .O(\radicand[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[28]_i_1 
       (.I0(\radicand_reg_n_0_[26] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[28]),
        .O(\radicand[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[29]_i_1 
       (.I0(\radicand_reg_n_0_[27] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[29]),
        .O(\radicand[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[2]_i_1 
       (.I0(\radicand_reg_n_0_[0] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[2]),
        .O(\radicand[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[30]_i_1 
       (.I0(\radicand_reg_n_0_[28] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[30]),
        .O(\radicand[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[31]_i_1 
       (.I0(\radicand_reg_n_0_[29] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[31]),
        .O(\radicand[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[31]_i_3 
       (.I0(square_re__7_n_91),
        .I1(square_im__7_n_91),
        .O(\radicand[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[31]_i_4 
       (.I0(square_re__7_n_92),
        .I1(square_im__7_n_92),
        .O(\radicand[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[31]_i_5 
       (.I0(square_re__7_n_93),
        .I1(square_im__7_n_93),
        .O(\radicand[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[31]_i_6 
       (.I0(square_re__7_n_94),
        .I1(square_im__7_n_94),
        .O(\radicand[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[32]_i_1 
       (.I0(\radicand_reg_n_0_[30] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[32]),
        .O(\radicand[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[33]_i_1 
       (.I0(\radicand_reg_n_0_[31] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[33]),
        .O(\radicand[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[34]_i_1 
       (.I0(\radicand_reg_n_0_[32] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[34]),
        .O(\radicand[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[35]_i_1 
       (.I0(\radicand_reg_n_0_[33] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[35]),
        .O(\radicand[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[35]_i_3 
       (.I0(square_re__8[35]),
        .I1(square_im__8[35]),
        .O(\radicand[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[35]_i_4 
       (.I0(square_re__8[34]),
        .I1(square_im__8[34]),
        .O(\radicand[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[35]_i_5 
       (.I0(square_re__8[33]),
        .I1(square_im__8[33]),
        .O(\radicand[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[35]_i_6 
       (.I0(square_re__7_n_90),
        .I1(square_im__7_n_90),
        .O(\radicand[35]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[36]_i_1 
       (.I0(\radicand_reg_n_0_[34] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[36]),
        .O(\radicand[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[37]_i_1 
       (.I0(\radicand_reg_n_0_[35] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[37]),
        .O(\radicand[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[38]_i_1 
       (.I0(\radicand_reg_n_0_[36] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[38]),
        .O(\radicand[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[39]_i_1 
       (.I0(\radicand_reg_n_0_[37] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[39]),
        .O(\radicand[39]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_10 
       (.I0(square_re__7_n_88),
        .I1(square_re__4_n_105),
        .O(\radicand[39]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_12 
       (.I0(square_im__7_n_86),
        .I1(square_im__4_n_103),
        .O(\radicand[39]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_13 
       (.I0(square_im__7_n_87),
        .I1(square_im__4_n_104),
        .O(\radicand[39]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_14 
       (.I0(square_im__7_n_88),
        .I1(square_im__4_n_105),
        .O(\radicand[39]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_4 
       (.I0(square_re__8[39]),
        .I1(square_im__8[39]),
        .O(\radicand[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_5 
       (.I0(square_re__8[38]),
        .I1(square_im__8[38]),
        .O(\radicand[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_6 
       (.I0(square_re__8[37]),
        .I1(square_im__8[37]),
        .O(\radicand[39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_7 
       (.I0(square_re__8[36]),
        .I1(square_im__8[36]),
        .O(\radicand[39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_8 
       (.I0(square_re__7_n_86),
        .I1(square_re__4_n_103),
        .O(\radicand[39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[39]_i_9 
       (.I0(square_re__7_n_87),
        .I1(square_re__4_n_104),
        .O(\radicand[39]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[3]_i_1 
       (.I0(\radicand_reg_n_0_[1] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[3]),
        .O(\radicand[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[3]_i_3 
       (.I0(square_re__5_n_102),
        .I1(square_im__5_n_102),
        .O(\radicand[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[3]_i_4 
       (.I0(square_re__5_n_103),
        .I1(square_im__5_n_103),
        .O(\radicand[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[3]_i_5 
       (.I0(square_re__5_n_104),
        .I1(square_im__5_n_104),
        .O(\radicand[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[3]_i_6 
       (.I0(square_re__5_n_105),
        .I1(square_im__5_n_105),
        .O(\radicand[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[40]_i_1 
       (.I0(\radicand_reg_n_0_[38] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[40]),
        .O(\radicand[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[41]_i_1 
       (.I0(\radicand_reg_n_0_[39] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[41]),
        .O(\radicand[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[42]_i_1 
       (.I0(\radicand_reg_n_0_[40] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[42]),
        .O(\radicand[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[43]_i_1 
       (.I0(\radicand_reg_n_0_[41] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[43]),
        .O(\radicand[43]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_10 
       (.I0(square_re__7_n_84),
        .I1(square_re__4_n_101),
        .O(\radicand[43]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_11 
       (.I0(square_re__7_n_85),
        .I1(square_re__4_n_102),
        .O(\radicand[43]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_13 
       (.I0(square_im__7_n_82),
        .I1(square_im__4_n_99),
        .O(\radicand[43]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_14 
       (.I0(square_im__7_n_83),
        .I1(square_im__4_n_100),
        .O(\radicand[43]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_15 
       (.I0(square_im__7_n_84),
        .I1(square_im__4_n_101),
        .O(\radicand[43]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_16 
       (.I0(square_im__7_n_85),
        .I1(square_im__4_n_102),
        .O(\radicand[43]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_4 
       (.I0(square_re__8[43]),
        .I1(square_im__8[43]),
        .O(\radicand[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_5 
       (.I0(square_re__8[42]),
        .I1(square_im__8[42]),
        .O(\radicand[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_6 
       (.I0(square_re__8[41]),
        .I1(square_im__8[41]),
        .O(\radicand[43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_7 
       (.I0(square_re__8[40]),
        .I1(square_im__8[40]),
        .O(\radicand[43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_8 
       (.I0(square_re__7_n_82),
        .I1(square_re__4_n_99),
        .O(\radicand[43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[43]_i_9 
       (.I0(square_re__7_n_83),
        .I1(square_re__4_n_100),
        .O(\radicand[43]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[44]_i_1 
       (.I0(\radicand_reg_n_0_[42] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[44]),
        .O(\radicand[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[45]_i_1 
       (.I0(\radicand_reg_n_0_[43] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[45]),
        .O(\radicand[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[46]_i_1 
       (.I0(\radicand_reg_n_0_[44] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[46]),
        .O(\radicand[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[47]_i_1 
       (.I0(\radicand_reg_n_0_[45] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[47]),
        .O(\radicand[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_10 
       (.I0(square_re__7_n_80),
        .I1(square_re__4_n_97),
        .O(\radicand[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_11 
       (.I0(square_re__7_n_81),
        .I1(square_re__4_n_98),
        .O(\radicand[47]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_13 
       (.I0(square_im__7_n_78),
        .I1(square_im__4_n_95),
        .O(\radicand[47]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_14 
       (.I0(square_im__7_n_79),
        .I1(square_im__4_n_96),
        .O(\radicand[47]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_15 
       (.I0(square_im__7_n_80),
        .I1(square_im__4_n_97),
        .O(\radicand[47]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_16 
       (.I0(square_im__7_n_81),
        .I1(square_im__4_n_98),
        .O(\radicand[47]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_4 
       (.I0(square_re__8[47]),
        .I1(square_im__8[47]),
        .O(\radicand[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_5 
       (.I0(square_re__8[46]),
        .I1(square_im__8[46]),
        .O(\radicand[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_6 
       (.I0(square_re__8[45]),
        .I1(square_im__8[45]),
        .O(\radicand[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_7 
       (.I0(square_re__8[44]),
        .I1(square_im__8[44]),
        .O(\radicand[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_8 
       (.I0(square_re__7_n_78),
        .I1(square_re__4_n_95),
        .O(\radicand[47]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[47]_i_9 
       (.I0(square_re__7_n_79),
        .I1(square_re__4_n_96),
        .O(\radicand[47]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[48]_i_1 
       (.I0(\radicand_reg_n_0_[46] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[48]),
        .O(\radicand[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[49]_i_1 
       (.I0(\radicand_reg_n_0_[47] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[49]),
        .O(\radicand[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[4]_i_1 
       (.I0(\radicand_reg_n_0_[2] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[4]),
        .O(\radicand[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[50]_i_1 
       (.I0(\radicand_reg_n_0_[48] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[50]),
        .O(\radicand[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[51]_i_1 
       (.I0(\radicand_reg_n_0_[49] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[51]),
        .O(\radicand[51]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_10 
       (.I0(square_re__7_n_76),
        .I1(square_re__4_n_93),
        .O(\radicand[51]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_11 
       (.I0(square_re__7_n_77),
        .I1(square_re__4_n_94),
        .O(\radicand[51]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_13 
       (.I0(square_im__7_n_74),
        .I1(square_im__4_n_91),
        .O(\radicand[51]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_14 
       (.I0(square_im__7_n_75),
        .I1(square_im__4_n_92),
        .O(\radicand[51]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_15 
       (.I0(square_im__7_n_76),
        .I1(square_im__4_n_93),
        .O(\radicand[51]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_16 
       (.I0(square_im__7_n_77),
        .I1(square_im__4_n_94),
        .O(\radicand[51]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_4 
       (.I0(square_re__8[51]),
        .I1(square_im__8[51]),
        .O(\radicand[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_5 
       (.I0(square_re__8[50]),
        .I1(square_im__8[50]),
        .O(\radicand[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_6 
       (.I0(square_re__8[49]),
        .I1(square_im__8[49]),
        .O(\radicand[51]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_7 
       (.I0(square_re__8[48]),
        .I1(square_im__8[48]),
        .O(\radicand[51]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_8 
       (.I0(square_re__7_n_74),
        .I1(square_re__4_n_91),
        .O(\radicand[51]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[51]_i_9 
       (.I0(square_re__7_n_75),
        .I1(square_re__4_n_92),
        .O(\radicand[51]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[52]_i_1 
       (.I0(\radicand_reg_n_0_[50] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[52]),
        .O(\radicand[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[53]_i_1 
       (.I0(\radicand_reg_n_0_[51] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[53]),
        .O(\radicand[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[54]_i_1 
       (.I0(\radicand_reg_n_0_[52] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[54]),
        .O(\radicand[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[55]_i_1 
       (.I0(\radicand_reg_n_0_[53] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[55]),
        .O(\radicand[55]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[55]_i_10 
       (.I0(square_re__0_n_105),
        .I1(square_re__4_n_88),
        .I2(square_re__7_n_71),
        .O(\radicand[55]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_11 
       (.I0(square_re__7_n_72),
        .I1(square_re__4_n_89),
        .O(\radicand[55]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_12 
       (.I0(square_re__7_n_73),
        .I1(square_re__4_n_90),
        .O(\radicand[55]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[55]_i_14 
       (.I0(square_im__7_n_70),
        .I1(square_im__4_n_87),
        .I2(square_im__0_n_104),
        .O(\radicand[55]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \radicand[55]_i_15 
       (.I0(square_im__7_n_70),
        .I1(square_im__0_n_104),
        .I2(square_im__4_n_87),
        .I3(square_im__0_n_105),
        .I4(square_im__4_n_88),
        .O(\radicand[55]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[55]_i_16 
       (.I0(square_im__0_n_105),
        .I1(square_im__4_n_88),
        .I2(square_im__7_n_71),
        .O(\radicand[55]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_17 
       (.I0(square_im__7_n_72),
        .I1(square_im__4_n_89),
        .O(\radicand[55]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_18 
       (.I0(square_im__7_n_73),
        .I1(square_im__4_n_90),
        .O(\radicand[55]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_4 
       (.I0(square_re__8[55]),
        .I1(square_im__8[55]),
        .O(\radicand[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_5 
       (.I0(square_re__8[54]),
        .I1(square_im__8[54]),
        .O(\radicand[55]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_6 
       (.I0(square_re__8[53]),
        .I1(square_im__8[53]),
        .O(\radicand[55]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[55]_i_7 
       (.I0(square_re__8[52]),
        .I1(square_im__8[52]),
        .O(\radicand[55]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[55]_i_8 
       (.I0(square_re__7_n_70),
        .I1(square_re__4_n_87),
        .I2(square_re__0_n_104),
        .O(\radicand[55]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \radicand[55]_i_9 
       (.I0(square_re__7_n_70),
        .I1(square_re__0_n_104),
        .I2(square_re__4_n_87),
        .I3(square_re__0_n_105),
        .I4(square_re__4_n_88),
        .O(\radicand[55]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[56]_i_1 
       (.I0(\radicand_reg_n_0_[54] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[56]),
        .O(\radicand[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[57]_i_1 
       (.I0(\radicand_reg_n_0_[55] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[57]),
        .O(\radicand[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[58]_i_1 
       (.I0(\radicand_reg_n_0_[56] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[58]),
        .O(\radicand[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[59]_i_1 
       (.I0(\radicand_reg_n_0_[57] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[59]),
        .O(\radicand[59]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_10 
       (.I0(square_re__0_n_103),
        .I1(square_re__7_n_69),
        .I2(square_re__4_n_86),
        .O(\radicand[59]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_11 
       (.I0(square_re__7_n_70),
        .I1(square_re__0_n_104),
        .I2(square_re__4_n_87),
        .O(\radicand[59]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_12 
       (.I0(square_re__0_n_100),
        .I1(square_re__7_n_66),
        .I2(square_re__4_n_83),
        .I3(\radicand[59]_i_8_n_0 ),
        .O(\radicand[59]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_13 
       (.I0(square_re__0_n_101),
        .I1(square_re__7_n_67),
        .I2(square_re__4_n_84),
        .I3(\radicand[59]_i_9_n_0 ),
        .O(\radicand[59]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_14 
       (.I0(square_re__0_n_102),
        .I1(square_re__7_n_68),
        .I2(square_re__4_n_85),
        .I3(\radicand[59]_i_10_n_0 ),
        .O(\radicand[59]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_15 
       (.I0(square_re__0_n_103),
        .I1(square_re__7_n_69),
        .I2(square_re__4_n_86),
        .I3(\radicand[59]_i_11_n_0 ),
        .O(\radicand[59]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_17 
       (.I0(square_im__0_n_101),
        .I1(square_im__7_n_67),
        .I2(square_im__4_n_84),
        .O(\radicand[59]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_18 
       (.I0(square_im__0_n_102),
        .I1(square_im__7_n_68),
        .I2(square_im__4_n_85),
        .O(\radicand[59]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_19 
       (.I0(square_im__0_n_103),
        .I1(square_im__7_n_69),
        .I2(square_im__4_n_86),
        .O(\radicand[59]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_20 
       (.I0(square_im__7_n_70),
        .I1(square_im__0_n_104),
        .I2(square_im__4_n_87),
        .O(\radicand[59]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_21 
       (.I0(square_im__0_n_100),
        .I1(square_im__7_n_66),
        .I2(square_im__4_n_83),
        .I3(\radicand[59]_i_17_n_0 ),
        .O(\radicand[59]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_22 
       (.I0(square_im__0_n_101),
        .I1(square_im__7_n_67),
        .I2(square_im__4_n_84),
        .I3(\radicand[59]_i_18_n_0 ),
        .O(\radicand[59]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_23 
       (.I0(square_im__0_n_102),
        .I1(square_im__7_n_68),
        .I2(square_im__4_n_85),
        .I3(\radicand[59]_i_19_n_0 ),
        .O(\radicand[59]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[59]_i_24 
       (.I0(square_im__0_n_103),
        .I1(square_im__7_n_69),
        .I2(square_im__4_n_86),
        .I3(\radicand[59]_i_20_n_0 ),
        .O(\radicand[59]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[59]_i_4 
       (.I0(square_re__8[59]),
        .I1(square_im__8[59]),
        .O(\radicand[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[59]_i_5 
       (.I0(square_re__8[58]),
        .I1(square_im__8[58]),
        .O(\radicand[59]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[59]_i_6 
       (.I0(square_re__8[57]),
        .I1(square_im__8[57]),
        .O(\radicand[59]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[59]_i_7 
       (.I0(square_re__8[56]),
        .I1(square_im__8[56]),
        .O(\radicand[59]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_8 
       (.I0(square_re__0_n_101),
        .I1(square_re__7_n_67),
        .I2(square_re__4_n_84),
        .O(\radicand[59]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[59]_i_9 
       (.I0(square_re__0_n_102),
        .I1(square_re__7_n_68),
        .I2(square_re__4_n_85),
        .O(\radicand[59]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[5]_i_1 
       (.I0(\radicand_reg_n_0_[3] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[5]),
        .O(\radicand[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[60]_i_1 
       (.I0(\radicand_reg_n_0_[58] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[60]),
        .O(\radicand[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[61]_i_1 
       (.I0(\radicand_reg_n_0_[59] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[61]),
        .O(\radicand[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[62]_i_1 
       (.I0(\radicand_reg_n_0_[60] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[62]),
        .O(\radicand[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[63]_i_1 
       (.I0(\radicand_reg_n_0_[61] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[63]),
        .O(\radicand[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_10 
       (.I0(square_re__0_n_99),
        .I1(square_re__7_n_65),
        .I2(square_re__4_n_82),
        .O(\radicand[63]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_11 
       (.I0(square_re__0_n_100),
        .I1(square_re__7_n_66),
        .I2(square_re__4_n_83),
        .O(\radicand[63]_i_11_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_12 
       (.I0(square_re__0_n_96),
        .I1(square_re__7_n_62),
        .I2(square_re__4_n_79),
        .I3(\radicand[63]_i_8_n_0 ),
        .O(\radicand[63]_i_12_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_13 
       (.I0(square_re__0_n_97),
        .I1(square_re__7_n_63),
        .I2(square_re__4_n_80),
        .I3(\radicand[63]_i_9_n_0 ),
        .O(\radicand[63]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_14 
       (.I0(square_re__0_n_98),
        .I1(square_re__7_n_64),
        .I2(square_re__4_n_81),
        .I3(\radicand[63]_i_10_n_0 ),
        .O(\radicand[63]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_15 
       (.I0(square_re__0_n_99),
        .I1(square_re__7_n_65),
        .I2(square_re__4_n_82),
        .I3(\radicand[63]_i_11_n_0 ),
        .O(\radicand[63]_i_15_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_17 
       (.I0(square_im__0_n_97),
        .I1(square_im__7_n_63),
        .I2(square_im__4_n_80),
        .O(\radicand[63]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_18 
       (.I0(square_im__0_n_98),
        .I1(square_im__7_n_64),
        .I2(square_im__4_n_81),
        .O(\radicand[63]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_19 
       (.I0(square_im__0_n_99),
        .I1(square_im__7_n_65),
        .I2(square_im__4_n_82),
        .O(\radicand[63]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_20 
       (.I0(square_im__0_n_100),
        .I1(square_im__7_n_66),
        .I2(square_im__4_n_83),
        .O(\radicand[63]_i_20_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_21 
       (.I0(square_im__0_n_96),
        .I1(square_im__7_n_62),
        .I2(square_im__4_n_79),
        .I3(\radicand[63]_i_17_n_0 ),
        .O(\radicand[63]_i_21_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_22 
       (.I0(square_im__0_n_97),
        .I1(square_im__7_n_63),
        .I2(square_im__4_n_80),
        .I3(\radicand[63]_i_18_n_0 ),
        .O(\radicand[63]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_23 
       (.I0(square_im__0_n_98),
        .I1(square_im__7_n_64),
        .I2(square_im__4_n_81),
        .I3(\radicand[63]_i_19_n_0 ),
        .O(\radicand[63]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[63]_i_24 
       (.I0(square_im__0_n_99),
        .I1(square_im__7_n_65),
        .I2(square_im__4_n_82),
        .I3(\radicand[63]_i_20_n_0 ),
        .O(\radicand[63]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[63]_i_4 
       (.I0(square_re__8[63]),
        .I1(square_im__8[63]),
        .O(\radicand[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[63]_i_5 
       (.I0(square_re__8[62]),
        .I1(square_im__8[62]),
        .O(\radicand[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[63]_i_6 
       (.I0(square_re__8[61]),
        .I1(square_im__8[61]),
        .O(\radicand[63]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[63]_i_7 
       (.I0(square_re__8[60]),
        .I1(square_im__8[60]),
        .O(\radicand[63]_i_7_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_8 
       (.I0(square_re__0_n_97),
        .I1(square_re__7_n_63),
        .I2(square_re__4_n_80),
        .O(\radicand[63]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[63]_i_9 
       (.I0(square_re__0_n_98),
        .I1(square_re__7_n_64),
        .I2(square_re__4_n_81),
        .O(\radicand[63]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[64]_i_1 
       (.I0(\radicand_reg_n_0_[62] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[64]),
        .O(\radicand[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[65]_i_1 
       (.I0(\radicand_reg_n_0_[63] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[65]),
        .O(\radicand[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[66]_i_1 
       (.I0(\radicand_reg_n_0_[64] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[66]),
        .O(\radicand[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[67]_i_1 
       (.I0(\radicand_reg_n_0_[65] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[67]),
        .O(\radicand[67]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_10 
       (.I0(square_re__0_n_95),
        .I1(square_re__7_n_61),
        .I2(square_re__4_n_78),
        .O(\radicand[67]_i_10_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_11 
       (.I0(square_re__0_n_96),
        .I1(square_re__7_n_62),
        .I2(square_re__4_n_79),
        .O(\radicand[67]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \radicand[67]_i_12 
       (.I0(square_re__0_n_92),
        .I1(square_re__4_n_75),
        .I2(square_re__7_n_58),
        .I3(square_re__4_n_76),
        .I4(square_re__7_n_59),
        .I5(square_re__0_n_93),
        .O(\radicand[67]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_13 
       (.I0(\radicand[67]_i_9_n_0 ),
        .I1(square_re__0_n_93),
        .I2(square_re__7_n_59),
        .I3(square_re__4_n_76),
        .O(\radicand[67]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_14 
       (.I0(square_re__0_n_94),
        .I1(square_re__7_n_60),
        .I2(square_re__4_n_77),
        .I3(\radicand[67]_i_10_n_0 ),
        .O(\radicand[67]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_15 
       (.I0(square_re__0_n_95),
        .I1(square_re__7_n_61),
        .I2(square_re__4_n_78),
        .I3(\radicand[67]_i_11_n_0 ),
        .O(\radicand[67]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[67]_i_17 
       (.I0(square_im__7_n_58),
        .I1(square_im__4_n_75),
        .I2(square_im__0_n_92),
        .O(\radicand[67]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_18 
       (.I0(square_im__0_n_94),
        .I1(square_im__7_n_60),
        .I2(square_im__4_n_77),
        .O(\radicand[67]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_19 
       (.I0(square_im__0_n_95),
        .I1(square_im__7_n_61),
        .I2(square_im__4_n_78),
        .O(\radicand[67]_i_19_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_20 
       (.I0(square_im__0_n_96),
        .I1(square_im__7_n_62),
        .I2(square_im__4_n_79),
        .O(\radicand[67]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \radicand[67]_i_21 
       (.I0(square_im__0_n_92),
        .I1(square_im__4_n_75),
        .I2(square_im__7_n_58),
        .I3(square_im__4_n_76),
        .I4(square_im__7_n_59),
        .I5(square_im__0_n_93),
        .O(\radicand[67]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_22 
       (.I0(\radicand[67]_i_18_n_0 ),
        .I1(square_im__0_n_93),
        .I2(square_im__7_n_59),
        .I3(square_im__4_n_76),
        .O(\radicand[67]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_23 
       (.I0(square_im__0_n_94),
        .I1(square_im__7_n_60),
        .I2(square_im__4_n_77),
        .I3(\radicand[67]_i_19_n_0 ),
        .O(\radicand[67]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \radicand[67]_i_24 
       (.I0(square_im__0_n_95),
        .I1(square_im__7_n_61),
        .I2(square_im__4_n_78),
        .I3(\radicand[67]_i_20_n_0 ),
        .O(\radicand[67]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[67]_i_4 
       (.I0(square_re__8[67]),
        .I1(square_im__8[67]),
        .O(\radicand[67]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[67]_i_5 
       (.I0(square_re__8[66]),
        .I1(square_im__8[66]),
        .O(\radicand[67]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[67]_i_6 
       (.I0(square_re__8[65]),
        .I1(square_im__8[65]),
        .O(\radicand[67]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[67]_i_7 
       (.I0(square_re__8[64]),
        .I1(square_im__8[64]),
        .O(\radicand[67]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \radicand[67]_i_8 
       (.I0(square_re__7_n_58),
        .I1(square_re__4_n_75),
        .I2(square_re__0_n_92),
        .O(\radicand[67]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \radicand[67]_i_9 
       (.I0(square_re__0_n_94),
        .I1(square_re__7_n_60),
        .I2(square_re__4_n_77),
        .O(\radicand[67]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[68]_i_1 
       (.I0(\radicand_reg_n_0_[66] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[68]),
        .O(\radicand[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[69]_i_1 
       (.I0(\radicand_reg_n_0_[67] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[69]),
        .O(\radicand[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[6]_i_1 
       (.I0(\radicand_reg_n_0_[4] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[6]),
        .O(\radicand[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[70]_i_1 
       (.I0(\radicand_reg_n_0_[68] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[70]),
        .O(\radicand[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[71]_i_1 
       (.I0(\radicand_reg_n_0_[69] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(radicand00_in[71]),
        .O(\radicand[71]_i_1_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_10 
       (.I0(square_re__4_n_75),
        .I1(square_re__0_n_92),
        .I2(square_re__4_n_74),
        .I3(square_re__0_n_91),
        .O(\radicand[71]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \radicand[71]_i_11 
       (.I0(square_re__7_n_58),
        .I1(square_re__4_n_75),
        .I2(square_re__0_n_92),
        .O(\radicand[71]_i_11_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_12 
       (.I0(square_re__4_n_72),
        .I1(square_re__0_n_89),
        .I2(square_re__4_n_71),
        .I3(square_re__1_n_105),
        .I4(\radicand[71]_i_8_n_0 ),
        .O(\radicand[71]_i_12_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_13 
       (.I0(square_re__4_n_73),
        .I1(square_re__0_n_90),
        .I2(square_re__4_n_72),
        .I3(square_re__0_n_89),
        .I4(\radicand[71]_i_9_n_0 ),
        .O(\radicand[71]_i_13_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_14 
       (.I0(square_re__4_n_74),
        .I1(square_re__0_n_91),
        .I2(square_re__4_n_73),
        .I3(square_re__0_n_90),
        .I4(\radicand[71]_i_10_n_0 ),
        .O(\radicand[71]_i_14_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_15 
       (.I0(square_re__4_n_75),
        .I1(square_re__0_n_92),
        .I2(square_re__4_n_74),
        .I3(square_re__0_n_91),
        .I4(\radicand[71]_i_11_n_0 ),
        .O(\radicand[71]_i_15_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_17 
       (.I0(square_im__4_n_73),
        .I1(square_im__0_n_90),
        .I2(square_im__4_n_72),
        .I3(square_im__0_n_89),
        .O(\radicand[71]_i_17_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_18 
       (.I0(square_im__4_n_74),
        .I1(square_im__0_n_91),
        .I2(square_im__4_n_73),
        .I3(square_im__0_n_90),
        .O(\radicand[71]_i_18_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_19 
       (.I0(square_im__4_n_75),
        .I1(square_im__0_n_92),
        .I2(square_im__4_n_74),
        .I3(square_im__0_n_91),
        .O(\radicand[71]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \radicand[71]_i_20 
       (.I0(square_im__7_n_58),
        .I1(square_im__4_n_75),
        .I2(square_im__0_n_92),
        .O(\radicand[71]_i_20_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_21 
       (.I0(square_im__4_n_72),
        .I1(square_im__0_n_89),
        .I2(square_im__4_n_71),
        .I3(square_im__1_n_105),
        .I4(\radicand[71]_i_17_n_0 ),
        .O(\radicand[71]_i_21_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_22 
       (.I0(square_im__4_n_73),
        .I1(square_im__0_n_90),
        .I2(square_im__4_n_72),
        .I3(square_im__0_n_89),
        .I4(\radicand[71]_i_18_n_0 ),
        .O(\radicand[71]_i_22_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_23 
       (.I0(square_im__4_n_74),
        .I1(square_im__0_n_91),
        .I2(square_im__4_n_73),
        .I3(square_im__0_n_90),
        .I4(\radicand[71]_i_19_n_0 ),
        .O(\radicand[71]_i_23_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[71]_i_24 
       (.I0(square_im__4_n_75),
        .I1(square_im__0_n_92),
        .I2(square_im__4_n_74),
        .I3(square_im__0_n_91),
        .I4(\radicand[71]_i_20_n_0 ),
        .O(\radicand[71]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[71]_i_4 
       (.I0(square_re__8[71]),
        .I1(square_im__8[71]),
        .O(\radicand[71]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[71]_i_5 
       (.I0(square_re__8[70]),
        .I1(square_im__8[70]),
        .O(\radicand[71]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[71]_i_6 
       (.I0(square_re__8[69]),
        .I1(square_im__8[69]),
        .O(\radicand[71]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[71]_i_7 
       (.I0(square_re__8[68]),
        .I1(square_im__8[68]),
        .O(\radicand[71]_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_8 
       (.I0(square_re__4_n_73),
        .I1(square_re__0_n_90),
        .I2(square_re__4_n_72),
        .I3(square_re__0_n_89),
        .O(\radicand[71]_i_8_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[71]_i_9 
       (.I0(square_re__4_n_74),
        .I1(square_re__0_n_91),
        .I2(square_re__4_n_73),
        .I3(square_re__0_n_90),
        .O(\radicand[71]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[72]_i_1 
       (.I0(\radicand_reg_n_0_[70] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[72]),
        .O(\radicand[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[73]_i_1 
       (.I0(\radicand_reg_n_0_[71] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[73]),
        .O(\radicand[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[74]_i_1 
       (.I0(\radicand_reg_n_0_[72] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[74]),
        .O(\radicand[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[75]_i_1 
       (.I0(\radicand_reg_n_0_[73] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[75]),
        .O(\radicand[75]_i_1_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_10 
       (.I0(square_re__4_n_71),
        .I1(square_re__1_n_105),
        .I2(square_re__4_n_70),
        .I3(square_re__1_n_104),
        .O(\radicand[75]_i_10_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_11 
       (.I0(square_re__4_n_72),
        .I1(square_re__0_n_89),
        .I2(square_re__4_n_71),
        .I3(square_re__1_n_105),
        .O(\radicand[75]_i_11_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_12 
       (.I0(square_re__4_n_68),
        .I1(square_re__1_n_102),
        .I2(square_re__4_n_67),
        .I3(square_re__1_n_101),
        .I4(\radicand[75]_i_8_n_0 ),
        .O(\radicand[75]_i_12_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_13 
       (.I0(square_re__4_n_69),
        .I1(square_re__1_n_103),
        .I2(square_re__4_n_68),
        .I3(square_re__1_n_102),
        .I4(\radicand[75]_i_9_n_0 ),
        .O(\radicand[75]_i_13_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_14 
       (.I0(square_re__4_n_70),
        .I1(square_re__1_n_104),
        .I2(square_re__4_n_69),
        .I3(square_re__1_n_103),
        .I4(\radicand[75]_i_10_n_0 ),
        .O(\radicand[75]_i_14_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_15 
       (.I0(square_re__4_n_71),
        .I1(square_re__1_n_105),
        .I2(square_re__4_n_70),
        .I3(square_re__1_n_104),
        .I4(\radicand[75]_i_11_n_0 ),
        .O(\radicand[75]_i_15_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_17 
       (.I0(square_im__4_n_69),
        .I1(square_im__1_n_103),
        .I2(square_im__4_n_68),
        .I3(square_im__1_n_102),
        .O(\radicand[75]_i_17_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_18 
       (.I0(square_im__4_n_70),
        .I1(square_im__1_n_104),
        .I2(square_im__4_n_69),
        .I3(square_im__1_n_103),
        .O(\radicand[75]_i_18_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_19 
       (.I0(square_im__4_n_71),
        .I1(square_im__1_n_105),
        .I2(square_im__4_n_70),
        .I3(square_im__1_n_104),
        .O(\radicand[75]_i_19_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_20 
       (.I0(square_im__4_n_72),
        .I1(square_im__0_n_89),
        .I2(square_im__4_n_71),
        .I3(square_im__1_n_105),
        .O(\radicand[75]_i_20_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_21 
       (.I0(square_im__4_n_68),
        .I1(square_im__1_n_102),
        .I2(square_im__4_n_67),
        .I3(square_im__1_n_101),
        .I4(\radicand[75]_i_17_n_0 ),
        .O(\radicand[75]_i_21_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_22 
       (.I0(square_im__4_n_69),
        .I1(square_im__1_n_103),
        .I2(square_im__4_n_68),
        .I3(square_im__1_n_102),
        .I4(\radicand[75]_i_18_n_0 ),
        .O(\radicand[75]_i_22_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_23 
       (.I0(square_im__4_n_70),
        .I1(square_im__1_n_104),
        .I2(square_im__4_n_69),
        .I3(square_im__1_n_103),
        .I4(\radicand[75]_i_19_n_0 ),
        .O(\radicand[75]_i_23_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[75]_i_24 
       (.I0(square_im__4_n_71),
        .I1(square_im__1_n_105),
        .I2(square_im__4_n_70),
        .I3(square_im__1_n_104),
        .I4(\radicand[75]_i_20_n_0 ),
        .O(\radicand[75]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[75]_i_4 
       (.I0(square_re__8[75]),
        .I1(square_im__8[75]),
        .O(\radicand[75]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[75]_i_5 
       (.I0(square_re__8[74]),
        .I1(square_im__8[74]),
        .O(\radicand[75]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[75]_i_6 
       (.I0(square_re__8[73]),
        .I1(square_im__8[73]),
        .O(\radicand[75]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[75]_i_7 
       (.I0(square_re__8[72]),
        .I1(square_im__8[72]),
        .O(\radicand[75]_i_7_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_8 
       (.I0(square_re__4_n_69),
        .I1(square_re__1_n_103),
        .I2(square_re__4_n_68),
        .I3(square_re__1_n_102),
        .O(\radicand[75]_i_8_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[75]_i_9 
       (.I0(square_re__4_n_70),
        .I1(square_re__1_n_104),
        .I2(square_re__4_n_69),
        .I3(square_re__1_n_103),
        .O(\radicand[75]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[76]_i_1 
       (.I0(\radicand_reg_n_0_[74] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[76]),
        .O(\radicand[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[77]_i_1 
       (.I0(\radicand_reg_n_0_[75] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[77]),
        .O(\radicand[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[78]_i_1 
       (.I0(\radicand_reg_n_0_[76] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[78]),
        .O(\radicand[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[79]_i_1 
       (.I0(\radicand_reg_n_0_[77] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[79]),
        .O(\radicand[79]_i_1_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_10 
       (.I0(square_re__4_n_67),
        .I1(square_re__1_n_101),
        .I2(square_re__4_n_66),
        .I3(square_re__1_n_100),
        .O(\radicand[79]_i_10_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_11 
       (.I0(square_re__4_n_68),
        .I1(square_re__1_n_102),
        .I2(square_re__4_n_67),
        .I3(square_re__1_n_101),
        .O(\radicand[79]_i_11_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_12 
       (.I0(square_re__4_n_64),
        .I1(square_re__1_n_98),
        .I2(square_re__4_n_63),
        .I3(square_re__1_n_97),
        .I4(\radicand[79]_i_8_n_0 ),
        .O(\radicand[79]_i_12_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_13 
       (.I0(square_re__4_n_65),
        .I1(square_re__1_n_99),
        .I2(square_re__4_n_64),
        .I3(square_re__1_n_98),
        .I4(\radicand[79]_i_9_n_0 ),
        .O(\radicand[79]_i_13_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_14 
       (.I0(square_re__4_n_66),
        .I1(square_re__1_n_100),
        .I2(square_re__4_n_65),
        .I3(square_re__1_n_99),
        .I4(\radicand[79]_i_10_n_0 ),
        .O(\radicand[79]_i_14_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_15 
       (.I0(square_re__4_n_67),
        .I1(square_re__1_n_101),
        .I2(square_re__4_n_66),
        .I3(square_re__1_n_100),
        .I4(\radicand[79]_i_11_n_0 ),
        .O(\radicand[79]_i_15_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_17 
       (.I0(square_im__4_n_65),
        .I1(square_im__1_n_99),
        .I2(square_im__4_n_64),
        .I3(square_im__1_n_98),
        .O(\radicand[79]_i_17_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_18 
       (.I0(square_im__4_n_66),
        .I1(square_im__1_n_100),
        .I2(square_im__4_n_65),
        .I3(square_im__1_n_99),
        .O(\radicand[79]_i_18_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_19 
       (.I0(square_im__4_n_67),
        .I1(square_im__1_n_101),
        .I2(square_im__4_n_66),
        .I3(square_im__1_n_100),
        .O(\radicand[79]_i_19_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_20 
       (.I0(square_im__4_n_68),
        .I1(square_im__1_n_102),
        .I2(square_im__4_n_67),
        .I3(square_im__1_n_101),
        .O(\radicand[79]_i_20_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_21 
       (.I0(square_im__4_n_64),
        .I1(square_im__1_n_98),
        .I2(square_im__4_n_63),
        .I3(square_im__1_n_97),
        .I4(\radicand[79]_i_17_n_0 ),
        .O(\radicand[79]_i_21_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_22 
       (.I0(square_im__4_n_65),
        .I1(square_im__1_n_99),
        .I2(square_im__4_n_64),
        .I3(square_im__1_n_98),
        .I4(\radicand[79]_i_18_n_0 ),
        .O(\radicand[79]_i_22_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_23 
       (.I0(square_im__4_n_66),
        .I1(square_im__1_n_100),
        .I2(square_im__4_n_65),
        .I3(square_im__1_n_99),
        .I4(\radicand[79]_i_19_n_0 ),
        .O(\radicand[79]_i_23_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[79]_i_24 
       (.I0(square_im__4_n_67),
        .I1(square_im__1_n_101),
        .I2(square_im__4_n_66),
        .I3(square_im__1_n_100),
        .I4(\radicand[79]_i_20_n_0 ),
        .O(\radicand[79]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[79]_i_4 
       (.I0(square_re__8[79]),
        .I1(square_im__8[79]),
        .O(\radicand[79]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[79]_i_5 
       (.I0(square_re__8[78]),
        .I1(square_im__8[78]),
        .O(\radicand[79]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[79]_i_6 
       (.I0(square_re__8[77]),
        .I1(square_im__8[77]),
        .O(\radicand[79]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[79]_i_7 
       (.I0(square_re__8[76]),
        .I1(square_im__8[76]),
        .O(\radicand[79]_i_7_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_8 
       (.I0(square_re__4_n_65),
        .I1(square_re__1_n_99),
        .I2(square_re__4_n_64),
        .I3(square_re__1_n_98),
        .O(\radicand[79]_i_8_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[79]_i_9 
       (.I0(square_re__4_n_66),
        .I1(square_re__1_n_100),
        .I2(square_re__4_n_65),
        .I3(square_re__1_n_99),
        .O(\radicand[79]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[7]_i_1 
       (.I0(\radicand_reg_n_0_[5] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[7]),
        .O(\radicand[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[7]_i_3 
       (.I0(square_re__5_n_98),
        .I1(square_im__5_n_98),
        .O(\radicand[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[7]_i_4 
       (.I0(square_re__5_n_99),
        .I1(square_im__5_n_99),
        .O(\radicand[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[7]_i_5 
       (.I0(square_re__5_n_100),
        .I1(square_im__5_n_100),
        .O(\radicand[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[7]_i_6 
       (.I0(square_re__5_n_101),
        .I1(square_im__5_n_101),
        .O(\radicand[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[80]_i_1 
       (.I0(\radicand_reg_n_0_[78] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[80]),
        .O(\radicand[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[81]_i_1 
       (.I0(\radicand_reg_n_0_[79] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[81]),
        .O(\radicand[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[82]_i_1 
       (.I0(\radicand_reg_n_0_[80] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[82]),
        .O(\radicand[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[83]_i_1 
       (.I0(\radicand_reg_n_0_[81] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[83]),
        .O(\radicand[83]_i_1_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_10 
       (.I0(square_re__4_n_63),
        .I1(square_re__1_n_97),
        .I2(square_re__4_n_62),
        .I3(square_re__1_n_96),
        .O(\radicand[83]_i_10_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_11 
       (.I0(square_re__4_n_64),
        .I1(square_re__1_n_98),
        .I2(square_re__4_n_63),
        .I3(square_re__1_n_97),
        .O(\radicand[83]_i_11_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_12 
       (.I0(square_re__4_n_60),
        .I1(square_re__1_n_94),
        .I2(square_re__4_n_59),
        .I3(square_re__1_n_93),
        .I4(\radicand[83]_i_8_n_0 ),
        .O(\radicand[83]_i_12_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_13 
       (.I0(square_re__4_n_61),
        .I1(square_re__1_n_95),
        .I2(square_re__4_n_60),
        .I3(square_re__1_n_94),
        .I4(\radicand[83]_i_9_n_0 ),
        .O(\radicand[83]_i_13_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_14 
       (.I0(square_re__4_n_62),
        .I1(square_re__1_n_96),
        .I2(square_re__4_n_61),
        .I3(square_re__1_n_95),
        .I4(\radicand[83]_i_10_n_0 ),
        .O(\radicand[83]_i_14_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_15 
       (.I0(square_re__4_n_63),
        .I1(square_re__1_n_97),
        .I2(square_re__4_n_62),
        .I3(square_re__1_n_96),
        .I4(\radicand[83]_i_11_n_0 ),
        .O(\radicand[83]_i_15_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_17 
       (.I0(square_im__4_n_61),
        .I1(square_im__1_n_95),
        .I2(square_im__4_n_60),
        .I3(square_im__1_n_94),
        .O(\radicand[83]_i_17_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_18 
       (.I0(square_im__4_n_62),
        .I1(square_im__1_n_96),
        .I2(square_im__4_n_61),
        .I3(square_im__1_n_95),
        .O(\radicand[83]_i_18_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_19 
       (.I0(square_im__4_n_63),
        .I1(square_im__1_n_97),
        .I2(square_im__4_n_62),
        .I3(square_im__1_n_96),
        .O(\radicand[83]_i_19_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_20 
       (.I0(square_im__4_n_64),
        .I1(square_im__1_n_98),
        .I2(square_im__4_n_63),
        .I3(square_im__1_n_97),
        .O(\radicand[83]_i_20_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_21 
       (.I0(square_im__4_n_60),
        .I1(square_im__1_n_94),
        .I2(square_im__4_n_59),
        .I3(square_im__1_n_93),
        .I4(\radicand[83]_i_17_n_0 ),
        .O(\radicand[83]_i_21_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_22 
       (.I0(square_im__4_n_61),
        .I1(square_im__1_n_95),
        .I2(square_im__4_n_60),
        .I3(square_im__1_n_94),
        .I4(\radicand[83]_i_18_n_0 ),
        .O(\radicand[83]_i_22_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_23 
       (.I0(square_im__4_n_62),
        .I1(square_im__1_n_96),
        .I2(square_im__4_n_61),
        .I3(square_im__1_n_95),
        .I4(\radicand[83]_i_19_n_0 ),
        .O(\radicand[83]_i_23_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \radicand[83]_i_24 
       (.I0(square_im__4_n_63),
        .I1(square_im__1_n_97),
        .I2(square_im__4_n_62),
        .I3(square_im__1_n_96),
        .I4(\radicand[83]_i_20_n_0 ),
        .O(\radicand[83]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[83]_i_4 
       (.I0(square_re__8[83]),
        .I1(square_im__8[83]),
        .O(\radicand[83]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[83]_i_5 
       (.I0(square_re__8[82]),
        .I1(square_im__8[82]),
        .O(\radicand[83]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[83]_i_6 
       (.I0(square_re__8[81]),
        .I1(square_im__8[81]),
        .O(\radicand[83]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[83]_i_7 
       (.I0(square_re__8[80]),
        .I1(square_im__8[80]),
        .O(\radicand[83]_i_7_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_8 
       (.I0(square_re__4_n_61),
        .I1(square_re__1_n_95),
        .I2(square_re__4_n_60),
        .I3(square_re__1_n_94),
        .O(\radicand[83]_i_8_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[83]_i_9 
       (.I0(square_re__4_n_62),
        .I1(square_re__1_n_96),
        .I2(square_re__4_n_61),
        .I3(square_re__1_n_95),
        .O(\radicand[83]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[84]_i_1 
       (.I0(\radicand_reg_n_0_[82] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[84]),
        .O(\radicand[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[85]_i_1 
       (.I0(\radicand_reg_n_0_[83] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[85]),
        .O(\radicand[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[86]_i_1 
       (.I0(\radicand_reg_n_0_[84] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[86]),
        .O(\radicand[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[87]_i_1 
       (.I0(\radicand_reg_n_0_[85] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[87]),
        .O(\radicand[87]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[87]_i_10 
       (.I0(square_re__1_n_90),
        .I1(square_re__1_n_89),
        .O(\radicand[87]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[87]_i_11 
       (.I0(square_re__1_n_91),
        .I1(square_re__1_n_90),
        .O(\radicand[87]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEF0E10F1)) 
    \radicand[87]_i_12 
       (.I0(square_re__4_n_59),
        .I1(square_re__1_n_93),
        .I2(square_re__4_n_58),
        .I3(square_re__1_n_92),
        .I4(square_re__1_n_91),
        .O(\radicand[87]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h96969669)) 
    \radicand[87]_i_13 
       (.I0(\radicand[87]_i_9_n_0 ),
        .I1(square_re__1_n_92),
        .I2(square_re__4_n_58),
        .I3(square_re__1_n_93),
        .I4(square_re__4_n_59),
        .O(\radicand[87]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hBBB2)) 
    \radicand[87]_i_15 
       (.I0(square_im__1_n_92),
        .I1(square_im__4_n_58),
        .I2(square_im__1_n_93),
        .I3(square_im__4_n_59),
        .O(\radicand[87]_i_15_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[87]_i_16 
       (.I0(square_im__4_n_60),
        .I1(square_im__1_n_94),
        .I2(square_im__4_n_59),
        .I3(square_im__1_n_93),
        .O(\radicand[87]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[87]_i_17 
       (.I0(square_im__1_n_90),
        .I1(square_im__1_n_89),
        .O(\radicand[87]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[87]_i_18 
       (.I0(square_im__1_n_91),
        .I1(square_im__1_n_90),
        .O(\radicand[87]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hEF0E10F1)) 
    \radicand[87]_i_19 
       (.I0(square_im__4_n_59),
        .I1(square_im__1_n_93),
        .I2(square_im__4_n_58),
        .I3(square_im__1_n_92),
        .I4(square_im__1_n_91),
        .O(\radicand[87]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h96969669)) 
    \radicand[87]_i_20 
       (.I0(\radicand[87]_i_16_n_0 ),
        .I1(square_im__1_n_92),
        .I2(square_im__4_n_58),
        .I3(square_im__1_n_93),
        .I4(square_im__4_n_59),
        .O(\radicand[87]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[87]_i_4 
       (.I0(square_re__8[87]),
        .I1(square_im__8[87]),
        .O(\radicand[87]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[87]_i_5 
       (.I0(square_re__8[86]),
        .I1(square_im__8[86]),
        .O(\radicand[87]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[87]_i_6 
       (.I0(square_re__8[85]),
        .I1(square_im__8[85]),
        .O(\radicand[87]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[87]_i_7 
       (.I0(square_re__8[84]),
        .I1(square_im__8[84]),
        .O(\radicand[87]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBBB2)) 
    \radicand[87]_i_8 
       (.I0(square_re__1_n_92),
        .I1(square_re__4_n_58),
        .I2(square_re__1_n_93),
        .I3(square_re__4_n_59),
        .O(\radicand[87]_i_8_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \radicand[87]_i_9 
       (.I0(square_re__4_n_60),
        .I1(square_re__1_n_94),
        .I2(square_re__4_n_59),
        .I3(square_re__1_n_93),
        .O(\radicand[87]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[88]_i_1 
       (.I0(\radicand_reg_n_0_[86] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[88]),
        .O(\radicand[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[89]_i_1 
       (.I0(\radicand_reg_n_0_[87] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[89]),
        .O(\radicand[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[8]_i_1 
       (.I0(\radicand_reg_n_0_[6] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[8]),
        .O(\radicand[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[90]_i_1 
       (.I0(\radicand_reg_n_0_[88] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[90]),
        .O(\radicand[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[91]_i_1 
       (.I0(\radicand_reg_n_0_[89] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[91]),
        .O(\radicand[91]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_10 
       (.I0(square_re__1_n_88),
        .I1(square_re__1_n_87),
        .O(\radicand[91]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_11 
       (.I0(square_re__1_n_89),
        .I1(square_re__1_n_88),
        .O(\radicand[91]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_13 
       (.I0(square_im__1_n_86),
        .I1(square_im__1_n_85),
        .O(\radicand[91]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_14 
       (.I0(square_im__1_n_87),
        .I1(square_im__1_n_86),
        .O(\radicand[91]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_15 
       (.I0(square_im__1_n_88),
        .I1(square_im__1_n_87),
        .O(\radicand[91]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_16 
       (.I0(square_im__1_n_89),
        .I1(square_im__1_n_88),
        .O(\radicand[91]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[91]_i_4 
       (.I0(square_re__8[91]),
        .I1(square_im__8[91]),
        .O(\radicand[91]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[91]_i_5 
       (.I0(square_re__8[90]),
        .I1(square_im__8[90]),
        .O(\radicand[91]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[91]_i_6 
       (.I0(square_re__8[89]),
        .I1(square_im__8[89]),
        .O(\radicand[91]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[91]_i_7 
       (.I0(square_re__8[88]),
        .I1(square_im__8[88]),
        .O(\radicand[91]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_8 
       (.I0(square_re__1_n_86),
        .I1(square_re__1_n_85),
        .O(\radicand[91]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[91]_i_9 
       (.I0(square_re__1_n_87),
        .I1(square_re__1_n_86),
        .O(\radicand[91]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[92]_i_1 
       (.I0(\radicand_reg_n_0_[90] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[92]),
        .O(\radicand[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[93]_i_1 
       (.I0(\radicand_reg_n_0_[91] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[93]),
        .O(\radicand[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[94]_i_1 
       (.I0(\radicand_reg_n_0_[92] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[94]),
        .O(\radicand[94]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[95]_i_1 
       (.I0(\radicand_reg_n_0_[93] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[95]),
        .O(\radicand[95]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_10 
       (.I0(square_re__1_n_84),
        .I1(square_re__1_n_83),
        .O(\radicand[95]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_11 
       (.I0(square_re__1_n_85),
        .I1(square_re__1_n_84),
        .O(\radicand[95]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_13 
       (.I0(square_im__1_n_82),
        .I1(square_im__1_n_81),
        .O(\radicand[95]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_14 
       (.I0(square_im__1_n_83),
        .I1(square_im__1_n_82),
        .O(\radicand[95]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_15 
       (.I0(square_im__1_n_84),
        .I1(square_im__1_n_83),
        .O(\radicand[95]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_16 
       (.I0(square_im__1_n_85),
        .I1(square_im__1_n_84),
        .O(\radicand[95]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[95]_i_4 
       (.I0(square_re__8[95]),
        .I1(square_im__8[95]),
        .O(\radicand[95]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[95]_i_5 
       (.I0(square_re__8[94]),
        .I1(square_im__8[94]),
        .O(\radicand[95]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[95]_i_6 
       (.I0(square_re__8[93]),
        .I1(square_im__8[93]),
        .O(\radicand[95]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \radicand[95]_i_7 
       (.I0(square_re__8[92]),
        .I1(square_im__8[92]),
        .O(\radicand[95]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_8 
       (.I0(square_re__1_n_82),
        .I1(square_re__1_n_81),
        .O(\radicand[95]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[95]_i_9 
       (.I0(square_re__1_n_83),
        .I1(square_re__1_n_82),
        .O(\radicand[95]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[96]_i_1 
       (.I0(\radicand_reg_n_0_[94] ),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .I2(radicand00_in[96]),
        .O(\radicand[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[97]_i_1 
       (.I0(\radicand_reg_n_0_[95] ),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .I2(radicand00_in[97]),
        .O(\radicand[97]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_13 
       (.I0(square_im__1_n_77),
        .I1(square_im__1_n_76),
        .O(\radicand[97]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_14 
       (.I0(square_re__1_n_77),
        .I1(square_re__1_n_76),
        .O(\radicand[97]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_15 
       (.I0(square_im__1_n_78),
        .I1(square_im__1_n_77),
        .O(\radicand[97]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_16 
       (.I0(square_im__1_n_79),
        .I1(square_im__1_n_78),
        .O(\radicand[97]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_17 
       (.I0(square_im__1_n_80),
        .I1(square_im__1_n_79),
        .O(\radicand[97]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_18 
       (.I0(square_im__1_n_81),
        .I1(square_im__1_n_80),
        .O(\radicand[97]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_6 
       (.I0(square_re__1_n_78),
        .I1(square_re__1_n_77),
        .O(\radicand[97]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_7 
       (.I0(square_re__1_n_79),
        .I1(square_re__1_n_78),
        .O(\radicand[97]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_8 
       (.I0(square_re__1_n_80),
        .I1(square_re__1_n_79),
        .O(\radicand[97]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \radicand[97]_i_9 
       (.I0(square_re__1_n_81),
        .I1(square_re__1_n_80),
        .O(\radicand[97]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \radicand[9]_i_1 
       (.I0(\radicand_reg_n_0_[7] ),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(radicand00_in[9]),
        .O(\radicand[9]_i_1_n_0 ));
  FDRE \radicand_reg[0] 
       (.C(clk),
        .CE(root),
        .D(\radicand[0]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[0] ),
        .R(rst_0));
  FDRE \radicand_reg[10] 
       (.C(clk),
        .CE(root),
        .D(\radicand[10]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \radicand_reg[11] 
       (.C(clk),
        .CE(root),
        .D(\radicand[11]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[11] ),
        .R(rst_0));
  CARRY4 \radicand_reg[11]_i_2 
       (.CI(\radicand_reg[7]_i_2_n_0 ),
        .CO({\radicand_reg[11]_i_2_n_0 ,\radicand_reg[11]_i_2_n_1 ,\radicand_reg[11]_i_2_n_2 ,\radicand_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__5_n_94,square_re__5_n_95,square_re__5_n_96,square_re__5_n_97}),
        .O(radicand00_in[11:8]),
        .S({\radicand[11]_i_3_n_0 ,\radicand[11]_i_4_n_0 ,\radicand[11]_i_5_n_0 ,\radicand[11]_i_6_n_0 }));
  FDRE \radicand_reg[12] 
       (.C(clk),
        .CE(root),
        .D(\radicand[12]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \radicand_reg[13] 
       (.C(clk),
        .CE(root),
        .D(\radicand[13]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \radicand_reg[14] 
       (.C(clk),
        .CE(root),
        .D(\radicand[14]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \radicand_reg[15] 
       (.C(clk),
        .CE(root),
        .D(\radicand[15]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[15] ),
        .R(rst_0));
  CARRY4 \radicand_reg[15]_i_2 
       (.CI(\radicand_reg[11]_i_2_n_0 ),
        .CO({\radicand_reg[15]_i_2_n_0 ,\radicand_reg[15]_i_2_n_1 ,\radicand_reg[15]_i_2_n_2 ,\radicand_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__5_n_90,square_re__5_n_91,square_re__5_n_92,square_re__5_n_93}),
        .O(radicand00_in[15:12]),
        .S({\radicand[15]_i_3_n_0 ,\radicand[15]_i_4_n_0 ,\radicand[15]_i_5_n_0 ,\radicand[15]_i_6_n_0 }));
  FDRE \radicand_reg[16] 
       (.C(clk),
        .CE(root),
        .D(\radicand[16]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \radicand_reg[17] 
       (.C(clk),
        .CE(root),
        .D(\radicand[17]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[17] ),
        .R(rst_0));
  FDRE \radicand_reg[18] 
       (.C(clk),
        .CE(root),
        .D(\radicand[18]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[18] ),
        .R(rst_0));
  FDRE \radicand_reg[19] 
       (.C(clk),
        .CE(root),
        .D(\radicand[19]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[19] ),
        .R(rst_0));
  CARRY4 \radicand_reg[19]_i_2 
       (.CI(\radicand_reg[15]_i_2_n_0 ),
        .CO({\radicand_reg[19]_i_2_n_0 ,\radicand_reg[19]_i_2_n_1 ,\radicand_reg[19]_i_2_n_2 ,\radicand_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_103,square_re__7_n_104,square_re__7_n_105,square_re__5_n_89}),
        .O(radicand00_in[19:16]),
        .S({\radicand[19]_i_3_n_0 ,\radicand[19]_i_4_n_0 ,\radicand[19]_i_5_n_0 ,\radicand[19]_i_6_n_0 }));
  FDRE \radicand_reg[1] 
       (.C(clk),
        .CE(root),
        .D(\radicand[1]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \radicand_reg[20] 
       (.C(clk),
        .CE(root),
        .D(\radicand[20]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[20] ),
        .R(rst_0));
  FDRE \radicand_reg[21] 
       (.C(clk),
        .CE(root),
        .D(\radicand[21]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[21] ),
        .R(rst_0));
  FDRE \radicand_reg[22] 
       (.C(clk),
        .CE(root),
        .D(\radicand[22]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[22] ),
        .R(rst_0));
  FDRE \radicand_reg[23] 
       (.C(clk),
        .CE(root),
        .D(\radicand[23]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[23] ),
        .R(rst_0));
  CARRY4 \radicand_reg[23]_i_2 
       (.CI(\radicand_reg[19]_i_2_n_0 ),
        .CO({\radicand_reg[23]_i_2_n_0 ,\radicand_reg[23]_i_2_n_1 ,\radicand_reg[23]_i_2_n_2 ,\radicand_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_99,square_re__7_n_100,square_re__7_n_101,square_re__7_n_102}),
        .O(radicand00_in[23:20]),
        .S({\radicand[23]_i_3_n_0 ,\radicand[23]_i_4_n_0 ,\radicand[23]_i_5_n_0 ,\radicand[23]_i_6_n_0 }));
  FDRE \radicand_reg[24] 
       (.C(clk),
        .CE(root),
        .D(\radicand[24]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[24] ),
        .R(rst_0));
  FDRE \radicand_reg[25] 
       (.C(clk),
        .CE(root),
        .D(\radicand[25]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[25] ),
        .R(rst_0));
  FDRE \radicand_reg[26] 
       (.C(clk),
        .CE(root),
        .D(\radicand[26]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[26] ),
        .R(rst_0));
  FDRE \radicand_reg[27] 
       (.C(clk),
        .CE(root),
        .D(\radicand[27]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[27] ),
        .R(rst_0));
  CARRY4 \radicand_reg[27]_i_2 
       (.CI(\radicand_reg[23]_i_2_n_0 ),
        .CO({\radicand_reg[27]_i_2_n_0 ,\radicand_reg[27]_i_2_n_1 ,\radicand_reg[27]_i_2_n_2 ,\radicand_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_95,square_re__7_n_96,square_re__7_n_97,square_re__7_n_98}),
        .O(radicand00_in[27:24]),
        .S({\radicand[27]_i_3_n_0 ,\radicand[27]_i_4_n_0 ,\radicand[27]_i_5_n_0 ,\radicand[27]_i_6_n_0 }));
  FDRE \radicand_reg[28] 
       (.C(clk),
        .CE(root),
        .D(\radicand[28]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[28] ),
        .R(rst_0));
  FDRE \radicand_reg[29] 
       (.C(clk),
        .CE(root),
        .D(\radicand[29]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[29] ),
        .R(rst_0));
  FDRE \radicand_reg[2] 
       (.C(clk),
        .CE(root),
        .D(\radicand[2]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \radicand_reg[30] 
       (.C(clk),
        .CE(root),
        .D(\radicand[30]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[30] ),
        .R(rst_0));
  FDRE \radicand_reg[31] 
       (.C(clk),
        .CE(root),
        .D(\radicand[31]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[31] ),
        .R(rst_0));
  CARRY4 \radicand_reg[31]_i_2 
       (.CI(\radicand_reg[27]_i_2_n_0 ),
        .CO({\radicand_reg[31]_i_2_n_0 ,\radicand_reg[31]_i_2_n_1 ,\radicand_reg[31]_i_2_n_2 ,\radicand_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_91,square_re__7_n_92,square_re__7_n_93,square_re__7_n_94}),
        .O(radicand00_in[31:28]),
        .S({\radicand[31]_i_3_n_0 ,\radicand[31]_i_4_n_0 ,\radicand[31]_i_5_n_0 ,\radicand[31]_i_6_n_0 }));
  FDRE \radicand_reg[32] 
       (.C(clk),
        .CE(root),
        .D(\radicand[32]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[32] ),
        .R(rst_0));
  FDRE \radicand_reg[33] 
       (.C(clk),
        .CE(root),
        .D(\radicand[33]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[33] ),
        .R(rst_0));
  FDRE \radicand_reg[34] 
       (.C(clk),
        .CE(root),
        .D(\radicand[34]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[34] ),
        .R(rst_0));
  FDRE \radicand_reg[35] 
       (.C(clk),
        .CE(root),
        .D(\radicand[35]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[35] ),
        .R(rst_0));
  CARRY4 \radicand_reg[35]_i_2 
       (.CI(\radicand_reg[31]_i_2_n_0 ),
        .CO({\radicand_reg[35]_i_2_n_0 ,\radicand_reg[35]_i_2_n_1 ,\radicand_reg[35]_i_2_n_2 ,\radicand_reg[35]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__8[35:33],square_re__7_n_90}),
        .O(radicand00_in[35:32]),
        .S({\radicand[35]_i_3_n_0 ,\radicand[35]_i_4_n_0 ,\radicand[35]_i_5_n_0 ,\radicand[35]_i_6_n_0 }));
  FDRE \radicand_reg[36] 
       (.C(clk),
        .CE(root),
        .D(\radicand[36]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[36] ),
        .R(rst_0));
  FDRE \radicand_reg[37] 
       (.C(clk),
        .CE(root),
        .D(\radicand[37]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[37] ),
        .R(rst_0));
  FDRE \radicand_reg[38] 
       (.C(clk),
        .CE(root),
        .D(\radicand[38]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[38] ),
        .R(rst_0));
  FDRE \radicand_reg[39] 
       (.C(clk),
        .CE(root),
        .D(\radicand[39]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[39] ),
        .R(rst_0));
  CARRY4 \radicand_reg[39]_i_11 
       (.CI(1'b0),
        .CO({\radicand_reg[39]_i_11_n_0 ,\radicand_reg[39]_i_11_n_1 ,\radicand_reg[39]_i_11_n_2 ,\radicand_reg[39]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__7_n_86,square_im__7_n_87,square_im__7_n_88,1'b0}),
        .O(square_im__8[36:33]),
        .S({\radicand[39]_i_12_n_0 ,\radicand[39]_i_13_n_0 ,\radicand[39]_i_14_n_0 ,square_im__7_n_89}));
  CARRY4 \radicand_reg[39]_i_2 
       (.CI(\radicand_reg[35]_i_2_n_0 ),
        .CO({\radicand_reg[39]_i_2_n_0 ,\radicand_reg[39]_i_2_n_1 ,\radicand_reg[39]_i_2_n_2 ,\radicand_reg[39]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[39:36]),
        .O(radicand00_in[39:36]),
        .S({\radicand[39]_i_4_n_0 ,\radicand[39]_i_5_n_0 ,\radicand[39]_i_6_n_0 ,\radicand[39]_i_7_n_0 }));
  CARRY4 \radicand_reg[39]_i_3 
       (.CI(1'b0),
        .CO({\radicand_reg[39]_i_3_n_0 ,\radicand_reg[39]_i_3_n_1 ,\radicand_reg[39]_i_3_n_2 ,\radicand_reg[39]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_86,square_re__7_n_87,square_re__7_n_88,1'b0}),
        .O(square_re__8[36:33]),
        .S({\radicand[39]_i_8_n_0 ,\radicand[39]_i_9_n_0 ,\radicand[39]_i_10_n_0 ,square_re__7_n_89}));
  FDRE \radicand_reg[3] 
       (.C(clk),
        .CE(root),
        .D(\radicand[3]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[3] ),
        .R(rst_0));
  CARRY4 \radicand_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\radicand_reg[3]_i_2_n_0 ,\radicand_reg[3]_i_2_n_1 ,\radicand_reg[3]_i_2_n_2 ,\radicand_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__5_n_102,square_re__5_n_103,square_re__5_n_104,square_re__5_n_105}),
        .O(radicand00_in[3:0]),
        .S({\radicand[3]_i_3_n_0 ,\radicand[3]_i_4_n_0 ,\radicand[3]_i_5_n_0 ,\radicand[3]_i_6_n_0 }));
  FDRE \radicand_reg[40] 
       (.C(clk),
        .CE(root),
        .D(\radicand[40]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[40] ),
        .R(rst_0));
  FDRE \radicand_reg[41] 
       (.C(clk),
        .CE(root),
        .D(\radicand[41]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[41] ),
        .R(rst_0));
  FDRE \radicand_reg[42] 
       (.C(clk),
        .CE(root),
        .D(\radicand[42]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[42] ),
        .R(rst_0));
  FDRE \radicand_reg[43] 
       (.C(clk),
        .CE(root),
        .D(\radicand[43]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[43] ),
        .R(rst_0));
  CARRY4 \radicand_reg[43]_i_12 
       (.CI(\radicand_reg[39]_i_11_n_0 ),
        .CO({\radicand_reg[43]_i_12_n_0 ,\radicand_reg[43]_i_12_n_1 ,\radicand_reg[43]_i_12_n_2 ,\radicand_reg[43]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__7_n_82,square_im__7_n_83,square_im__7_n_84,square_im__7_n_85}),
        .O(square_im__8[40:37]),
        .S({\radicand[43]_i_13_n_0 ,\radicand[43]_i_14_n_0 ,\radicand[43]_i_15_n_0 ,\radicand[43]_i_16_n_0 }));
  CARRY4 \radicand_reg[43]_i_2 
       (.CI(\radicand_reg[39]_i_2_n_0 ),
        .CO({\radicand_reg[43]_i_2_n_0 ,\radicand_reg[43]_i_2_n_1 ,\radicand_reg[43]_i_2_n_2 ,\radicand_reg[43]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[43:40]),
        .O(radicand00_in[43:40]),
        .S({\radicand[43]_i_4_n_0 ,\radicand[43]_i_5_n_0 ,\radicand[43]_i_6_n_0 ,\radicand[43]_i_7_n_0 }));
  CARRY4 \radicand_reg[43]_i_3 
       (.CI(\radicand_reg[39]_i_3_n_0 ),
        .CO({\radicand_reg[43]_i_3_n_0 ,\radicand_reg[43]_i_3_n_1 ,\radicand_reg[43]_i_3_n_2 ,\radicand_reg[43]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_82,square_re__7_n_83,square_re__7_n_84,square_re__7_n_85}),
        .O(square_re__8[40:37]),
        .S({\radicand[43]_i_8_n_0 ,\radicand[43]_i_9_n_0 ,\radicand[43]_i_10_n_0 ,\radicand[43]_i_11_n_0 }));
  FDRE \radicand_reg[44] 
       (.C(clk),
        .CE(root),
        .D(\radicand[44]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[44] ),
        .R(rst_0));
  FDRE \radicand_reg[45] 
       (.C(clk),
        .CE(root),
        .D(\radicand[45]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[45] ),
        .R(rst_0));
  FDRE \radicand_reg[46] 
       (.C(clk),
        .CE(root),
        .D(\radicand[46]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[46] ),
        .R(rst_0));
  FDRE \radicand_reg[47] 
       (.C(clk),
        .CE(root),
        .D(\radicand[47]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[47] ),
        .R(rst_0));
  CARRY4 \radicand_reg[47]_i_12 
       (.CI(\radicand_reg[43]_i_12_n_0 ),
        .CO({\radicand_reg[47]_i_12_n_0 ,\radicand_reg[47]_i_12_n_1 ,\radicand_reg[47]_i_12_n_2 ,\radicand_reg[47]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__7_n_78,square_im__7_n_79,square_im__7_n_80,square_im__7_n_81}),
        .O(square_im__8[44:41]),
        .S({\radicand[47]_i_13_n_0 ,\radicand[47]_i_14_n_0 ,\radicand[47]_i_15_n_0 ,\radicand[47]_i_16_n_0 }));
  CARRY4 \radicand_reg[47]_i_2 
       (.CI(\radicand_reg[43]_i_2_n_0 ),
        .CO({\radicand_reg[47]_i_2_n_0 ,\radicand_reg[47]_i_2_n_1 ,\radicand_reg[47]_i_2_n_2 ,\radicand_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[47:44]),
        .O(radicand00_in[47:44]),
        .S({\radicand[47]_i_4_n_0 ,\radicand[47]_i_5_n_0 ,\radicand[47]_i_6_n_0 ,\radicand[47]_i_7_n_0 }));
  CARRY4 \radicand_reg[47]_i_3 
       (.CI(\radicand_reg[43]_i_3_n_0 ),
        .CO({\radicand_reg[47]_i_3_n_0 ,\radicand_reg[47]_i_3_n_1 ,\radicand_reg[47]_i_3_n_2 ,\radicand_reg[47]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_78,square_re__7_n_79,square_re__7_n_80,square_re__7_n_81}),
        .O(square_re__8[44:41]),
        .S({\radicand[47]_i_8_n_0 ,\radicand[47]_i_9_n_0 ,\radicand[47]_i_10_n_0 ,\radicand[47]_i_11_n_0 }));
  FDRE \radicand_reg[48] 
       (.C(clk),
        .CE(root),
        .D(\radicand[48]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[48] ),
        .R(rst_0));
  FDRE \radicand_reg[49] 
       (.C(clk),
        .CE(root),
        .D(\radicand[49]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[49] ),
        .R(rst_0));
  FDRE \radicand_reg[4] 
       (.C(clk),
        .CE(root),
        .D(\radicand[4]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \radicand_reg[50] 
       (.C(clk),
        .CE(root),
        .D(\radicand[50]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[50] ),
        .R(rst_0));
  FDRE \radicand_reg[51] 
       (.C(clk),
        .CE(root),
        .D(\radicand[51]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[51] ),
        .R(rst_0));
  CARRY4 \radicand_reg[51]_i_12 
       (.CI(\radicand_reg[47]_i_12_n_0 ),
        .CO({\radicand_reg[51]_i_12_n_0 ,\radicand_reg[51]_i_12_n_1 ,\radicand_reg[51]_i_12_n_2 ,\radicand_reg[51]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__7_n_74,square_im__7_n_75,square_im__7_n_76,square_im__7_n_77}),
        .O(square_im__8[48:45]),
        .S({\radicand[51]_i_13_n_0 ,\radicand[51]_i_14_n_0 ,\radicand[51]_i_15_n_0 ,\radicand[51]_i_16_n_0 }));
  CARRY4 \radicand_reg[51]_i_2 
       (.CI(\radicand_reg[47]_i_2_n_0 ),
        .CO({\radicand_reg[51]_i_2_n_0 ,\radicand_reg[51]_i_2_n_1 ,\radicand_reg[51]_i_2_n_2 ,\radicand_reg[51]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[51:48]),
        .O(radicand00_in[51:48]),
        .S({\radicand[51]_i_4_n_0 ,\radicand[51]_i_5_n_0 ,\radicand[51]_i_6_n_0 ,\radicand[51]_i_7_n_0 }));
  CARRY4 \radicand_reg[51]_i_3 
       (.CI(\radicand_reg[47]_i_3_n_0 ),
        .CO({\radicand_reg[51]_i_3_n_0 ,\radicand_reg[51]_i_3_n_1 ,\radicand_reg[51]_i_3_n_2 ,\radicand_reg[51]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__7_n_74,square_re__7_n_75,square_re__7_n_76,square_re__7_n_77}),
        .O(square_re__8[48:45]),
        .S({\radicand[51]_i_8_n_0 ,\radicand[51]_i_9_n_0 ,\radicand[51]_i_10_n_0 ,\radicand[51]_i_11_n_0 }));
  FDRE \radicand_reg[52] 
       (.C(clk),
        .CE(root),
        .D(\radicand[52]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[52] ),
        .R(rst_0));
  FDRE \radicand_reg[53] 
       (.C(clk),
        .CE(root),
        .D(\radicand[53]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[53] ),
        .R(rst_0));
  FDRE \radicand_reg[54] 
       (.C(clk),
        .CE(root),
        .D(\radicand[54]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[54] ),
        .R(rst_0));
  FDRE \radicand_reg[55] 
       (.C(clk),
        .CE(root),
        .D(\radicand[55]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[55] ),
        .R(rst_0));
  CARRY4 \radicand_reg[55]_i_13 
       (.CI(\radicand_reg[51]_i_12_n_0 ),
        .CO({\radicand_reg[55]_i_13_n_0 ,\radicand_reg[55]_i_13_n_1 ,\radicand_reg[55]_i_13_n_2 ,\radicand_reg[55]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[55]_i_14_n_0 ,square_im__7_n_71,square_im__7_n_72,square_im__7_n_73}),
        .O(square_im__8[52:49]),
        .S({\radicand[55]_i_15_n_0 ,\radicand[55]_i_16_n_0 ,\radicand[55]_i_17_n_0 ,\radicand[55]_i_18_n_0 }));
  CARRY4 \radicand_reg[55]_i_2 
       (.CI(\radicand_reg[51]_i_2_n_0 ),
        .CO({\radicand_reg[55]_i_2_n_0 ,\radicand_reg[55]_i_2_n_1 ,\radicand_reg[55]_i_2_n_2 ,\radicand_reg[55]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[55:52]),
        .O(radicand00_in[55:52]),
        .S({\radicand[55]_i_4_n_0 ,\radicand[55]_i_5_n_0 ,\radicand[55]_i_6_n_0 ,\radicand[55]_i_7_n_0 }));
  CARRY4 \radicand_reg[55]_i_3 
       (.CI(\radicand_reg[51]_i_3_n_0 ),
        .CO({\radicand_reg[55]_i_3_n_0 ,\radicand_reg[55]_i_3_n_1 ,\radicand_reg[55]_i_3_n_2 ,\radicand_reg[55]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[55]_i_8_n_0 ,square_re__7_n_71,square_re__7_n_72,square_re__7_n_73}),
        .O(square_re__8[52:49]),
        .S({\radicand[55]_i_9_n_0 ,\radicand[55]_i_10_n_0 ,\radicand[55]_i_11_n_0 ,\radicand[55]_i_12_n_0 }));
  FDRE \radicand_reg[56] 
       (.C(clk),
        .CE(root),
        .D(\radicand[56]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[56] ),
        .R(rst_0));
  FDRE \radicand_reg[57] 
       (.C(clk),
        .CE(root),
        .D(\radicand[57]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[57] ),
        .R(rst_0));
  FDRE \radicand_reg[58] 
       (.C(clk),
        .CE(root),
        .D(\radicand[58]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[58] ),
        .R(rst_0));
  FDRE \radicand_reg[59] 
       (.C(clk),
        .CE(root),
        .D(\radicand[59]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[59] ),
        .R(rst_0));
  CARRY4 \radicand_reg[59]_i_16 
       (.CI(\radicand_reg[55]_i_13_n_0 ),
        .CO({\radicand_reg[59]_i_16_n_0 ,\radicand_reg[59]_i_16_n_1 ,\radicand_reg[59]_i_16_n_2 ,\radicand_reg[59]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[59]_i_17_n_0 ,\radicand[59]_i_18_n_0 ,\radicand[59]_i_19_n_0 ,\radicand[59]_i_20_n_0 }),
        .O(square_im__8[56:53]),
        .S({\radicand[59]_i_21_n_0 ,\radicand[59]_i_22_n_0 ,\radicand[59]_i_23_n_0 ,\radicand[59]_i_24_n_0 }));
  CARRY4 \radicand_reg[59]_i_2 
       (.CI(\radicand_reg[55]_i_2_n_0 ),
        .CO({\radicand_reg[59]_i_2_n_0 ,\radicand_reg[59]_i_2_n_1 ,\radicand_reg[59]_i_2_n_2 ,\radicand_reg[59]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[59:56]),
        .O(radicand00_in[59:56]),
        .S({\radicand[59]_i_4_n_0 ,\radicand[59]_i_5_n_0 ,\radicand[59]_i_6_n_0 ,\radicand[59]_i_7_n_0 }));
  CARRY4 \radicand_reg[59]_i_3 
       (.CI(\radicand_reg[55]_i_3_n_0 ),
        .CO({\radicand_reg[59]_i_3_n_0 ,\radicand_reg[59]_i_3_n_1 ,\radicand_reg[59]_i_3_n_2 ,\radicand_reg[59]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[59]_i_8_n_0 ,\radicand[59]_i_9_n_0 ,\radicand[59]_i_10_n_0 ,\radicand[59]_i_11_n_0 }),
        .O(square_re__8[56:53]),
        .S({\radicand[59]_i_12_n_0 ,\radicand[59]_i_13_n_0 ,\radicand[59]_i_14_n_0 ,\radicand[59]_i_15_n_0 }));
  FDRE \radicand_reg[5] 
       (.C(clk),
        .CE(root),
        .D(\radicand[5]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \radicand_reg[60] 
       (.C(clk),
        .CE(root),
        .D(\radicand[60]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[60] ),
        .R(rst_0));
  FDRE \radicand_reg[61] 
       (.C(clk),
        .CE(root),
        .D(\radicand[61]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[61] ),
        .R(rst_0));
  FDRE \radicand_reg[62] 
       (.C(clk),
        .CE(root),
        .D(\radicand[62]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[62] ),
        .R(rst_0));
  FDRE \radicand_reg[63] 
       (.C(clk),
        .CE(root),
        .D(\radicand[63]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[63] ),
        .R(rst_0));
  CARRY4 \radicand_reg[63]_i_16 
       (.CI(\radicand_reg[59]_i_16_n_0 ),
        .CO({\radicand_reg[63]_i_16_n_0 ,\radicand_reg[63]_i_16_n_1 ,\radicand_reg[63]_i_16_n_2 ,\radicand_reg[63]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[63]_i_17_n_0 ,\radicand[63]_i_18_n_0 ,\radicand[63]_i_19_n_0 ,\radicand[63]_i_20_n_0 }),
        .O(square_im__8[60:57]),
        .S({\radicand[63]_i_21_n_0 ,\radicand[63]_i_22_n_0 ,\radicand[63]_i_23_n_0 ,\radicand[63]_i_24_n_0 }));
  CARRY4 \radicand_reg[63]_i_2 
       (.CI(\radicand_reg[59]_i_2_n_0 ),
        .CO({\radicand_reg[63]_i_2_n_0 ,\radicand_reg[63]_i_2_n_1 ,\radicand_reg[63]_i_2_n_2 ,\radicand_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[63:60]),
        .O(radicand00_in[63:60]),
        .S({\radicand[63]_i_4_n_0 ,\radicand[63]_i_5_n_0 ,\radicand[63]_i_6_n_0 ,\radicand[63]_i_7_n_0 }));
  CARRY4 \radicand_reg[63]_i_3 
       (.CI(\radicand_reg[59]_i_3_n_0 ),
        .CO({\radicand_reg[63]_i_3_n_0 ,\radicand_reg[63]_i_3_n_1 ,\radicand_reg[63]_i_3_n_2 ,\radicand_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[63]_i_8_n_0 ,\radicand[63]_i_9_n_0 ,\radicand[63]_i_10_n_0 ,\radicand[63]_i_11_n_0 }),
        .O(square_re__8[60:57]),
        .S({\radicand[63]_i_12_n_0 ,\radicand[63]_i_13_n_0 ,\radicand[63]_i_14_n_0 ,\radicand[63]_i_15_n_0 }));
  FDRE \radicand_reg[64] 
       (.C(clk),
        .CE(root),
        .D(\radicand[64]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[64] ),
        .R(rst_0));
  FDRE \radicand_reg[65] 
       (.C(clk),
        .CE(root),
        .D(\radicand[65]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[65] ),
        .R(rst_0));
  FDRE \radicand_reg[66] 
       (.C(clk),
        .CE(root),
        .D(\radicand[66]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[66] ),
        .R(rst_0));
  FDRE \radicand_reg[67] 
       (.C(clk),
        .CE(root),
        .D(\radicand[67]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[67] ),
        .R(rst_0));
  CARRY4 \radicand_reg[67]_i_16 
       (.CI(\radicand_reg[63]_i_16_n_0 ),
        .CO({\radicand_reg[67]_i_16_n_0 ,\radicand_reg[67]_i_16_n_1 ,\radicand_reg[67]_i_16_n_2 ,\radicand_reg[67]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[67]_i_17_n_0 ,\radicand[67]_i_18_n_0 ,\radicand[67]_i_19_n_0 ,\radicand[67]_i_20_n_0 }),
        .O(square_im__8[64:61]),
        .S({\radicand[67]_i_21_n_0 ,\radicand[67]_i_22_n_0 ,\radicand[67]_i_23_n_0 ,\radicand[67]_i_24_n_0 }));
  CARRY4 \radicand_reg[67]_i_2 
       (.CI(\radicand_reg[63]_i_2_n_0 ),
        .CO({\radicand_reg[67]_i_2_n_0 ,\radicand_reg[67]_i_2_n_1 ,\radicand_reg[67]_i_2_n_2 ,\radicand_reg[67]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[67:64]),
        .O(radicand00_in[67:64]),
        .S({\radicand[67]_i_4_n_0 ,\radicand[67]_i_5_n_0 ,\radicand[67]_i_6_n_0 ,\radicand[67]_i_7_n_0 }));
  CARRY4 \radicand_reg[67]_i_3 
       (.CI(\radicand_reg[63]_i_3_n_0 ),
        .CO({\radicand_reg[67]_i_3_n_0 ,\radicand_reg[67]_i_3_n_1 ,\radicand_reg[67]_i_3_n_2 ,\radicand_reg[67]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[67]_i_8_n_0 ,\radicand[67]_i_9_n_0 ,\radicand[67]_i_10_n_0 ,\radicand[67]_i_11_n_0 }),
        .O(square_re__8[64:61]),
        .S({\radicand[67]_i_12_n_0 ,\radicand[67]_i_13_n_0 ,\radicand[67]_i_14_n_0 ,\radicand[67]_i_15_n_0 }));
  FDRE \radicand_reg[68] 
       (.C(clk),
        .CE(root),
        .D(\radicand[68]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[68] ),
        .R(rst_0));
  FDRE \radicand_reg[69] 
       (.C(clk),
        .CE(root),
        .D(\radicand[69]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[69] ),
        .R(rst_0));
  FDRE \radicand_reg[6] 
       (.C(clk),
        .CE(root),
        .D(\radicand[6]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \radicand_reg[70] 
       (.C(clk),
        .CE(root),
        .D(\radicand[70]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[70] ),
        .R(rst_0));
  FDRE \radicand_reg[71] 
       (.C(clk),
        .CE(root),
        .D(\radicand[71]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[71] ),
        .R(rst_0));
  CARRY4 \radicand_reg[71]_i_16 
       (.CI(\radicand_reg[67]_i_16_n_0 ),
        .CO({\radicand_reg[71]_i_16_n_0 ,\radicand_reg[71]_i_16_n_1 ,\radicand_reg[71]_i_16_n_2 ,\radicand_reg[71]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[71]_i_17_n_0 ,\radicand[71]_i_18_n_0 ,\radicand[71]_i_19_n_0 ,\radicand[71]_i_20_n_0 }),
        .O(square_im__8[68:65]),
        .S({\radicand[71]_i_21_n_0 ,\radicand[71]_i_22_n_0 ,\radicand[71]_i_23_n_0 ,\radicand[71]_i_24_n_0 }));
  CARRY4 \radicand_reg[71]_i_2 
       (.CI(\radicand_reg[67]_i_2_n_0 ),
        .CO({\radicand_reg[71]_i_2_n_0 ,\radicand_reg[71]_i_2_n_1 ,\radicand_reg[71]_i_2_n_2 ,\radicand_reg[71]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[71:68]),
        .O(radicand00_in[71:68]),
        .S({\radicand[71]_i_4_n_0 ,\radicand[71]_i_5_n_0 ,\radicand[71]_i_6_n_0 ,\radicand[71]_i_7_n_0 }));
  CARRY4 \radicand_reg[71]_i_3 
       (.CI(\radicand_reg[67]_i_3_n_0 ),
        .CO({\radicand_reg[71]_i_3_n_0 ,\radicand_reg[71]_i_3_n_1 ,\radicand_reg[71]_i_3_n_2 ,\radicand_reg[71]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[71]_i_8_n_0 ,\radicand[71]_i_9_n_0 ,\radicand[71]_i_10_n_0 ,\radicand[71]_i_11_n_0 }),
        .O(square_re__8[68:65]),
        .S({\radicand[71]_i_12_n_0 ,\radicand[71]_i_13_n_0 ,\radicand[71]_i_14_n_0 ,\radicand[71]_i_15_n_0 }));
  FDRE \radicand_reg[72] 
       (.C(clk),
        .CE(root),
        .D(\radicand[72]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[72] ),
        .R(rst_0));
  FDRE \radicand_reg[73] 
       (.C(clk),
        .CE(root),
        .D(\radicand[73]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[73] ),
        .R(rst_0));
  FDRE \radicand_reg[74] 
       (.C(clk),
        .CE(root),
        .D(\radicand[74]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[74] ),
        .R(rst_0));
  FDRE \radicand_reg[75] 
       (.C(clk),
        .CE(root),
        .D(\radicand[75]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[75] ),
        .R(rst_0));
  CARRY4 \radicand_reg[75]_i_16 
       (.CI(\radicand_reg[71]_i_16_n_0 ),
        .CO({\radicand_reg[75]_i_16_n_0 ,\radicand_reg[75]_i_16_n_1 ,\radicand_reg[75]_i_16_n_2 ,\radicand_reg[75]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[75]_i_17_n_0 ,\radicand[75]_i_18_n_0 ,\radicand[75]_i_19_n_0 ,\radicand[75]_i_20_n_0 }),
        .O(square_im__8[72:69]),
        .S({\radicand[75]_i_21_n_0 ,\radicand[75]_i_22_n_0 ,\radicand[75]_i_23_n_0 ,\radicand[75]_i_24_n_0 }));
  CARRY4 \radicand_reg[75]_i_2 
       (.CI(\radicand_reg[71]_i_2_n_0 ),
        .CO({\radicand_reg[75]_i_2_n_0 ,\radicand_reg[75]_i_2_n_1 ,\radicand_reg[75]_i_2_n_2 ,\radicand_reg[75]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[75:72]),
        .O(radicand00_in[75:72]),
        .S({\radicand[75]_i_4_n_0 ,\radicand[75]_i_5_n_0 ,\radicand[75]_i_6_n_0 ,\radicand[75]_i_7_n_0 }));
  CARRY4 \radicand_reg[75]_i_3 
       (.CI(\radicand_reg[71]_i_3_n_0 ),
        .CO({\radicand_reg[75]_i_3_n_0 ,\radicand_reg[75]_i_3_n_1 ,\radicand_reg[75]_i_3_n_2 ,\radicand_reg[75]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[75]_i_8_n_0 ,\radicand[75]_i_9_n_0 ,\radicand[75]_i_10_n_0 ,\radicand[75]_i_11_n_0 }),
        .O(square_re__8[72:69]),
        .S({\radicand[75]_i_12_n_0 ,\radicand[75]_i_13_n_0 ,\radicand[75]_i_14_n_0 ,\radicand[75]_i_15_n_0 }));
  FDRE \radicand_reg[76] 
       (.C(clk),
        .CE(root),
        .D(\radicand[76]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[76] ),
        .R(rst_0));
  FDRE \radicand_reg[77] 
       (.C(clk),
        .CE(root),
        .D(\radicand[77]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[77] ),
        .R(rst_0));
  FDRE \radicand_reg[78] 
       (.C(clk),
        .CE(root),
        .D(\radicand[78]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[78] ),
        .R(rst_0));
  FDRE \radicand_reg[79] 
       (.C(clk),
        .CE(root),
        .D(\radicand[79]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[79] ),
        .R(rst_0));
  CARRY4 \radicand_reg[79]_i_16 
       (.CI(\radicand_reg[75]_i_16_n_0 ),
        .CO({\radicand_reg[79]_i_16_n_0 ,\radicand_reg[79]_i_16_n_1 ,\radicand_reg[79]_i_16_n_2 ,\radicand_reg[79]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[79]_i_17_n_0 ,\radicand[79]_i_18_n_0 ,\radicand[79]_i_19_n_0 ,\radicand[79]_i_20_n_0 }),
        .O(square_im__8[76:73]),
        .S({\radicand[79]_i_21_n_0 ,\radicand[79]_i_22_n_0 ,\radicand[79]_i_23_n_0 ,\radicand[79]_i_24_n_0 }));
  CARRY4 \radicand_reg[79]_i_2 
       (.CI(\radicand_reg[75]_i_2_n_0 ),
        .CO({\radicand_reg[79]_i_2_n_0 ,\radicand_reg[79]_i_2_n_1 ,\radicand_reg[79]_i_2_n_2 ,\radicand_reg[79]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[79:76]),
        .O(radicand00_in[79:76]),
        .S({\radicand[79]_i_4_n_0 ,\radicand[79]_i_5_n_0 ,\radicand[79]_i_6_n_0 ,\radicand[79]_i_7_n_0 }));
  CARRY4 \radicand_reg[79]_i_3 
       (.CI(\radicand_reg[75]_i_3_n_0 ),
        .CO({\radicand_reg[79]_i_3_n_0 ,\radicand_reg[79]_i_3_n_1 ,\radicand_reg[79]_i_3_n_2 ,\radicand_reg[79]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[79]_i_8_n_0 ,\radicand[79]_i_9_n_0 ,\radicand[79]_i_10_n_0 ,\radicand[79]_i_11_n_0 }),
        .O(square_re__8[76:73]),
        .S({\radicand[79]_i_12_n_0 ,\radicand[79]_i_13_n_0 ,\radicand[79]_i_14_n_0 ,\radicand[79]_i_15_n_0 }));
  FDRE \radicand_reg[7] 
       (.C(clk),
        .CE(root),
        .D(\radicand[7]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[7] ),
        .R(rst_0));
  CARRY4 \radicand_reg[7]_i_2 
       (.CI(\radicand_reg[3]_i_2_n_0 ),
        .CO({\radicand_reg[7]_i_2_n_0 ,\radicand_reg[7]_i_2_n_1 ,\radicand_reg[7]_i_2_n_2 ,\radicand_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__5_n_98,square_re__5_n_99,square_re__5_n_100,square_re__5_n_101}),
        .O(radicand00_in[7:4]),
        .S({\radicand[7]_i_3_n_0 ,\radicand[7]_i_4_n_0 ,\radicand[7]_i_5_n_0 ,\radicand[7]_i_6_n_0 }));
  FDRE \radicand_reg[80] 
       (.C(clk),
        .CE(root),
        .D(\radicand[80]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[80] ),
        .R(rst_0));
  FDRE \radicand_reg[81] 
       (.C(clk),
        .CE(root),
        .D(\radicand[81]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[81] ),
        .R(rst_0));
  FDRE \radicand_reg[82] 
       (.C(clk),
        .CE(root),
        .D(\radicand[82]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[82] ),
        .R(rst_0));
  FDRE \radicand_reg[83] 
       (.C(clk),
        .CE(root),
        .D(\radicand[83]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[83] ),
        .R(rst_0));
  CARRY4 \radicand_reg[83]_i_16 
       (.CI(\radicand_reg[79]_i_16_n_0 ),
        .CO({\radicand_reg[83]_i_16_n_0 ,\radicand_reg[83]_i_16_n_1 ,\radicand_reg[83]_i_16_n_2 ,\radicand_reg[83]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[83]_i_17_n_0 ,\radicand[83]_i_18_n_0 ,\radicand[83]_i_19_n_0 ,\radicand[83]_i_20_n_0 }),
        .O(square_im__8[80:77]),
        .S({\radicand[83]_i_21_n_0 ,\radicand[83]_i_22_n_0 ,\radicand[83]_i_23_n_0 ,\radicand[83]_i_24_n_0 }));
  CARRY4 \radicand_reg[83]_i_2 
       (.CI(\radicand_reg[79]_i_2_n_0 ),
        .CO({\radicand_reg[83]_i_2_n_0 ,\radicand_reg[83]_i_2_n_1 ,\radicand_reg[83]_i_2_n_2 ,\radicand_reg[83]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[83:80]),
        .O(radicand00_in[83:80]),
        .S({\radicand[83]_i_4_n_0 ,\radicand[83]_i_5_n_0 ,\radicand[83]_i_6_n_0 ,\radicand[83]_i_7_n_0 }));
  CARRY4 \radicand_reg[83]_i_3 
       (.CI(\radicand_reg[79]_i_3_n_0 ),
        .CO({\radicand_reg[83]_i_3_n_0 ,\radicand_reg[83]_i_3_n_1 ,\radicand_reg[83]_i_3_n_2 ,\radicand_reg[83]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\radicand[83]_i_8_n_0 ,\radicand[83]_i_9_n_0 ,\radicand[83]_i_10_n_0 ,\radicand[83]_i_11_n_0 }),
        .O(square_re__8[80:77]),
        .S({\radicand[83]_i_12_n_0 ,\radicand[83]_i_13_n_0 ,\radicand[83]_i_14_n_0 ,\radicand[83]_i_15_n_0 }));
  FDRE \radicand_reg[84] 
       (.C(clk),
        .CE(root),
        .D(\radicand[84]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[84] ),
        .R(rst_0));
  FDRE \radicand_reg[85] 
       (.C(clk),
        .CE(root),
        .D(\radicand[85]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[85] ),
        .R(rst_0));
  FDRE \radicand_reg[86] 
       (.C(clk),
        .CE(root),
        .D(\radicand[86]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[86] ),
        .R(rst_0));
  FDRE \radicand_reg[87] 
       (.C(clk),
        .CE(root),
        .D(\radicand[87]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[87] ),
        .R(rst_0));
  CARRY4 \radicand_reg[87]_i_14 
       (.CI(\radicand_reg[83]_i_16_n_0 ),
        .CO({\radicand_reg[87]_i_14_n_0 ,\radicand_reg[87]_i_14_n_1 ,\radicand_reg[87]_i_14_n_2 ,\radicand_reg[87]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__1_n_90,square_im__1_n_91,\radicand[87]_i_15_n_0 ,\radicand[87]_i_16_n_0 }),
        .O(square_im__8[84:81]),
        .S({\radicand[87]_i_17_n_0 ,\radicand[87]_i_18_n_0 ,\radicand[87]_i_19_n_0 ,\radicand[87]_i_20_n_0 }));
  CARRY4 \radicand_reg[87]_i_2 
       (.CI(\radicand_reg[83]_i_2_n_0 ),
        .CO({\radicand_reg[87]_i_2_n_0 ,\radicand_reg[87]_i_2_n_1 ,\radicand_reg[87]_i_2_n_2 ,\radicand_reg[87]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[87:84]),
        .O(radicand00_in[87:84]),
        .S({\radicand[87]_i_4_n_0 ,\radicand[87]_i_5_n_0 ,\radicand[87]_i_6_n_0 ,\radicand[87]_i_7_n_0 }));
  CARRY4 \radicand_reg[87]_i_3 
       (.CI(\radicand_reg[83]_i_3_n_0 ),
        .CO({\radicand_reg[87]_i_3_n_0 ,\radicand_reg[87]_i_3_n_1 ,\radicand_reg[87]_i_3_n_2 ,\radicand_reg[87]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__1_n_90,square_re__1_n_91,\radicand[87]_i_8_n_0 ,\radicand[87]_i_9_n_0 }),
        .O(square_re__8[84:81]),
        .S({\radicand[87]_i_10_n_0 ,\radicand[87]_i_11_n_0 ,\radicand[87]_i_12_n_0 ,\radicand[87]_i_13_n_0 }));
  FDRE \radicand_reg[88] 
       (.C(clk),
        .CE(root),
        .D(\radicand[88]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[88] ),
        .R(rst_0));
  FDRE \radicand_reg[89] 
       (.C(clk),
        .CE(root),
        .D(\radicand[89]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[89] ),
        .R(rst_0));
  FDRE \radicand_reg[8] 
       (.C(clk),
        .CE(root),
        .D(\radicand[8]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \radicand_reg[90] 
       (.C(clk),
        .CE(root),
        .D(\radicand[90]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[90] ),
        .R(rst_0));
  FDRE \radicand_reg[91] 
       (.C(clk),
        .CE(root),
        .D(\radicand[91]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[91] ),
        .R(rst_0));
  CARRY4 \radicand_reg[91]_i_12 
       (.CI(\radicand_reg[87]_i_14_n_0 ),
        .CO({\radicand_reg[91]_i_12_n_0 ,\radicand_reg[91]_i_12_n_1 ,\radicand_reg[91]_i_12_n_2 ,\radicand_reg[91]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__1_n_86,square_im__1_n_87,square_im__1_n_88,square_im__1_n_89}),
        .O(square_im__8[88:85]),
        .S({\radicand[91]_i_13_n_0 ,\radicand[91]_i_14_n_0 ,\radicand[91]_i_15_n_0 ,\radicand[91]_i_16_n_0 }));
  CARRY4 \radicand_reg[91]_i_2 
       (.CI(\radicand_reg[87]_i_2_n_0 ),
        .CO({\radicand_reg[91]_i_2_n_0 ,\radicand_reg[91]_i_2_n_1 ,\radicand_reg[91]_i_2_n_2 ,\radicand_reg[91]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[91:88]),
        .O(radicand00_in[91:88]),
        .S({\radicand[91]_i_4_n_0 ,\radicand[91]_i_5_n_0 ,\radicand[91]_i_6_n_0 ,\radicand[91]_i_7_n_0 }));
  CARRY4 \radicand_reg[91]_i_3 
       (.CI(\radicand_reg[87]_i_3_n_0 ),
        .CO({\radicand_reg[91]_i_3_n_0 ,\radicand_reg[91]_i_3_n_1 ,\radicand_reg[91]_i_3_n_2 ,\radicand_reg[91]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__1_n_86,square_re__1_n_87,square_re__1_n_88,square_re__1_n_89}),
        .O(square_re__8[88:85]),
        .S({\radicand[91]_i_8_n_0 ,\radicand[91]_i_9_n_0 ,\radicand[91]_i_10_n_0 ,\radicand[91]_i_11_n_0 }));
  FDRE \radicand_reg[92] 
       (.C(clk),
        .CE(root),
        .D(\radicand[92]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[92] ),
        .R(rst_0));
  FDRE \radicand_reg[93] 
       (.C(clk),
        .CE(root),
        .D(\radicand[93]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[93] ),
        .R(rst_0));
  FDRE \radicand_reg[94] 
       (.C(clk),
        .CE(root),
        .D(\radicand[94]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[94] ),
        .R(rst_0));
  FDRE \radicand_reg[95] 
       (.C(clk),
        .CE(root),
        .D(\radicand[95]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[95] ),
        .R(rst_0));
  CARRY4 \radicand_reg[95]_i_12 
       (.CI(\radicand_reg[91]_i_12_n_0 ),
        .CO({\radicand_reg[95]_i_12_n_0 ,\radicand_reg[95]_i_12_n_1 ,\radicand_reg[95]_i_12_n_2 ,\radicand_reg[95]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__1_n_82,square_im__1_n_83,square_im__1_n_84,square_im__1_n_85}),
        .O(square_im__8[92:89]),
        .S({\radicand[95]_i_13_n_0 ,\radicand[95]_i_14_n_0 ,\radicand[95]_i_15_n_0 ,\radicand[95]_i_16_n_0 }));
  CARRY4 \radicand_reg[95]_i_2 
       (.CI(\radicand_reg[91]_i_2_n_0 ),
        .CO({\radicand_reg[95]_i_2_n_0 ,\radicand_reg[95]_i_2_n_1 ,\radicand_reg[95]_i_2_n_2 ,\radicand_reg[95]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(square_re__8[95:92]),
        .O(radicand00_in[95:92]),
        .S({\radicand[95]_i_4_n_0 ,\radicand[95]_i_5_n_0 ,\radicand[95]_i_6_n_0 ,\radicand[95]_i_7_n_0 }));
  CARRY4 \radicand_reg[95]_i_3 
       (.CI(\radicand_reg[91]_i_3_n_0 ),
        .CO({\radicand_reg[95]_i_3_n_0 ,\radicand_reg[95]_i_3_n_1 ,\radicand_reg[95]_i_3_n_2 ,\radicand_reg[95]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__1_n_82,square_re__1_n_83,square_re__1_n_84,square_re__1_n_85}),
        .O(square_re__8[92:89]),
        .S({\radicand[95]_i_8_n_0 ,\radicand[95]_i_9_n_0 ,\radicand[95]_i_10_n_0 ,\radicand[95]_i_11_n_0 }));
  FDRE \radicand_reg[96] 
       (.C(clk),
        .CE(root),
        .D(\radicand[96]_i_1_n_0 ),
        .Q(root_shift[0]),
        .R(rst_0));
  FDRE \radicand_reg[97] 
       (.C(clk),
        .CE(root),
        .D(\radicand[97]_i_1_n_0 ),
        .Q(root_shift[1]),
        .R(rst_0));
  CARRY4 \radicand_reg[97]_i_10 
       (.CI(\radicand_reg[97]_i_12_n_0 ),
        .CO(\NLW_radicand_reg[97]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_radicand_reg[97]_i_10_O_UNCONNECTED [3:1],square_im__1_0[1]}),
        .S({1'b0,1'b0,1'b0,\radicand[97]_i_13_n_0 }));
  CARRY4 \radicand_reg[97]_i_11 
       (.CI(\radicand_reg[97]_i_3_n_0 ),
        .CO(\NLW_radicand_reg[97]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_radicand_reg[97]_i_11_O_UNCONNECTED [3:1],square_re__1_0[1]}),
        .S({1'b0,1'b0,1'b0,\radicand[97]_i_14_n_0 }));
  CARRY4 \radicand_reg[97]_i_12 
       (.CI(\radicand_reg[95]_i_12_n_0 ),
        .CO({\radicand_reg[97]_i_12_n_0 ,\radicand_reg[97]_i_12_n_1 ,\radicand_reg[97]_i_12_n_2 ,\radicand_reg[97]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({square_im__1_n_78,square_im__1_n_79,square_im__1_n_80,square_im__1_n_81}),
        .O({square_im__1_0[0],square_im__8[95:93]}),
        .S({\radicand[97]_i_15_n_0 ,\radicand[97]_i_16_n_0 ,\radicand[97]_i_17_n_0 ,\radicand[97]_i_18_n_0 }));
  CARRY4 \radicand_reg[97]_i_2 
       (.CI(\radicand_reg[95]_i_2_n_0 ),
        .CO({\NLW_radicand_reg[97]_i_2_CO_UNCONNECTED [3:1],\radicand_reg[97]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,square_re__1_0[0]}),
        .O({\NLW_radicand_reg[97]_i_2_O_UNCONNECTED [3:2],radicand00_in[97:96]}),
        .S({1'b0,1'b0,S}));
  CARRY4 \radicand_reg[97]_i_3 
       (.CI(\radicand_reg[95]_i_3_n_0 ),
        .CO({\radicand_reg[97]_i_3_n_0 ,\radicand_reg[97]_i_3_n_1 ,\radicand_reg[97]_i_3_n_2 ,\radicand_reg[97]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({square_re__1_n_78,square_re__1_n_79,square_re__1_n_80,square_re__1_n_81}),
        .O({square_re__1_0[0],square_re__8[95:93]}),
        .S({\radicand[97]_i_6_n_0 ,\radicand[97]_i_7_n_0 ,\radicand[97]_i_8_n_0 ,\radicand[97]_i_9_n_0 }));
  FDRE \radicand_reg[9] 
       (.C(clk),
        .CE(root),
        .D(\radicand[9]_i_1_n_0 ),
        .Q(\radicand_reg_n_0_[9] ),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ri0
       (.A({ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ri0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ri0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ri0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ri0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ri0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ri0_OVERFLOW_UNCONNECTED),
        .P({ri0_n_58,ri0_n_59,ri0_n_60,ri0_n_61,ri0_n_62,ri0_n_63,ri0_n_64,ri0_n_65,ri0_n_66,ri0_n_67,ri0_n_68,ri0_n_69,ri0_n_70,ri0_n_71,ri0_n_72,ri0_n_73,ri0_n_74,ri0_n_75,ri0_n_76,ri0_n_77,ri0_n_78,ri0_n_79,ri0_n_80,ri0_n_81,ri0_n_82,ri0_n_83,ri0_n_84,ri0_n_85,ri0_n_86,ri0_n_87,ri0_n_88,ri0_n_89,ri0_n_90,ri0_n_91,ri0_n_92,ri0_n_93,ri0_n_94,ri0_n_95,ri0_n_96,ri0_n_97,ri0_n_98,ri0_n_99,ri0_n_100,ri0_n_101,ri0_n_102,ri0_n_103,ri0_n_104,ri0_n_105}),
        .PATTERNBDETECT(NLW_ri0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ri0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({ri0_n_106,ri0_n_107,ri0_n_108,ri0_n_109,ri0_n_110,ri0_n_111,ri0_n_112,ri0_n_113,ri0_n_114,ri0_n_115,ri0_n_116,ri0_n_117,ri0_n_118,ri0_n_119,ri0_n_120,ri0_n_121,ri0_n_122,ri0_n_123,ri0_n_124,ri0_n_125,ri0_n_126,ri0_n_127,ri0_n_128,ri0_n_129,ri0_n_130,ri0_n_131,ri0_n_132,ri0_n_133,ri0_n_134,ri0_n_135,ri0_n_136,ri0_n_137,ri0_n_138,ri0_n_139,ri0_n_140,ri0_n_141,ri0_n_142,ri0_n_143,ri0_n_144,ri0_n_145,ri0_n_146,ri0_n_147,ri0_n_148,ri0_n_149,ri0_n_150,ri0_n_151,ri0_n_152,ri0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ri0_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0002)) 
    \ri[16]_i_1 
       (.I0(calculating),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(CEP));
  LUT5 #(
    .INIT(32'h00000800)) 
    \ri[16]_i_2 
       (.I0(\ri[16]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0] [1]),
        .I2(\FSM_sequential_state_reg[0] [0]),
        .I3(\FSM_sequential_state_reg[0] [3]),
        .I4(\FSM_sequential_state_reg[0] [2]),
        .O(calculating));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ri[16]_i_3 
       (.I0(rst),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(weight_out_valid),
        .I5(calculating_reg_1),
        .O(\ri[16]_i_3_n_0 ));
  FDRE \ri_reg[0] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_105),
        .Q(\ri_reg_n_0_[0] ),
        .R(rst_0));
  FDRE \ri_reg[10] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_95),
        .Q(\ri_reg_n_0_[10] ),
        .R(rst_0));
  FDRE \ri_reg[11] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_94),
        .Q(\ri_reg_n_0_[11] ),
        .R(rst_0));
  FDRE \ri_reg[12] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_93),
        .Q(\ri_reg_n_0_[12] ),
        .R(rst_0));
  FDRE \ri_reg[13] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_92),
        .Q(\ri_reg_n_0_[13] ),
        .R(rst_0));
  FDRE \ri_reg[14] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_91),
        .Q(\ri_reg_n_0_[14] ),
        .R(rst_0));
  FDRE \ri_reg[15] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_90),
        .Q(\ri_reg_n_0_[15] ),
        .R(rst_0));
  FDRE \ri_reg[16] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_89),
        .Q(\ri_reg_n_0_[16] ),
        .R(rst_0));
  FDRE \ri_reg[1] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_104),
        .Q(\ri_reg_n_0_[1] ),
        .R(rst_0));
  FDRE \ri_reg[2] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_103),
        .Q(\ri_reg_n_0_[2] ),
        .R(rst_0));
  FDRE \ri_reg[3] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_102),
        .Q(\ri_reg_n_0_[3] ),
        .R(rst_0));
  FDRE \ri_reg[4] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_101),
        .Q(\ri_reg_n_0_[4] ),
        .R(rst_0));
  FDRE \ri_reg[5] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_100),
        .Q(\ri_reg_n_0_[5] ),
        .R(rst_0));
  FDRE \ri_reg[6] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_99),
        .Q(\ri_reg_n_0_[6] ),
        .R(rst_0));
  FDRE \ri_reg[7] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_98),
        .Q(\ri_reg_n_0_[7] ),
        .R(rst_0));
  FDRE \ri_reg[8] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_97),
        .Q(\ri_reg_n_0_[8] ),
        .R(rst_0));
  FDRE \ri_reg[9] 
       (.C(clk),
        .CE(CEP),
        .D(ri0_n_96),
        .Q(\ri_reg_n_0_[9] ),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ri_reg__0
       (.A({ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47],ii0_0[47:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ri_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ri_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ri_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ri_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ri_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ri_reg__0_OVERFLOW_UNCONNECTED),
        .P({ri_reg__0_n_58,ri_reg__0_n_59,ri_reg__0_n_60,ri_reg__0_n_61,ri_reg__0_n_62,ri_reg__0_n_63,ri_reg__0_n_64,ri_reg__0_n_65,ri_reg__0_n_66,ri_reg__0_n_67,ri_reg__0_n_68,ri_reg__0_n_69,ri_reg__0_n_70,ri_reg__0_n_71,ri_reg__0_n_72,ri_reg__0_n_73,ri_reg__0_n_74,ri_reg__0__0}),
        .PATTERNBDETECT(NLW_ri_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ri_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({ri0_n_106,ri0_n_107,ri0_n_108,ri0_n_109,ri0_n_110,ri0_n_111,ri0_n_112,ri0_n_113,ri0_n_114,ri0_n_115,ri0_n_116,ri0_n_117,ri0_n_118,ri0_n_119,ri0_n_120,ri0_n_121,ri0_n_122,ri0_n_123,ri0_n_124,ri0_n_125,ri0_n_126,ri0_n_127,ri0_n_128,ri0_n_129,ri0_n_130,ri0_n_131,ri0_n_132,ri0_n_133,ri0_n_134,ri0_n_135,ri0_n_136,ri0_n_137,ri0_n_138,ri0_n_139,ri0_n_140,ri0_n_141,ri0_n_142,ri0_n_143,ri0_n_144,ri0_n_145,ri0_n_146,ri0_n_147,ri0_n_148,ri0_n_149,ri0_n_150,ri0_n_151,ri0_n_152,ri0_n_153}),
        .PCOUT(NLW_ri_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_0),
        .UNDERFLOW(NLW_ri_reg__0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[0]_i_1 
       (.I0(\state_reg[0]_rep__0_n_0 ),
        .I1(root_next__0),
        .O(\root[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_10 
       (.I0(root_next[44]),
        .I1(root_shift[45]),
        .I2(root_shift[44]),
        .I3(root_next[43]),
        .O(\root[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_11 
       (.I0(root_next[42]),
        .I1(root_shift[43]),
        .I2(root_shift[42]),
        .I3(root_next[41]),
        .O(\root[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_12 
       (.I0(root_next[40]),
        .I1(root_shift[41]),
        .I2(root_shift[40]),
        .I3(root_next[39]),
        .O(\root[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_13 
       (.I0(root_shift[47]),
        .I1(root_next[46]),
        .I2(root_shift[46]),
        .I3(root_next[45]),
        .O(\root[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_14 
       (.I0(root_shift[45]),
        .I1(root_next[44]),
        .I2(root_shift[44]),
        .I3(root_next[43]),
        .O(\root[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_15 
       (.I0(root_shift[43]),
        .I1(root_next[42]),
        .I2(root_shift[42]),
        .I3(root_next[41]),
        .O(\root[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_16 
       (.I0(root_shift[41]),
        .I1(root_next[40]),
        .I2(root_shift[40]),
        .I3(root_next[39]),
        .O(\root[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_18 
       (.I0(root_next[38]),
        .I1(root_shift[39]),
        .I2(root_shift[38]),
        .I3(root_next[37]),
        .O(\root[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_19 
       (.I0(root_next[36]),
        .I1(root_shift[37]),
        .I2(root_shift[36]),
        .I3(root_next[35]),
        .O(\root[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_20 
       (.I0(root_next[34]),
        .I1(root_shift[35]),
        .I2(root_shift[34]),
        .I3(root_next[33]),
        .O(\root[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_21 
       (.I0(root_next[32]),
        .I1(root_shift[33]),
        .I2(root_shift[32]),
        .I3(root_next[31]),
        .O(\root[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_22 
       (.I0(root_shift[39]),
        .I1(root_next[38]),
        .I2(root_shift[38]),
        .I3(root_next[37]),
        .O(\root[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_23 
       (.I0(root_shift[37]),
        .I1(root_next[36]),
        .I2(root_shift[36]),
        .I3(root_next[35]),
        .O(\root[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_24 
       (.I0(root_shift[35]),
        .I1(root_next[34]),
        .I2(root_shift[34]),
        .I3(root_next[33]),
        .O(\root[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_25 
       (.I0(root_shift[33]),
        .I1(root_next[32]),
        .I2(root_shift[32]),
        .I3(root_next[31]),
        .O(\root[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_27 
       (.I0(root_next[30]),
        .I1(root_shift[31]),
        .I2(root_shift[30]),
        .I3(root_next[29]),
        .O(\root[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_28 
       (.I0(root_next[28]),
        .I1(root_shift[29]),
        .I2(root_shift[28]),
        .I3(root_next[27]),
        .O(\root[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_29 
       (.I0(root_next[26]),
        .I1(root_shift[27]),
        .I2(root_shift[26]),
        .I3(root_next[25]),
        .O(\root[0]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_30 
       (.I0(root_next[24]),
        .I1(root_shift[25]),
        .I2(root_shift[24]),
        .I3(root_next[23]),
        .O(\root[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_31 
       (.I0(root_shift[31]),
        .I1(root_next[30]),
        .I2(root_shift[30]),
        .I3(root_next[29]),
        .O(\root[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_32 
       (.I0(root_shift[29]),
        .I1(root_next[28]),
        .I2(root_shift[28]),
        .I3(root_next[27]),
        .O(\root[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_33 
       (.I0(root_shift[27]),
        .I1(root_next[26]),
        .I2(root_shift[26]),
        .I3(root_next[25]),
        .O(\root[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_34 
       (.I0(root_shift[25]),
        .I1(root_next[24]),
        .I2(root_shift[24]),
        .I3(root_next[23]),
        .O(\root[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_36 
       (.I0(root_next[22]),
        .I1(root_shift[23]),
        .I2(root_shift[22]),
        .I3(root_next[21]),
        .O(\root[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_37 
       (.I0(root_next[20]),
        .I1(root_shift[21]),
        .I2(root_shift[20]),
        .I3(root_next[19]),
        .O(\root[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_38 
       (.I0(root_next[18]),
        .I1(root_shift[19]),
        .I2(root_shift[18]),
        .I3(root_next[17]),
        .O(\root[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_39 
       (.I0(root_next[16]),
        .I1(root_shift[17]),
        .I2(root_shift[16]),
        .I3(root_next[15]),
        .O(\root[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \root[0]_i_4 
       (.I0(root_shift[50]),
        .I1(\root_reg_n_0_[48] ),
        .O(\root[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_40 
       (.I0(root_shift[23]),
        .I1(root_next[22]),
        .I2(root_shift[22]),
        .I3(root_next[21]),
        .O(\root[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_41 
       (.I0(root_shift[21]),
        .I1(root_next[20]),
        .I2(root_shift[20]),
        .I3(root_next[19]),
        .O(\root[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_42 
       (.I0(root_shift[19]),
        .I1(root_next[18]),
        .I2(root_shift[18]),
        .I3(root_next[17]),
        .O(\root[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_43 
       (.I0(root_shift[17]),
        .I1(root_next[16]),
        .I2(root_shift[16]),
        .I3(root_next[15]),
        .O(\root[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_45 
       (.I0(root_next[14]),
        .I1(root_shift[15]),
        .I2(root_shift[14]),
        .I3(root_next[13]),
        .O(\root[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_46 
       (.I0(root_next[12]),
        .I1(root_shift[13]),
        .I2(root_shift[12]),
        .I3(root_next[11]),
        .O(\root[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_47 
       (.I0(root_next[10]),
        .I1(root_shift[11]),
        .I2(root_shift[10]),
        .I3(root_next[9]),
        .O(\root[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_48 
       (.I0(root_next[8]),
        .I1(root_shift[9]),
        .I2(root_shift[8]),
        .I3(root_next[7]),
        .O(\root[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_49 
       (.I0(root_shift[15]),
        .I1(root_next[14]),
        .I2(root_shift[14]),
        .I3(root_next[13]),
        .O(\root[0]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \root[0]_i_5 
       (.I0(root_shift[49]),
        .I1(root_next[48]),
        .I2(root_shift[48]),
        .I3(root_next[47]),
        .O(\root[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_50 
       (.I0(root_shift[13]),
        .I1(root_next[12]),
        .I2(root_shift[12]),
        .I3(root_next[11]),
        .O(\root[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_51 
       (.I0(root_shift[11]),
        .I1(root_next[10]),
        .I2(root_shift[10]),
        .I3(root_next[9]),
        .O(\root[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_52 
       (.I0(root_shift[9]),
        .I1(root_next[8]),
        .I2(root_shift[8]),
        .I3(root_next[7]),
        .O(\root[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_53 
       (.I0(root_next[6]),
        .I1(root_shift[7]),
        .I2(root_shift[6]),
        .I3(root_next[5]),
        .O(\root[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_54 
       (.I0(root_next[4]),
        .I1(root_shift[5]),
        .I2(root_shift[4]),
        .I3(root_next[3]),
        .O(\root[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_55 
       (.I0(root_next[2]),
        .I1(root_shift[3]),
        .I2(root_shift[2]),
        .I3(root_next[1]),
        .O(\root[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_56 
       (.I0(root_shift[7]),
        .I1(root_next[6]),
        .I2(root_shift[6]),
        .I3(root_next[5]),
        .O(\root[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_57 
       (.I0(root_shift[5]),
        .I1(root_next[4]),
        .I2(root_shift[4]),
        .I3(root_next[3]),
        .O(\root[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_58 
       (.I0(root_shift[3]),
        .I1(root_next[2]),
        .I2(root_shift[2]),
        .I3(root_next[1]),
        .O(\root[0]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \root[0]_i_59 
       (.I0(root_shift[0]),
        .I1(root_shift[1]),
        .O(\root[0]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root[0]_i_6 
       (.I0(\root_reg_n_0_[48] ),
        .I1(root_shift[50]),
        .O(\root[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \root[0]_i_7 
       (.I0(root_next[48]),
        .I1(root_shift[49]),
        .I2(root_next[47]),
        .I3(root_shift[48]),
        .O(\root[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \root[0]_i_9 
       (.I0(root_next[46]),
        .I1(root_shift[47]),
        .I2(root_shift[46]),
        .I3(root_next[45]),
        .O(\root[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[10]_i_1 
       (.I0(root_next[10]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[11]_i_1 
       (.I0(root_next[11]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[12]_i_1 
       (.I0(root_next[12]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[13]_i_1 
       (.I0(root_next[13]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[14]_i_1 
       (.I0(root_next[14]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[15]_i_1 
       (.I0(root_next[15]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[16]_i_1 
       (.I0(root_next[16]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[17]_i_1 
       (.I0(root_next[17]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[18]_i_1 
       (.I0(root_next[18]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[19]_i_1 
       (.I0(root_next[19]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[1]_i_1 
       (.I0(root_next[1]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[20]_i_1 
       (.I0(root_next[20]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[21]_i_1 
       (.I0(root_next[21]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[22]_i_1 
       (.I0(root_next[22]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[23]_i_1 
       (.I0(root_next[23]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[24]_i_1 
       (.I0(root_next[24]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[25]_i_1 
       (.I0(root_next[25]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[26]_i_1 
       (.I0(root_next[26]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[27]_i_1 
       (.I0(root_next[27]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[28]_i_1 
       (.I0(root_next[28]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[29]_i_1 
       (.I0(root_next[29]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[2]_i_1 
       (.I0(root_next[2]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[30]_i_1 
       (.I0(root_next[30]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[31]_i_1 
       (.I0(root_next[31]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[32]_i_1 
       (.I0(root_next[32]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[33]_i_1 
       (.I0(root_next[33]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[34]_i_1 
       (.I0(root_next[34]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[35]_i_1 
       (.I0(root_next[35]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[36]_i_1 
       (.I0(root_next[36]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[37]_i_1 
       (.I0(root_next[37]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[38]_i_1 
       (.I0(root_next[38]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[39]_i_1 
       (.I0(root_next[39]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[3]_i_1 
       (.I0(root_next[3]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[40]_i_1 
       (.I0(root_next[40]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[41]_i_1 
       (.I0(root_next[41]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[42]_i_1 
       (.I0(root_next[42]),
        .I1(\state_reg[0]_rep_n_0 ),
        .O(\root[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[43]_i_1 
       (.I0(root_next[43]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[44]_i_1 
       (.I0(root_next[44]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[45]_i_1 
       (.I0(root_next[45]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[46]_i_1 
       (.I0(root_next[46]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[47]_i_1 
       (.I0(root_next[47]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[47]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \root[48]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(root));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[48]_i_2 
       (.I0(root_next[48]),
        .I1(\state_reg[0]_rep_n_0 ),
        .O(\root[48]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[4]_i_1 
       (.I0(root_next[4]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[5]_i_1 
       (.I0(root_next[5]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[6]_i_1 
       (.I0(root_next[6]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[7]_i_1 
       (.I0(root_next[7]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[8]_i_1 
       (.I0(root_next[8]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \root[9]_i_1 
       (.I0(root_next[9]),
        .I1(\state_reg[0]_rep__0_n_0 ),
        .O(\root[9]_i_1_n_0 ));
  FDRE \root_reg[0] 
       (.C(clk),
        .CE(root),
        .D(\root[0]_i_1_n_0 ),
        .Q(root_next[1]),
        .R(rst_0));
  CARRY4 \root_reg[0]_i_17 
       (.CI(\root_reg[0]_i_26_n_0 ),
        .CO({\root_reg[0]_i_17_n_0 ,\root_reg[0]_i_17_n_1 ,\root_reg[0]_i_17_n_2 ,\root_reg[0]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\root[0]_i_27_n_0 ,\root[0]_i_28_n_0 ,\root[0]_i_29_n_0 ,\root[0]_i_30_n_0 }),
        .O(\NLW_root_reg[0]_i_17_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_31_n_0 ,\root[0]_i_32_n_0 ,\root[0]_i_33_n_0 ,\root[0]_i_34_n_0 }));
  CARRY4 \root_reg[0]_i_2 
       (.CI(\root_reg[0]_i_3_n_0 ),
        .CO({\NLW_root_reg[0]_i_2_CO_UNCONNECTED [3:2],root_next__0,\root_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\root[0]_i_4_n_0 ,\root[0]_i_5_n_0 }),
        .O(\NLW_root_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\root[0]_i_6_n_0 ,\root[0]_i_7_n_0 }));
  CARRY4 \root_reg[0]_i_26 
       (.CI(\root_reg[0]_i_35_n_0 ),
        .CO({\root_reg[0]_i_26_n_0 ,\root_reg[0]_i_26_n_1 ,\root_reg[0]_i_26_n_2 ,\root_reg[0]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\root[0]_i_36_n_0 ,\root[0]_i_37_n_0 ,\root[0]_i_38_n_0 ,\root[0]_i_39_n_0 }),
        .O(\NLW_root_reg[0]_i_26_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_40_n_0 ,\root[0]_i_41_n_0 ,\root[0]_i_42_n_0 ,\root[0]_i_43_n_0 }));
  CARRY4 \root_reg[0]_i_3 
       (.CI(\root_reg[0]_i_8_n_0 ),
        .CO({\root_reg[0]_i_3_n_0 ,\root_reg[0]_i_3_n_1 ,\root_reg[0]_i_3_n_2 ,\root_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\root[0]_i_9_n_0 ,\root[0]_i_10_n_0 ,\root[0]_i_11_n_0 ,\root[0]_i_12_n_0 }),
        .O(\NLW_root_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_13_n_0 ,\root[0]_i_14_n_0 ,\root[0]_i_15_n_0 ,\root[0]_i_16_n_0 }));
  CARRY4 \root_reg[0]_i_35 
       (.CI(\root_reg[0]_i_44_n_0 ),
        .CO({\root_reg[0]_i_35_n_0 ,\root_reg[0]_i_35_n_1 ,\root_reg[0]_i_35_n_2 ,\root_reg[0]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\root[0]_i_45_n_0 ,\root[0]_i_46_n_0 ,\root[0]_i_47_n_0 ,\root[0]_i_48_n_0 }),
        .O(\NLW_root_reg[0]_i_35_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_49_n_0 ,\root[0]_i_50_n_0 ,\root[0]_i_51_n_0 ,\root[0]_i_52_n_0 }));
  CARRY4 \root_reg[0]_i_44 
       (.CI(1'b0),
        .CO({\root_reg[0]_i_44_n_0 ,\root_reg[0]_i_44_n_1 ,\root_reg[0]_i_44_n_2 ,\root_reg[0]_i_44_n_3 }),
        .CYINIT(1'b1),
        .DI({\root[0]_i_53_n_0 ,\root[0]_i_54_n_0 ,\root[0]_i_55_n_0 ,root_shift[1]}),
        .O(\NLW_root_reg[0]_i_44_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_56_n_0 ,\root[0]_i_57_n_0 ,\root[0]_i_58_n_0 ,\root[0]_i_59_n_0 }));
  CARRY4 \root_reg[0]_i_8 
       (.CI(\root_reg[0]_i_17_n_0 ),
        .CO({\root_reg[0]_i_8_n_0 ,\root_reg[0]_i_8_n_1 ,\root_reg[0]_i_8_n_2 ,\root_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\root[0]_i_18_n_0 ,\root[0]_i_19_n_0 ,\root[0]_i_20_n_0 ,\root[0]_i_21_n_0 }),
        .O(\NLW_root_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\root[0]_i_22_n_0 ,\root[0]_i_23_n_0 ,\root[0]_i_24_n_0 ,\root[0]_i_25_n_0 }));
  FDRE \root_reg[10] 
       (.C(clk),
        .CE(root),
        .D(\root[10]_i_1_n_0 ),
        .Q(root_next[11]),
        .R(rst_0));
  FDRE \root_reg[11] 
       (.C(clk),
        .CE(root),
        .D(\root[11]_i_1_n_0 ),
        .Q(root_next[12]),
        .R(rst_0));
  FDRE \root_reg[12] 
       (.C(clk),
        .CE(root),
        .D(\root[12]_i_1_n_0 ),
        .Q(root_next[13]),
        .R(rst_0));
  FDRE \root_reg[13] 
       (.C(clk),
        .CE(root),
        .D(\root[13]_i_1_n_0 ),
        .Q(root_next[14]),
        .R(rst_0));
  FDRE \root_reg[14] 
       (.C(clk),
        .CE(root),
        .D(\root[14]_i_1_n_0 ),
        .Q(root_next[15]),
        .R(rst_0));
  FDRE \root_reg[15] 
       (.C(clk),
        .CE(root),
        .D(\root[15]_i_1_n_0 ),
        .Q(root_next[16]),
        .R(rst_0));
  FDRE \root_reg[16] 
       (.C(clk),
        .CE(root),
        .D(\root[16]_i_1_n_0 ),
        .Q(root_next[17]),
        .R(rst_0));
  FDRE \root_reg[17] 
       (.C(clk),
        .CE(root),
        .D(\root[17]_i_1_n_0 ),
        .Q(root_next[18]),
        .R(rst_0));
  FDRE \root_reg[18] 
       (.C(clk),
        .CE(root),
        .D(\root[18]_i_1_n_0 ),
        .Q(root_next[19]),
        .R(rst_0));
  FDRE \root_reg[19] 
       (.C(clk),
        .CE(root),
        .D(\root[19]_i_1_n_0 ),
        .Q(root_next[20]),
        .R(rst_0));
  FDRE \root_reg[1] 
       (.C(clk),
        .CE(root),
        .D(\root[1]_i_1_n_0 ),
        .Q(root_next[2]),
        .R(rst_0));
  FDRE \root_reg[20] 
       (.C(clk),
        .CE(root),
        .D(\root[20]_i_1_n_0 ),
        .Q(root_next[21]),
        .R(rst_0));
  FDRE \root_reg[21] 
       (.C(clk),
        .CE(root),
        .D(\root[21]_i_1_n_0 ),
        .Q(root_next[22]),
        .R(rst_0));
  FDRE \root_reg[22] 
       (.C(clk),
        .CE(root),
        .D(\root[22]_i_1_n_0 ),
        .Q(root_next[23]),
        .R(rst_0));
  FDRE \root_reg[23] 
       (.C(clk),
        .CE(root),
        .D(\root[23]_i_1_n_0 ),
        .Q(root_next[24]),
        .R(rst_0));
  FDRE \root_reg[24] 
       (.C(clk),
        .CE(root),
        .D(\root[24]_i_1_n_0 ),
        .Q(root_next[25]),
        .R(rst_0));
  FDRE \root_reg[25] 
       (.C(clk),
        .CE(root),
        .D(\root[25]_i_1_n_0 ),
        .Q(root_next[26]),
        .R(rst_0));
  FDRE \root_reg[26] 
       (.C(clk),
        .CE(root),
        .D(\root[26]_i_1_n_0 ),
        .Q(root_next[27]),
        .R(rst_0));
  FDRE \root_reg[27] 
       (.C(clk),
        .CE(root),
        .D(\root[27]_i_1_n_0 ),
        .Q(root_next[28]),
        .R(rst_0));
  FDRE \root_reg[28] 
       (.C(clk),
        .CE(root),
        .D(\root[28]_i_1_n_0 ),
        .Q(root_next[29]),
        .R(rst_0));
  FDRE \root_reg[29] 
       (.C(clk),
        .CE(root),
        .D(\root[29]_i_1_n_0 ),
        .Q(root_next[30]),
        .R(rst_0));
  FDRE \root_reg[2] 
       (.C(clk),
        .CE(root),
        .D(\root[2]_i_1_n_0 ),
        .Q(root_next[3]),
        .R(rst_0));
  FDRE \root_reg[30] 
       (.C(clk),
        .CE(root),
        .D(\root[30]_i_1_n_0 ),
        .Q(root_next[31]),
        .R(rst_0));
  FDRE \root_reg[31] 
       (.C(clk),
        .CE(root),
        .D(\root[31]_i_1_n_0 ),
        .Q(root_next[32]),
        .R(rst_0));
  FDRE \root_reg[32] 
       (.C(clk),
        .CE(root),
        .D(\root[32]_i_1_n_0 ),
        .Q(root_next[33]),
        .R(rst_0));
  FDRE \root_reg[33] 
       (.C(clk),
        .CE(root),
        .D(\root[33]_i_1_n_0 ),
        .Q(root_next[34]),
        .R(rst_0));
  FDRE \root_reg[34] 
       (.C(clk),
        .CE(root),
        .D(\root[34]_i_1_n_0 ),
        .Q(root_next[35]),
        .R(rst_0));
  FDRE \root_reg[35] 
       (.C(clk),
        .CE(root),
        .D(\root[35]_i_1_n_0 ),
        .Q(root_next[36]),
        .R(rst_0));
  FDRE \root_reg[36] 
       (.C(clk),
        .CE(root),
        .D(\root[36]_i_1_n_0 ),
        .Q(root_next[37]),
        .R(rst_0));
  FDRE \root_reg[37] 
       (.C(clk),
        .CE(root),
        .D(\root[37]_i_1_n_0 ),
        .Q(root_next[38]),
        .R(rst_0));
  FDRE \root_reg[38] 
       (.C(clk),
        .CE(root),
        .D(\root[38]_i_1_n_0 ),
        .Q(root_next[39]),
        .R(rst_0));
  FDRE \root_reg[39] 
       (.C(clk),
        .CE(root),
        .D(\root[39]_i_1_n_0 ),
        .Q(root_next[40]),
        .R(rst_0));
  FDRE \root_reg[3] 
       (.C(clk),
        .CE(root),
        .D(\root[3]_i_1_n_0 ),
        .Q(root_next[4]),
        .R(rst_0));
  FDRE \root_reg[40] 
       (.C(clk),
        .CE(root),
        .D(\root[40]_i_1_n_0 ),
        .Q(root_next[41]),
        .R(rst_0));
  FDRE \root_reg[41] 
       (.C(clk),
        .CE(root),
        .D(\root[41]_i_1_n_0 ),
        .Q(root_next[42]),
        .R(rst_0));
  FDRE \root_reg[42] 
       (.C(clk),
        .CE(root),
        .D(\root[42]_i_1_n_0 ),
        .Q(root_next[43]),
        .R(rst_0));
  FDRE \root_reg[43] 
       (.C(clk),
        .CE(root),
        .D(\root[43]_i_1_n_0 ),
        .Q(root_next[44]),
        .R(rst_0));
  FDRE \root_reg[44] 
       (.C(clk),
        .CE(root),
        .D(\root[44]_i_1_n_0 ),
        .Q(root_next[45]),
        .R(rst_0));
  FDRE \root_reg[45] 
       (.C(clk),
        .CE(root),
        .D(\root[45]_i_1_n_0 ),
        .Q(root_next[46]),
        .R(rst_0));
  FDRE \root_reg[46] 
       (.C(clk),
        .CE(root),
        .D(\root[46]_i_1_n_0 ),
        .Q(root_next[47]),
        .R(rst_0));
  FDRE \root_reg[47] 
       (.C(clk),
        .CE(root),
        .D(\root[47]_i_1_n_0 ),
        .Q(root_next[48]),
        .R(rst_0));
  FDRE \root_reg[48] 
       (.C(clk),
        .CE(root),
        .D(\root[48]_i_2_n_0 ),
        .Q(\root_reg_n_0_[48] ),
        .R(rst_0));
  FDRE \root_reg[4] 
       (.C(clk),
        .CE(root),
        .D(\root[4]_i_1_n_0 ),
        .Q(root_next[5]),
        .R(rst_0));
  FDRE \root_reg[5] 
       (.C(clk),
        .CE(root),
        .D(\root[5]_i_1_n_0 ),
        .Q(root_next[6]),
        .R(rst_0));
  FDRE \root_reg[6] 
       (.C(clk),
        .CE(root),
        .D(\root[6]_i_1_n_0 ),
        .Q(root_next[7]),
        .R(rst_0));
  FDRE \root_reg[7] 
       (.C(clk),
        .CE(root),
        .D(\root[7]_i_1_n_0 ),
        .Q(root_next[8]),
        .R(rst_0));
  FDRE \root_reg[8] 
       (.C(clk),
        .CE(root),
        .D(\root[8]_i_1_n_0 ),
        .Q(root_next[9]),
        .R(rst_0));
  FDRE \root_reg[9] 
       (.C(clk),
        .CE(root),
        .D(\root[9]_i_1_n_0 ),
        .Q(root_next[10]),
        .R(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \root_rem[0]_i_1 
       (.I0(root_next__0),
        .I1(root_shift[0]),
        .I2(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[10]_i_1 
       (.I0(root_shift[10]),
        .I1(root_next__0),
        .I2(root_rem_next0[10]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[11]_i_1 
       (.I0(root_shift[11]),
        .I1(root_next__0),
        .I2(root_rem_next0[11]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[12]_i_1 
       (.I0(root_shift[12]),
        .I1(root_next__0),
        .I2(root_rem_next0[12]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[12]_i_3 
       (.I0(root_shift[12]),
        .I1(root_next[11]),
        .O(\root_rem[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[12]_i_4 
       (.I0(root_shift[11]),
        .I1(root_next[10]),
        .O(\root_rem[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[12]_i_5 
       (.I0(root_shift[10]),
        .I1(root_next[9]),
        .O(\root_rem[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[12]_i_6 
       (.I0(root_shift[9]),
        .I1(root_next[8]),
        .O(\root_rem[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[13]_i_1 
       (.I0(root_shift[13]),
        .I1(root_next__0),
        .I2(root_rem_next0[13]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[14]_i_1 
       (.I0(root_shift[14]),
        .I1(root_next__0),
        .I2(root_rem_next0[14]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[15]_i_1 
       (.I0(root_shift[15]),
        .I1(root_next__0),
        .I2(root_rem_next0[15]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[16]_i_1 
       (.I0(root_shift[16]),
        .I1(root_next__0),
        .I2(root_rem_next0[16]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[16]_i_3 
       (.I0(root_shift[16]),
        .I1(root_next[15]),
        .O(\root_rem[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[16]_i_4 
       (.I0(root_shift[15]),
        .I1(root_next[14]),
        .O(\root_rem[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[16]_i_5 
       (.I0(root_shift[14]),
        .I1(root_next[13]),
        .O(\root_rem[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[16]_i_6 
       (.I0(root_shift[13]),
        .I1(root_next[12]),
        .O(\root_rem[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[17]_i_1 
       (.I0(root_shift[17]),
        .I1(root_next__0),
        .I2(root_rem_next0[17]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[18]_i_1 
       (.I0(root_shift[18]),
        .I1(root_next__0),
        .I2(root_rem_next0[18]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[19]_i_1 
       (.I0(root_shift[19]),
        .I1(root_next__0),
        .I2(root_rem_next0[19]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[1]_i_1 
       (.I0(root_shift[1]),
        .I1(root_next__0),
        .I2(root_rem_next0[1]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[20]_i_1 
       (.I0(root_shift[20]),
        .I1(root_next__0),
        .I2(root_rem_next0[20]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[20]_i_3 
       (.I0(root_shift[20]),
        .I1(root_next[19]),
        .O(\root_rem[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[20]_i_4 
       (.I0(root_shift[19]),
        .I1(root_next[18]),
        .O(\root_rem[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[20]_i_5 
       (.I0(root_shift[18]),
        .I1(root_next[17]),
        .O(\root_rem[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[20]_i_6 
       (.I0(root_shift[17]),
        .I1(root_next[16]),
        .O(\root_rem[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[21]_i_1 
       (.I0(root_shift[21]),
        .I1(root_next__0),
        .I2(root_rem_next0[21]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[22]_i_1 
       (.I0(root_shift[22]),
        .I1(root_next__0),
        .I2(root_rem_next0[22]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[23]_i_1 
       (.I0(root_shift[23]),
        .I1(root_next__0),
        .I2(root_rem_next0[23]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[24]_i_1 
       (.I0(root_shift[24]),
        .I1(root_next__0),
        .I2(root_rem_next0[24]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[24]_i_3 
       (.I0(root_shift[24]),
        .I1(root_next[23]),
        .O(\root_rem[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[24]_i_4 
       (.I0(root_shift[23]),
        .I1(root_next[22]),
        .O(\root_rem[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[24]_i_5 
       (.I0(root_shift[22]),
        .I1(root_next[21]),
        .O(\root_rem[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[24]_i_6 
       (.I0(root_shift[21]),
        .I1(root_next[20]),
        .O(\root_rem[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[25]_i_1 
       (.I0(root_shift[25]),
        .I1(root_next__0),
        .I2(root_rem_next0[25]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[26]_i_1 
       (.I0(root_shift[26]),
        .I1(root_next__0),
        .I2(root_rem_next0[26]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[27]_i_1 
       (.I0(root_shift[27]),
        .I1(root_next__0),
        .I2(root_rem_next0[27]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[28]_i_1 
       (.I0(root_shift[28]),
        .I1(root_next__0),
        .I2(root_rem_next0[28]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[28]_i_3 
       (.I0(root_shift[28]),
        .I1(root_next[27]),
        .O(\root_rem[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[28]_i_4 
       (.I0(root_shift[27]),
        .I1(root_next[26]),
        .O(\root_rem[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[28]_i_5 
       (.I0(root_shift[26]),
        .I1(root_next[25]),
        .O(\root_rem[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[28]_i_6 
       (.I0(root_shift[25]),
        .I1(root_next[24]),
        .O(\root_rem[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[29]_i_1 
       (.I0(root_shift[29]),
        .I1(root_next__0),
        .I2(root_rem_next0[29]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[2]_i_1 
       (.I0(root_shift[2]),
        .I1(root_next__0),
        .I2(root_rem_next0[2]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[30]_i_1 
       (.I0(root_shift[30]),
        .I1(root_next__0),
        .I2(root_rem_next0[30]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[31]_i_1 
       (.I0(root_shift[31]),
        .I1(root_next__0),
        .I2(root_rem_next0[31]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[32]_i_1 
       (.I0(root_shift[32]),
        .I1(root_next__0),
        .I2(root_rem_next0[32]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[32]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[32]_i_3 
       (.I0(root_shift[32]),
        .I1(root_next[31]),
        .O(\root_rem[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[32]_i_4 
       (.I0(root_shift[31]),
        .I1(root_next[30]),
        .O(\root_rem[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[32]_i_5 
       (.I0(root_shift[30]),
        .I1(root_next[29]),
        .O(\root_rem[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[32]_i_6 
       (.I0(root_shift[29]),
        .I1(root_next[28]),
        .O(\root_rem[32]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[33]_i_1 
       (.I0(root_shift[33]),
        .I1(root_next__0),
        .I2(root_rem_next0[33]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[34]_i_1 
       (.I0(root_shift[34]),
        .I1(root_next__0),
        .I2(root_rem_next0[34]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[35]_i_1 
       (.I0(root_shift[35]),
        .I1(root_next__0),
        .I2(root_rem_next0[35]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[36]_i_1 
       (.I0(root_shift[36]),
        .I1(root_next__0),
        .I2(root_rem_next0[36]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[36]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[36]_i_3 
       (.I0(root_shift[36]),
        .I1(root_next[35]),
        .O(\root_rem[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[36]_i_4 
       (.I0(root_shift[35]),
        .I1(root_next[34]),
        .O(\root_rem[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[36]_i_5 
       (.I0(root_shift[34]),
        .I1(root_next[33]),
        .O(\root_rem[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[36]_i_6 
       (.I0(root_shift[33]),
        .I1(root_next[32]),
        .O(\root_rem[36]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[37]_i_1 
       (.I0(root_shift[37]),
        .I1(root_next__0),
        .I2(root_rem_next0[37]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[38]_i_1 
       (.I0(root_shift[38]),
        .I1(root_next__0),
        .I2(root_rem_next0[38]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[39]_i_1 
       (.I0(root_shift[39]),
        .I1(root_next__0),
        .I2(root_rem_next0[39]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[3]_i_1 
       (.I0(root_shift[3]),
        .I1(root_next__0),
        .I2(root_rem_next0[3]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[40]_i_1 
       (.I0(root_shift[40]),
        .I1(root_next__0),
        .I2(root_rem_next0[40]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[40]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[40]_i_3 
       (.I0(root_shift[40]),
        .I1(root_next[39]),
        .O(\root_rem[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[40]_i_4 
       (.I0(root_shift[39]),
        .I1(root_next[38]),
        .O(\root_rem[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[40]_i_5 
       (.I0(root_shift[38]),
        .I1(root_next[37]),
        .O(\root_rem[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[40]_i_6 
       (.I0(root_shift[37]),
        .I1(root_next[36]),
        .O(\root_rem[40]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[41]_i_1 
       (.I0(root_shift[41]),
        .I1(root_next__0),
        .I2(root_rem_next0[41]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[42]_i_1 
       (.I0(root_shift[42]),
        .I1(root_next__0),
        .I2(root_rem_next0[42]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[43]_i_1 
       (.I0(root_shift[43]),
        .I1(root_next__0),
        .I2(root_rem_next0[43]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[44]_i_1 
       (.I0(root_shift[44]),
        .I1(root_next__0),
        .I2(root_rem_next0[44]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[44]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[44]_i_3 
       (.I0(root_shift[44]),
        .I1(root_next[43]),
        .O(\root_rem[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[44]_i_4 
       (.I0(root_shift[43]),
        .I1(root_next[42]),
        .O(\root_rem[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[44]_i_5 
       (.I0(root_shift[42]),
        .I1(root_next[41]),
        .O(\root_rem[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[44]_i_6 
       (.I0(root_shift[41]),
        .I1(root_next[40]),
        .O(\root_rem[44]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[45]_i_1 
       (.I0(root_shift[45]),
        .I1(root_next__0),
        .I2(root_rem_next0[45]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[46]_i_1 
       (.I0(root_shift[46]),
        .I1(root_next__0),
        .I2(root_rem_next0[46]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[47]_i_1 
       (.I0(root_shift[47]),
        .I1(root_next__0),
        .I2(root_rem_next0[47]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[48]_i_1 
       (.I0(root_shift[48]),
        .I1(root_next__0),
        .I2(root_rem_next0[48]),
        .I3(\state_reg[0]_rep_n_0 ),
        .O(\root_rem[48]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[48]_i_3 
       (.I0(root_next[47]),
        .I1(root_shift[48]),
        .O(\root_rem[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[48]_i_4 
       (.I0(root_shift[47]),
        .I1(root_next[46]),
        .O(\root_rem[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[48]_i_5 
       (.I0(root_shift[46]),
        .I1(root_next[45]),
        .O(\root_rem[48]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[48]_i_6 
       (.I0(root_shift[45]),
        .I1(root_next[44]),
        .O(\root_rem[48]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[4]_i_1 
       (.I0(root_shift[4]),
        .I1(root_next__0),
        .I2(root_rem_next0[4]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[4]_i_3 
       (.I0(root_shift[4]),
        .I1(root_next[3]),
        .O(\root_rem[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[4]_i_4 
       (.I0(root_shift[3]),
        .I1(root_next[2]),
        .O(\root_rem[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[4]_i_5 
       (.I0(root_shift[2]),
        .I1(root_next[1]),
        .O(\root_rem[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \root_rem[4]_i_6 
       (.I0(root_shift[1]),
        .O(\root_rem[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[5]_i_1 
       (.I0(root_shift[5]),
        .I1(root_next__0),
        .I2(root_rem_next0[5]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[6]_i_1 
       (.I0(root_shift[6]),
        .I1(root_next__0),
        .I2(root_rem_next0[6]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[7]_i_1 
       (.I0(root_shift[7]),
        .I1(root_next__0),
        .I2(root_rem_next0[7]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[8]_i_1 
       (.I0(root_shift[8]),
        .I1(root_next__0),
        .I2(root_rem_next0[8]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[8]_i_3 
       (.I0(root_shift[8]),
        .I1(root_next[7]),
        .O(\root_rem[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[8]_i_4 
       (.I0(root_shift[7]),
        .I1(root_next[6]),
        .O(\root_rem[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[8]_i_5 
       (.I0(root_shift[6]),
        .I1(root_next[5]),
        .O(\root_rem[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \root_rem[8]_i_6 
       (.I0(root_shift[5]),
        .I1(root_next[4]),
        .O(\root_rem[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \root_rem[9]_i_1 
       (.I0(root_shift[9]),
        .I1(root_next__0),
        .I2(root_rem_next0[9]),
        .I3(\state_reg[0]_rep__0_n_0 ),
        .O(\root_rem[9]_i_1_n_0 ));
  FDRE \root_rem_reg[0] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[0]_i_1_n_0 ),
        .Q(root_shift[2]),
        .R(rst_0));
  FDRE \root_rem_reg[10] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[10]_i_1_n_0 ),
        .Q(root_shift[12]),
        .R(rst_0));
  FDRE \root_rem_reg[11] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[11]_i_1_n_0 ),
        .Q(root_shift[13]),
        .R(rst_0));
  FDRE \root_rem_reg[12] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[12]_i_1_n_0 ),
        .Q(root_shift[14]),
        .R(rst_0));
  CARRY4 \root_rem_reg[12]_i_2 
       (.CI(\root_rem_reg[8]_i_2_n_0 ),
        .CO({\root_rem_reg[12]_i_2_n_0 ,\root_rem_reg[12]_i_2_n_1 ,\root_rem_reg[12]_i_2_n_2 ,\root_rem_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[12:9]),
        .O(root_rem_next0[12:9]),
        .S({\root_rem[12]_i_3_n_0 ,\root_rem[12]_i_4_n_0 ,\root_rem[12]_i_5_n_0 ,\root_rem[12]_i_6_n_0 }));
  FDRE \root_rem_reg[13] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[13]_i_1_n_0 ),
        .Q(root_shift[15]),
        .R(rst_0));
  FDRE \root_rem_reg[14] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[14]_i_1_n_0 ),
        .Q(root_shift[16]),
        .R(rst_0));
  FDRE \root_rem_reg[15] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[15]_i_1_n_0 ),
        .Q(root_shift[17]),
        .R(rst_0));
  FDRE \root_rem_reg[16] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[16]_i_1_n_0 ),
        .Q(root_shift[18]),
        .R(rst_0));
  CARRY4 \root_rem_reg[16]_i_2 
       (.CI(\root_rem_reg[12]_i_2_n_0 ),
        .CO({\root_rem_reg[16]_i_2_n_0 ,\root_rem_reg[16]_i_2_n_1 ,\root_rem_reg[16]_i_2_n_2 ,\root_rem_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[16:13]),
        .O(root_rem_next0[16:13]),
        .S({\root_rem[16]_i_3_n_0 ,\root_rem[16]_i_4_n_0 ,\root_rem[16]_i_5_n_0 ,\root_rem[16]_i_6_n_0 }));
  FDRE \root_rem_reg[17] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[17]_i_1_n_0 ),
        .Q(root_shift[19]),
        .R(rst_0));
  FDRE \root_rem_reg[18] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[18]_i_1_n_0 ),
        .Q(root_shift[20]),
        .R(rst_0));
  FDRE \root_rem_reg[19] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[19]_i_1_n_0 ),
        .Q(root_shift[21]),
        .R(rst_0));
  FDRE \root_rem_reg[1] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[1]_i_1_n_0 ),
        .Q(root_shift[3]),
        .R(rst_0));
  FDRE \root_rem_reg[20] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[20]_i_1_n_0 ),
        .Q(root_shift[22]),
        .R(rst_0));
  CARRY4 \root_rem_reg[20]_i_2 
       (.CI(\root_rem_reg[16]_i_2_n_0 ),
        .CO({\root_rem_reg[20]_i_2_n_0 ,\root_rem_reg[20]_i_2_n_1 ,\root_rem_reg[20]_i_2_n_2 ,\root_rem_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[20:17]),
        .O(root_rem_next0[20:17]),
        .S({\root_rem[20]_i_3_n_0 ,\root_rem[20]_i_4_n_0 ,\root_rem[20]_i_5_n_0 ,\root_rem[20]_i_6_n_0 }));
  FDRE \root_rem_reg[21] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[21]_i_1_n_0 ),
        .Q(root_shift[23]),
        .R(rst_0));
  FDRE \root_rem_reg[22] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[22]_i_1_n_0 ),
        .Q(root_shift[24]),
        .R(rst_0));
  FDRE \root_rem_reg[23] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[23]_i_1_n_0 ),
        .Q(root_shift[25]),
        .R(rst_0));
  FDRE \root_rem_reg[24] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[24]_i_1_n_0 ),
        .Q(root_shift[26]),
        .R(rst_0));
  CARRY4 \root_rem_reg[24]_i_2 
       (.CI(\root_rem_reg[20]_i_2_n_0 ),
        .CO({\root_rem_reg[24]_i_2_n_0 ,\root_rem_reg[24]_i_2_n_1 ,\root_rem_reg[24]_i_2_n_2 ,\root_rem_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[24:21]),
        .O(root_rem_next0[24:21]),
        .S({\root_rem[24]_i_3_n_0 ,\root_rem[24]_i_4_n_0 ,\root_rem[24]_i_5_n_0 ,\root_rem[24]_i_6_n_0 }));
  FDRE \root_rem_reg[25] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[25]_i_1_n_0 ),
        .Q(root_shift[27]),
        .R(rst_0));
  FDRE \root_rem_reg[26] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[26]_i_1_n_0 ),
        .Q(root_shift[28]),
        .R(rst_0));
  FDRE \root_rem_reg[27] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[27]_i_1_n_0 ),
        .Q(root_shift[29]),
        .R(rst_0));
  FDRE \root_rem_reg[28] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[28]_i_1_n_0 ),
        .Q(root_shift[30]),
        .R(rst_0));
  CARRY4 \root_rem_reg[28]_i_2 
       (.CI(\root_rem_reg[24]_i_2_n_0 ),
        .CO({\root_rem_reg[28]_i_2_n_0 ,\root_rem_reg[28]_i_2_n_1 ,\root_rem_reg[28]_i_2_n_2 ,\root_rem_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[28:25]),
        .O(root_rem_next0[28:25]),
        .S({\root_rem[28]_i_3_n_0 ,\root_rem[28]_i_4_n_0 ,\root_rem[28]_i_5_n_0 ,\root_rem[28]_i_6_n_0 }));
  FDRE \root_rem_reg[29] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[29]_i_1_n_0 ),
        .Q(root_shift[31]),
        .R(rst_0));
  FDRE \root_rem_reg[2] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[2]_i_1_n_0 ),
        .Q(root_shift[4]),
        .R(rst_0));
  FDRE \root_rem_reg[30] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[30]_i_1_n_0 ),
        .Q(root_shift[32]),
        .R(rst_0));
  FDRE \root_rem_reg[31] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[31]_i_1_n_0 ),
        .Q(root_shift[33]),
        .R(rst_0));
  FDRE \root_rem_reg[32] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[32]_i_1_n_0 ),
        .Q(root_shift[34]),
        .R(rst_0));
  CARRY4 \root_rem_reg[32]_i_2 
       (.CI(\root_rem_reg[28]_i_2_n_0 ),
        .CO({\root_rem_reg[32]_i_2_n_0 ,\root_rem_reg[32]_i_2_n_1 ,\root_rem_reg[32]_i_2_n_2 ,\root_rem_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[32:29]),
        .O(root_rem_next0[32:29]),
        .S({\root_rem[32]_i_3_n_0 ,\root_rem[32]_i_4_n_0 ,\root_rem[32]_i_5_n_0 ,\root_rem[32]_i_6_n_0 }));
  FDRE \root_rem_reg[33] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[33]_i_1_n_0 ),
        .Q(root_shift[35]),
        .R(rst_0));
  FDRE \root_rem_reg[34] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[34]_i_1_n_0 ),
        .Q(root_shift[36]),
        .R(rst_0));
  FDRE \root_rem_reg[35] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[35]_i_1_n_0 ),
        .Q(root_shift[37]),
        .R(rst_0));
  FDRE \root_rem_reg[36] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[36]_i_1_n_0 ),
        .Q(root_shift[38]),
        .R(rst_0));
  CARRY4 \root_rem_reg[36]_i_2 
       (.CI(\root_rem_reg[32]_i_2_n_0 ),
        .CO({\root_rem_reg[36]_i_2_n_0 ,\root_rem_reg[36]_i_2_n_1 ,\root_rem_reg[36]_i_2_n_2 ,\root_rem_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[36:33]),
        .O(root_rem_next0[36:33]),
        .S({\root_rem[36]_i_3_n_0 ,\root_rem[36]_i_4_n_0 ,\root_rem[36]_i_5_n_0 ,\root_rem[36]_i_6_n_0 }));
  FDRE \root_rem_reg[37] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[37]_i_1_n_0 ),
        .Q(root_shift[39]),
        .R(rst_0));
  FDRE \root_rem_reg[38] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[38]_i_1_n_0 ),
        .Q(root_shift[40]),
        .R(rst_0));
  FDRE \root_rem_reg[39] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[39]_i_1_n_0 ),
        .Q(root_shift[41]),
        .R(rst_0));
  FDRE \root_rem_reg[3] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[3]_i_1_n_0 ),
        .Q(root_shift[5]),
        .R(rst_0));
  FDRE \root_rem_reg[40] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[40]_i_1_n_0 ),
        .Q(root_shift[42]),
        .R(rst_0));
  CARRY4 \root_rem_reg[40]_i_2 
       (.CI(\root_rem_reg[36]_i_2_n_0 ),
        .CO({\root_rem_reg[40]_i_2_n_0 ,\root_rem_reg[40]_i_2_n_1 ,\root_rem_reg[40]_i_2_n_2 ,\root_rem_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[40:37]),
        .O(root_rem_next0[40:37]),
        .S({\root_rem[40]_i_3_n_0 ,\root_rem[40]_i_4_n_0 ,\root_rem[40]_i_5_n_0 ,\root_rem[40]_i_6_n_0 }));
  FDRE \root_rem_reg[41] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[41]_i_1_n_0 ),
        .Q(root_shift[43]),
        .R(rst_0));
  FDRE \root_rem_reg[42] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[42]_i_1_n_0 ),
        .Q(root_shift[44]),
        .R(rst_0));
  FDRE \root_rem_reg[43] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[43]_i_1_n_0 ),
        .Q(root_shift[45]),
        .R(rst_0));
  FDRE \root_rem_reg[44] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[44]_i_1_n_0 ),
        .Q(root_shift[46]),
        .R(rst_0));
  CARRY4 \root_rem_reg[44]_i_2 
       (.CI(\root_rem_reg[40]_i_2_n_0 ),
        .CO({\root_rem_reg[44]_i_2_n_0 ,\root_rem_reg[44]_i_2_n_1 ,\root_rem_reg[44]_i_2_n_2 ,\root_rem_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[44:41]),
        .O(root_rem_next0[44:41]),
        .S({\root_rem[44]_i_3_n_0 ,\root_rem[44]_i_4_n_0 ,\root_rem[44]_i_5_n_0 ,\root_rem[44]_i_6_n_0 }));
  FDRE \root_rem_reg[45] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[45]_i_1_n_0 ),
        .Q(root_shift[47]),
        .R(rst_0));
  FDRE \root_rem_reg[46] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[46]_i_1_n_0 ),
        .Q(root_shift[48]),
        .R(rst_0));
  FDRE \root_rem_reg[47] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[47]_i_1_n_0 ),
        .Q(root_shift[49]),
        .R(rst_0));
  FDRE \root_rem_reg[48] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[48]_i_1_n_0 ),
        .Q(root_shift[50]),
        .R(rst_0));
  CARRY4 \root_rem_reg[48]_i_2 
       (.CI(\root_rem_reg[44]_i_2_n_0 ),
        .CO({\root_rem_reg[48]_i_2_n_0 ,\root_rem_reg[48]_i_2_n_1 ,\root_rem_reg[48]_i_2_n_2 ,\root_rem_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[48:45]),
        .O(root_rem_next0[48:45]),
        .S({\root_rem[48]_i_3_n_0 ,\root_rem[48]_i_4_n_0 ,\root_rem[48]_i_5_n_0 ,\root_rem[48]_i_6_n_0 }));
  FDRE \root_rem_reg[4] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[4]_i_1_n_0 ),
        .Q(root_shift[6]),
        .R(rst_0));
  CARRY4 \root_rem_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\root_rem_reg[4]_i_2_n_0 ,\root_rem_reg[4]_i_2_n_1 ,\root_rem_reg[4]_i_2_n_2 ,\root_rem_reg[4]_i_2_n_3 }),
        .CYINIT(root_shift[0]),
        .DI(root_shift[4:1]),
        .O(root_rem_next0[4:1]),
        .S({\root_rem[4]_i_3_n_0 ,\root_rem[4]_i_4_n_0 ,\root_rem[4]_i_5_n_0 ,\root_rem[4]_i_6_n_0 }));
  FDRE \root_rem_reg[5] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[5]_i_1_n_0 ),
        .Q(root_shift[7]),
        .R(rst_0));
  FDRE \root_rem_reg[6] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[6]_i_1_n_0 ),
        .Q(root_shift[8]),
        .R(rst_0));
  FDRE \root_rem_reg[7] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[7]_i_1_n_0 ),
        .Q(root_shift[9]),
        .R(rst_0));
  FDRE \root_rem_reg[8] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[8]_i_1_n_0 ),
        .Q(root_shift[10]),
        .R(rst_0));
  CARRY4 \root_rem_reg[8]_i_2 
       (.CI(\root_rem_reg[4]_i_2_n_0 ),
        .CO({\root_rem_reg[8]_i_2_n_0 ,\root_rem_reg[8]_i_2_n_1 ,\root_rem_reg[8]_i_2_n_2 ,\root_rem_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(root_shift[8:5]),
        .O(root_rem_next0[8:5]),
        .S({\root_rem[8]_i_3_n_0 ,\root_rem[8]_i_4_n_0 ,\root_rem[8]_i_5_n_0 ,\root_rem[8]_i_6_n_0 }));
  FDRE \root_rem_reg[9] 
       (.C(clk),
        .CE(root),
        .D(\root_rem[9]_i_1_n_0 ),
        .Q(root_shift[11]),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rr0
       (.A({ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rr0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rr0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rr0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rr0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rr0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rr0_OVERFLOW_UNCONNECTED),
        .P({rr0_n_58,rr0_n_59,rr0_n_60,rr0_n_61,rr0_n_62,rr0_n_63,rr0_n_64,rr0_n_65,rr0_n_66,rr0_n_67,rr0_n_68,rr0_n_69,rr0_n_70,rr0_n_71,rr0_n_72,rr0_n_73,rr0_n_74,rr0_n_75,rr0_n_76,rr0_n_77,rr0_n_78,rr0_n_79,rr0_n_80,rr0_n_81,rr0_n_82,rr0_n_83,rr0_n_84,rr0_n_85,rr0_n_86,rr0_n_87,rr0_n_88,rr0_n_89,rr0_n_90,rr0_n_91,rr0_n_92,rr0_n_93,rr0_n_94,rr0_n_95,rr0_n_96,rr0_n_97,rr0_n_98,rr0_n_99,rr0_n_100,rr0_n_101,rr0_n_102,rr0_n_103,rr0_n_104,rr0_n_105}),
        .PATTERNBDETECT(NLW_rr0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rr0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({rr0_n_106,rr0_n_107,rr0_n_108,rr0_n_109,rr0_n_110,rr0_n_111,rr0_n_112,rr0_n_113,rr0_n_114,rr0_n_115,rr0_n_116,rr0_n_117,rr0_n_118,rr0_n_119,rr0_n_120,rr0_n_121,rr0_n_122,rr0_n_123,rr0_n_124,rr0_n_125,rr0_n_126,rr0_n_127,rr0_n_128,rr0_n_129,rr0_n_130,rr0_n_131,rr0_n_132,rr0_n_133,rr0_n_134,rr0_n_135,rr0_n_136,rr0_n_137,rr0_n_138,rr0_n_139,rr0_n_140,rr0_n_141,rr0_n_142,rr0_n_143,rr0_n_144,rr0_n_145,rr0_n_146,rr0_n_147,rr0_n_148,rr0_n_149,rr0_n_150,rr0_n_151,rr0_n_152,rr0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rr0_UNDERFLOW_UNCONNECTED));
  FDRE \rr_reg[0] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_105),
        .Q(rr_reg__1[0]),
        .R(rst_0));
  FDRE \rr_reg[10] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_95),
        .Q(rr_reg__1[10]),
        .R(rst_0));
  FDRE \rr_reg[11] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_94),
        .Q(rr_reg__1[11]),
        .R(rst_0));
  FDRE \rr_reg[12] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_93),
        .Q(rr_reg__1[12]),
        .R(rst_0));
  FDRE \rr_reg[13] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_92),
        .Q(rr_reg__1[13]),
        .R(rst_0));
  FDRE \rr_reg[14] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_91),
        .Q(rr_reg__1[14]),
        .R(rst_0));
  FDRE \rr_reg[15] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_90),
        .Q(rr_reg__1[15]),
        .R(rst_0));
  FDRE \rr_reg[16] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_89),
        .Q(rr_reg__1[16]),
        .R(rst_0));
  FDRE \rr_reg[1] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_104),
        .Q(rr_reg__1[1]),
        .R(rst_0));
  FDRE \rr_reg[2] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_103),
        .Q(rr_reg__1[2]),
        .R(rst_0));
  FDRE \rr_reg[3] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_102),
        .Q(rr_reg__1[3]),
        .R(rst_0));
  FDRE \rr_reg[4] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_101),
        .Q(rr_reg__1[4]),
        .R(rst_0));
  FDRE \rr_reg[5] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_100),
        .Q(rr_reg__1[5]),
        .R(rst_0));
  FDRE \rr_reg[6] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_99),
        .Q(rr_reg__1[6]),
        .R(rst_0));
  FDRE \rr_reg[7] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_98),
        .Q(rr_reg__1[7]),
        .R(rst_0));
  FDRE \rr_reg[8] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_97),
        .Q(rr_reg__1[8]),
        .R(rst_0));
  FDRE \rr_reg[9] 
       (.C(clk),
        .CE(CEP),
        .D(rr0_n_96),
        .Q(rr_reg__1[9]),
        .R(rst_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rr_reg__0
       (.A({ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23],ii0_0[23:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rr_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23],Q[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rr_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rr_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rr_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rr_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rr_reg__0_OVERFLOW_UNCONNECTED),
        .P({rr_reg__0_n_58,rr_reg__0_n_59,rr_reg__0_n_60,rr_reg__0_n_61,rr_reg__0_n_62,rr_reg__0_n_63,rr_reg__0_n_64,rr_reg__0_n_65,rr_reg__0_n_66,rr_reg__0_n_67,rr_reg__0_n_68,rr_reg__0_n_69,rr_reg__0_n_70,rr_reg__0_n_71,rr_reg__0_n_72,rr_reg__0_n_73,rr_reg__0_n_74,rr_reg__0_n_75,rr_reg__0_n_76,rr_reg__0_n_77,rr_reg__0_n_78,rr_reg__0_n_79,rr_reg__0_n_80,rr_reg__0_n_81,rr_reg__0_n_82,rr_reg__0_n_83,rr_reg__0_n_84,rr_reg__0_n_85,rr_reg__0_n_86,rr_reg__0_n_87,rr_reg__0_n_88,rr_reg__0_n_89,rr_reg__0_n_90,rr_reg__0_n_91,rr_reg__0_n_92,rr_reg__0_n_93,rr_reg__0_n_94,rr_reg__0_n_95,rr_reg__0_n_96,rr_reg__0_n_97,rr_reg__0_n_98,rr_reg__0_n_99,rr_reg__0_n_100,rr_reg__0_n_101,rr_reg__0_n_102,rr_reg__0_n_103,rr_reg__0_n_104,rr_reg__0_n_105}),
        .PATTERNBDETECT(NLW_rr_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rr_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({rr0_n_106,rr0_n_107,rr0_n_108,rr0_n_109,rr0_n_110,rr0_n_111,rr0_n_112,rr0_n_113,rr0_n_114,rr0_n_115,rr0_n_116,rr0_n_117,rr0_n_118,rr0_n_119,rr0_n_120,rr0_n_121,rr0_n_122,rr0_n_123,rr0_n_124,rr0_n_125,rr0_n_126,rr0_n_127,rr0_n_128,rr0_n_129,rr0_n_130,rr0_n_131,rr0_n_132,rr0_n_133,rr0_n_134,rr0_n_135,rr0_n_136,rr0_n_137,rr0_n_138,rr0_n_139,rr0_n_140,rr0_n_141,rr0_n_142,rr0_n_143,rr0_n_144,rr0_n_145,rr0_n_146,rr0_n_147,rr0_n_148,rr0_n_149,rr0_n_150,rr0_n_151,rr0_n_152,rr0_n_153}),
        .PCOUT(NLW_rr_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_0),
        .UNDERFLOW(NLW_rr_reg__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im_OVERFLOW_UNCONNECTED),
        .P(NLW_square_im_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_im_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_im_n_106,square_im_n_107,square_im_n_108,square_im_n_109,square_im_n_110,square_im_n_111,square_im_n_112,square_im_n_113,square_im_n_114,square_im_n_115,square_im_n_116,square_im_n_117,square_im_n_118,square_im_n_119,square_im_n_120,square_im_n_121,square_im_n_122,square_im_n_123,square_im_n_124,square_im_n_125,square_im_n_126,square_im_n_127,square_im_n_128,square_im_n_129,square_im_n_130,square_im_n_131,square_im_n_132,square_im_n_133,square_im_n_134,square_im_n_135,square_im_n_136,square_im_n_137,square_im_n_138,square_im_n_139,square_im_n_140,square_im_n_141,square_im_n_142,square_im_n_143,square_im_n_144,square_im_n_145,square_im_n_146,square_im_n_147,square_im_n_148,square_im_n_149,square_im_n_150,square_im_n_151,square_im_n_152,square_im_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__0_OVERFLOW_UNCONNECTED),
        .P({square_im__0_n_58,square_im__0_n_59,square_im__0_n_60,square_im__0_n_61,square_im__0_n_62,square_im__0_n_63,square_im__0_n_64,square_im__0_n_65,square_im__0_n_66,square_im__0_n_67,square_im__0_n_68,square_im__0_n_69,square_im__0_n_70,square_im__0_n_71,square_im__0_n_72,square_im__0_n_73,square_im__0_n_74,square_im__0_n_75,square_im__0_n_76,square_im__0_n_77,square_im__0_n_78,square_im__0_n_79,square_im__0_n_80,square_im__0_n_81,square_im__0_n_82,square_im__0_n_83,square_im__0_n_84,square_im__0_n_85,square_im__0_n_86,square_im__0_n_87,square_im__0_n_88,square_im__0_n_89,square_im__0_n_90,square_im__0_n_91,square_im__0_n_92,square_im__0_n_93,square_im__0_n_94,square_im__0_n_95,square_im__0_n_96,square_im__0_n_97,square_im__0_n_98,square_im__0_n_99,square_im__0_n_100,square_im__0_n_101,square_im__0_n_102,square_im__0_n_103,square_im__0_n_104,square_im__0_n_105}),
        .PATTERNBDETECT(NLW_square_im__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im_n_106,square_im_n_107,square_im_n_108,square_im_n_109,square_im_n_110,square_im_n_111,square_im_n_112,square_im_n_113,square_im_n_114,square_im_n_115,square_im_n_116,square_im_n_117,square_im_n_118,square_im_n_119,square_im_n_120,square_im_n_121,square_im_n_122,square_im_n_123,square_im_n_124,square_im_n_125,square_im_n_126,square_im_n_127,square_im_n_128,square_im_n_129,square_im_n_130,square_im_n_131,square_im_n_132,square_im_n_133,square_im_n_134,square_im_n_135,square_im_n_136,square_im_n_137,square_im_n_138,square_im_n_139,square_im_n_140,square_im_n_141,square_im_n_142,square_im_n_143,square_im_n_144,square_im_n_145,square_im_n_146,square_im_n_147,square_im_n_148,square_im_n_149,square_im_n_150,square_im_n_151,square_im_n_152,square_im_n_153}),
        .PCOUT({square_im__0_n_106,square_im__0_n_107,square_im__0_n_108,square_im__0_n_109,square_im__0_n_110,square_im__0_n_111,square_im__0_n_112,square_im__0_n_113,square_im__0_n_114,square_im__0_n_115,square_im__0_n_116,square_im__0_n_117,square_im__0_n_118,square_im__0_n_119,square_im__0_n_120,square_im__0_n_121,square_im__0_n_122,square_im__0_n_123,square_im__0_n_124,square_im__0_n_125,square_im__0_n_126,square_im__0_n_127,square_im__0_n_128,square_im__0_n_129,square_im__0_n_130,square_im__0_n_131,square_im__0_n_132,square_im__0_n_133,square_im__0_n_134,square_im__0_n_135,square_im__0_n_136,square_im__0_n_137,square_im__0_n_138,square_im__0_n_139,square_im__0_n_140,square_im__0_n_141,square_im__0_n_142,square_im__0_n_143,square_im__0_n_144,square_im__0_n_145,square_im__0_n_146,square_im__0_n_147,square_im__0_n_148,square_im__0_n_149,square_im__0_n_150,square_im__0_n_151,square_im__0_n_152,square_im__0_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__1
       (.A({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__1_OVERFLOW_UNCONNECTED),
        .P({square_im__1_n_58,square_im__1_n_59,square_im__1_n_60,square_im__1_n_61,square_im__1_n_62,square_im__1_n_63,square_im__1_n_64,square_im__1_n_65,square_im__1_n_66,square_im__1_n_67,square_im__1_n_68,square_im__1_n_69,square_im__1_n_70,square_im__1_n_71,square_im__1_n_72,square_im__1_n_73,square_im__1_n_74,square_im__1_n_75,square_im__1_n_76,square_im__1_n_77,square_im__1_n_78,square_im__1_n_79,square_im__1_n_80,square_im__1_n_81,square_im__1_n_82,square_im__1_n_83,square_im__1_n_84,square_im__1_n_85,square_im__1_n_86,square_im__1_n_87,square_im__1_n_88,square_im__1_n_89,square_im__1_n_90,square_im__1_n_91,square_im__1_n_92,square_im__1_n_93,square_im__1_n_94,square_im__1_n_95,square_im__1_n_96,square_im__1_n_97,square_im__1_n_98,square_im__1_n_99,square_im__1_n_100,square_im__1_n_101,square_im__1_n_102,square_im__1_n_103,square_im__1_n_104,square_im__1_n_105}),
        .PATTERNBDETECT(NLW_square_im__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im__0_n_106,square_im__0_n_107,square_im__0_n_108,square_im__0_n_109,square_im__0_n_110,square_im__0_n_111,square_im__0_n_112,square_im__0_n_113,square_im__0_n_114,square_im__0_n_115,square_im__0_n_116,square_im__0_n_117,square_im__0_n_118,square_im__0_n_119,square_im__0_n_120,square_im__0_n_121,square_im__0_n_122,square_im__0_n_123,square_im__0_n_124,square_im__0_n_125,square_im__0_n_126,square_im__0_n_127,square_im__0_n_128,square_im__0_n_129,square_im__0_n_130,square_im__0_n_131,square_im__0_n_132,square_im__0_n_133,square_im__0_n_134,square_im__0_n_135,square_im__0_n_136,square_im__0_n_137,square_im__0_n_138,square_im__0_n_139,square_im__0_n_140,square_im__0_n_141,square_im__0_n_142,square_im__0_n_143,square_im__0_n_144,square_im__0_n_145,square_im__0_n_146,square_im__0_n_147,square_im__0_n_148,square_im__0_n_149,square_im__0_n_150,square_im__0_n_151,square_im__0_n_152,square_im__0_n_153}),
        .PCOUT(NLW_square_im__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__2_OVERFLOW_UNCONNECTED),
        .P(NLW_square_im__2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_im__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_im__2_n_106,square_im__2_n_107,square_im__2_n_108,square_im__2_n_109,square_im__2_n_110,square_im__2_n_111,square_im__2_n_112,square_im__2_n_113,square_im__2_n_114,square_im__2_n_115,square_im__2_n_116,square_im__2_n_117,square_im__2_n_118,square_im__2_n_119,square_im__2_n_120,square_im__2_n_121,square_im__2_n_122,square_im__2_n_123,square_im__2_n_124,square_im__2_n_125,square_im__2_n_126,square_im__2_n_127,square_im__2_n_128,square_im__2_n_129,square_im__2_n_130,square_im__2_n_131,square_im__2_n_132,square_im__2_n_133,square_im__2_n_134,square_im__2_n_135,square_im__2_n_136,square_im__2_n_137,square_im__2_n_138,square_im__2_n_139,square_im__2_n_140,square_im__2_n_141,square_im__2_n_142,square_im__2_n_143,square_im__2_n_144,square_im__2_n_145,square_im__2_n_146,square_im__2_n_147,square_im__2_n_148,square_im__2_n_149,square_im__2_n_150,square_im__2_n_151,square_im__2_n_152,square_im__2_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__2_UNDERFLOW_UNCONNECTED));
  CARRY4 square_im__2_i_1
       (.CI(square_im__2_i_2_n_0),
        .CO({square_im__2_i_1_n_0,square_im__2_i_1_n_1,square_im__2_i_1_n_2,square_im__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(ir_reg__1[15:12]),
        .O(cross_im00_out[15:12]),
        .S({square_im__2_i_5_n_0,square_im__2_i_6_n_0,square_im__2_i_7_n_0,square_im__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_10
       (.I0(ir_reg__1[10]),
        .I1(\ri_reg_n_0_[10] ),
        .O(square_im__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_11
       (.I0(ir_reg__1[9]),
        .I1(\ri_reg_n_0_[9] ),
        .O(square_im__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_12
       (.I0(ir_reg__1[8]),
        .I1(\ri_reg_n_0_[8] ),
        .O(square_im__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_13
       (.I0(ir_reg__1[7]),
        .I1(\ri_reg_n_0_[7] ),
        .O(square_im__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_14
       (.I0(ir_reg__1[6]),
        .I1(\ri_reg_n_0_[6] ),
        .O(square_im__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_15
       (.I0(ir_reg__1[5]),
        .I1(\ri_reg_n_0_[5] ),
        .O(square_im__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_16
       (.I0(ir_reg__1[4]),
        .I1(\ri_reg_n_0_[4] ),
        .O(square_im__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_17
       (.I0(ir_reg__1[3]),
        .I1(\ri_reg_n_0_[3] ),
        .O(square_im__2_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_18
       (.I0(ir_reg__1[2]),
        .I1(\ri_reg_n_0_[2] ),
        .O(square_im__2_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_19
       (.I0(ir_reg__1[1]),
        .I1(\ri_reg_n_0_[1] ),
        .O(square_im__2_i_19_n_0));
  CARRY4 square_im__2_i_2
       (.CI(square_im__2_i_3_n_0),
        .CO({square_im__2_i_2_n_0,square_im__2_i_2_n_1,square_im__2_i_2_n_2,square_im__2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(ir_reg__1[11:8]),
        .O(cross_im00_out[11:8]),
        .S({square_im__2_i_9_n_0,square_im__2_i_10_n_0,square_im__2_i_11_n_0,square_im__2_i_12_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_20
       (.I0(ir_reg__1[0]),
        .I1(\ri_reg_n_0_[0] ),
        .O(square_im__2_i_20_n_0));
  CARRY4 square_im__2_i_3
       (.CI(square_im__2_i_4_n_0),
        .CO({square_im__2_i_3_n_0,square_im__2_i_3_n_1,square_im__2_i_3_n_2,square_im__2_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(ir_reg__1[7:4]),
        .O(cross_im00_out[7:4]),
        .S({square_im__2_i_13_n_0,square_im__2_i_14_n_0,square_im__2_i_15_n_0,square_im__2_i_16_n_0}));
  CARRY4 square_im__2_i_4
       (.CI(1'b0),
        .CO({square_im__2_i_4_n_0,square_im__2_i_4_n_1,square_im__2_i_4_n_2,square_im__2_i_4_n_3}),
        .CYINIT(1'b1),
        .DI(ir_reg__1[3:0]),
        .O(cross_im00_out[3:0]),
        .S({square_im__2_i_17_n_0,square_im__2_i_18_n_0,square_im__2_i_19_n_0,square_im__2_i_20_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_5
       (.I0(ir_reg__1[15]),
        .I1(\ri_reg_n_0_[15] ),
        .O(square_im__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_6
       (.I0(ir_reg__1[14]),
        .I1(\ri_reg_n_0_[14] ),
        .O(square_im__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_7
       (.I0(ir_reg__1[13]),
        .I1(\ri_reg_n_0_[13] ),
        .O(square_im__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_8
       (.I0(ir_reg__1[12]),
        .I1(\ri_reg_n_0_[12] ),
        .O(square_im__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im__2_i_9
       (.I0(ir_reg__1[11]),
        .I1(\ri_reg_n_0_[11] ),
        .O(square_im__2_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_im00_out[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__3_OVERFLOW_UNCONNECTED),
        .P(NLW_square_im__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_im__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im__2_n_106,square_im__2_n_107,square_im__2_n_108,square_im__2_n_109,square_im__2_n_110,square_im__2_n_111,square_im__2_n_112,square_im__2_n_113,square_im__2_n_114,square_im__2_n_115,square_im__2_n_116,square_im__2_n_117,square_im__2_n_118,square_im__2_n_119,square_im__2_n_120,square_im__2_n_121,square_im__2_n_122,square_im__2_n_123,square_im__2_n_124,square_im__2_n_125,square_im__2_n_126,square_im__2_n_127,square_im__2_n_128,square_im__2_n_129,square_im__2_n_130,square_im__2_n_131,square_im__2_n_132,square_im__2_n_133,square_im__2_n_134,square_im__2_n_135,square_im__2_n_136,square_im__2_n_137,square_im__2_n_138,square_im__2_n_139,square_im__2_n_140,square_im__2_n_141,square_im__2_n_142,square_im__2_n_143,square_im__2_n_144,square_im__2_n_145,square_im__2_n_146,square_im__2_n_147,square_im__2_n_148,square_im__2_n_149,square_im__2_n_150,square_im__2_n_151,square_im__2_n_152,square_im__2_n_153}),
        .PCOUT({square_im__3_n_106,square_im__3_n_107,square_im__3_n_108,square_im__3_n_109,square_im__3_n_110,square_im__3_n_111,square_im__3_n_112,square_im__3_n_113,square_im__3_n_114,square_im__3_n_115,square_im__3_n_116,square_im__3_n_117,square_im__3_n_118,square_im__3_n_119,square_im__3_n_120,square_im__3_n_121,square_im__3_n_122,square_im__3_n_123,square_im__3_n_124,square_im__3_n_125,square_im__3_n_126,square_im__3_n_127,square_im__3_n_128,square_im__3_n_129,square_im__3_n_130,square_im__3_n_131,square_im__3_n_132,square_im__3_n_133,square_im__3_n_134,square_im__3_n_135,square_im__3_n_136,square_im__3_n_137,square_im__3_n_138,square_im__3_n_139,square_im__3_n_140,square_im__3_n_141,square_im__3_n_142,square_im__3_n_143,square_im__3_n_144,square_im__3_n_145,square_im__3_n_146,square_im__3_n_147,square_im__3_n_148,square_im__3_n_149,square_im__3_n_150,square_im__3_n_151,square_im__3_n_152,square_im__3_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_im00_out[48],cross_im00_out[48],cross_im00_out[48],cross_im00_out[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__4_OVERFLOW_UNCONNECTED),
        .P({square_im__4_n_58,square_im__4_n_59,square_im__4_n_60,square_im__4_n_61,square_im__4_n_62,square_im__4_n_63,square_im__4_n_64,square_im__4_n_65,square_im__4_n_66,square_im__4_n_67,square_im__4_n_68,square_im__4_n_69,square_im__4_n_70,square_im__4_n_71,square_im__4_n_72,square_im__4_n_73,square_im__4_n_74,square_im__4_n_75,square_im__4_n_76,square_im__4_n_77,square_im__4_n_78,square_im__4_n_79,square_im__4_n_80,square_im__4_n_81,square_im__4_n_82,square_im__4_n_83,square_im__4_n_84,square_im__4_n_85,square_im__4_n_86,square_im__4_n_87,square_im__4_n_88,square_im__4_n_89,square_im__4_n_90,square_im__4_n_91,square_im__4_n_92,square_im__4_n_93,square_im__4_n_94,square_im__4_n_95,square_im__4_n_96,square_im__4_n_97,square_im__4_n_98,square_im__4_n_99,square_im__4_n_100,square_im__4_n_101,square_im__4_n_102,square_im__4_n_103,square_im__4_n_104,square_im__4_n_105}),
        .PATTERNBDETECT(NLW_square_im__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im__3_n_106,square_im__3_n_107,square_im__3_n_108,square_im__3_n_109,square_im__3_n_110,square_im__3_n_111,square_im__3_n_112,square_im__3_n_113,square_im__3_n_114,square_im__3_n_115,square_im__3_n_116,square_im__3_n_117,square_im__3_n_118,square_im__3_n_119,square_im__3_n_120,square_im__3_n_121,square_im__3_n_122,square_im__3_n_123,square_im__3_n_124,square_im__3_n_125,square_im__3_n_126,square_im__3_n_127,square_im__3_n_128,square_im__3_n_129,square_im__3_n_130,square_im__3_n_131,square_im__3_n_132,square_im__3_n_133,square_im__3_n_134,square_im__3_n_135,square_im__3_n_136,square_im__3_n_137,square_im__3_n_138,square_im__3_n_139,square_im__3_n_140,square_im__3_n_141,square_im__3_n_142,square_im__3_n_143,square_im__3_n_144,square_im__3_n_145,square_im__3_n_146,square_im__3_n_147,square_im__3_n_148,square_im__3_n_149,square_im__3_n_150,square_im__3_n_151,square_im__3_n_152,square_im__3_n_153}),
        .PCOUT(NLW_square_im__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_im00_out[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__5_OVERFLOW_UNCONNECTED),
        .P({square_im__5_n_58,square_im__5_n_59,square_im__5_n_60,square_im__5_n_61,square_im__5_n_62,square_im__5_n_63,square_im__5_n_64,square_im__5_n_65,square_im__5_n_66,square_im__5_n_67,square_im__5_n_68,square_im__5_n_69,square_im__5_n_70,square_im__5_n_71,square_im__5_n_72,square_im__5_n_73,square_im__5_n_74,square_im__5_n_75,square_im__5_n_76,square_im__5_n_77,square_im__5_n_78,square_im__5_n_79,square_im__5_n_80,square_im__5_n_81,square_im__5_n_82,square_im__5_n_83,square_im__5_n_84,square_im__5_n_85,square_im__5_n_86,square_im__5_n_87,square_im__5_n_88,square_im__5_n_89,square_im__5_n_90,square_im__5_n_91,square_im__5_n_92,square_im__5_n_93,square_im__5_n_94,square_im__5_n_95,square_im__5_n_96,square_im__5_n_97,square_im__5_n_98,square_im__5_n_99,square_im__5_n_100,square_im__5_n_101,square_im__5_n_102,square_im__5_n_103,square_im__5_n_104,square_im__5_n_105}),
        .PATTERNBDETECT(NLW_square_im__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_im__5_n_106,square_im__5_n_107,square_im__5_n_108,square_im__5_n_109,square_im__5_n_110,square_im__5_n_111,square_im__5_n_112,square_im__5_n_113,square_im__5_n_114,square_im__5_n_115,square_im__5_n_116,square_im__5_n_117,square_im__5_n_118,square_im__5_n_119,square_im__5_n_120,square_im__5_n_121,square_im__5_n_122,square_im__5_n_123,square_im__5_n_124,square_im__5_n_125,square_im__5_n_126,square_im__5_n_127,square_im__5_n_128,square_im__5_n_129,square_im__5_n_130,square_im__5_n_131,square_im__5_n_132,square_im__5_n_133,square_im__5_n_134,square_im__5_n_135,square_im__5_n_136,square_im__5_n_137,square_im__5_n_138,square_im__5_n_139,square_im__5_n_140,square_im__5_n_141,square_im__5_n_142,square_im__5_n_143,square_im__5_n_144,square_im__5_n_145,square_im__5_n_146,square_im__5_n_147,square_im__5_n_148,square_im__5_n_149,square_im__5_n_150,square_im__5_n_151,square_im__5_n_152,square_im__5_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_im00_out[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__6_OVERFLOW_UNCONNECTED),
        .P(NLW_square_im__6_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_im__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im__5_n_106,square_im__5_n_107,square_im__5_n_108,square_im__5_n_109,square_im__5_n_110,square_im__5_n_111,square_im__5_n_112,square_im__5_n_113,square_im__5_n_114,square_im__5_n_115,square_im__5_n_116,square_im__5_n_117,square_im__5_n_118,square_im__5_n_119,square_im__5_n_120,square_im__5_n_121,square_im__5_n_122,square_im__5_n_123,square_im__5_n_124,square_im__5_n_125,square_im__5_n_126,square_im__5_n_127,square_im__5_n_128,square_im__5_n_129,square_im__5_n_130,square_im__5_n_131,square_im__5_n_132,square_im__5_n_133,square_im__5_n_134,square_im__5_n_135,square_im__5_n_136,square_im__5_n_137,square_im__5_n_138,square_im__5_n_139,square_im__5_n_140,square_im__5_n_141,square_im__5_n_142,square_im__5_n_143,square_im__5_n_144,square_im__5_n_145,square_im__5_n_146,square_im__5_n_147,square_im__5_n_148,square_im__5_n_149,square_im__5_n_150,square_im__5_n_151,square_im__5_n_152,square_im__5_n_153}),
        .PCOUT({square_im__6_n_106,square_im__6_n_107,square_im__6_n_108,square_im__6_n_109,square_im__6_n_110,square_im__6_n_111,square_im__6_n_112,square_im__6_n_113,square_im__6_n_114,square_im__6_n_115,square_im__6_n_116,square_im__6_n_117,square_im__6_n_118,square_im__6_n_119,square_im__6_n_120,square_im__6_n_121,square_im__6_n_122,square_im__6_n_123,square_im__6_n_124,square_im__6_n_125,square_im__6_n_126,square_im__6_n_127,square_im__6_n_128,square_im__6_n_129,square_im__6_n_130,square_im__6_n_131,square_im__6_n_132,square_im__6_n_133,square_im__6_n_134,square_im__6_n_135,square_im__6_n_136,square_im__6_n_137,square_im__6_n_138,square_im__6_n_139,square_im__6_n_140,square_im__6_n_141,square_im__6_n_142,square_im__6_n_143,square_im__6_n_144,square_im__6_n_145,square_im__6_n_146,square_im__6_n_147,square_im__6_n_148,square_im__6_n_149,square_im__6_n_150,square_im__6_n_151,square_im__6_n_152,square_im__6_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_im__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_im00_out[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_im__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_im00_out[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_im__7_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_im__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_im__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_im__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_im__7_OVERFLOW_UNCONNECTED),
        .P({square_im__7_n_58,square_im__7_n_59,square_im__7_n_60,square_im__7_n_61,square_im__7_n_62,square_im__7_n_63,square_im__7_n_64,square_im__7_n_65,square_im__7_n_66,square_im__7_n_67,square_im__7_n_68,square_im__7_n_69,square_im__7_n_70,square_im__7_n_71,square_im__7_n_72,square_im__7_n_73,square_im__7_n_74,square_im__7_n_75,square_im__7_n_76,square_im__7_n_77,square_im__7_n_78,square_im__7_n_79,square_im__7_n_80,square_im__7_n_81,square_im__7_n_82,square_im__7_n_83,square_im__7_n_84,square_im__7_n_85,square_im__7_n_86,square_im__7_n_87,square_im__7_n_88,square_im__7_n_89,square_im__7_n_90,square_im__7_n_91,square_im__7_n_92,square_im__7_n_93,square_im__7_n_94,square_im__7_n_95,square_im__7_n_96,square_im__7_n_97,square_im__7_n_98,square_im__7_n_99,square_im__7_n_100,square_im__7_n_101,square_im__7_n_102,square_im__7_n_103,square_im__7_n_104,square_im__7_n_105}),
        .PATTERNBDETECT(NLW_square_im__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_im__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_im__6_n_106,square_im__6_n_107,square_im__6_n_108,square_im__6_n_109,square_im__6_n_110,square_im__6_n_111,square_im__6_n_112,square_im__6_n_113,square_im__6_n_114,square_im__6_n_115,square_im__6_n_116,square_im__6_n_117,square_im__6_n_118,square_im__6_n_119,square_im__6_n_120,square_im__6_n_121,square_im__6_n_122,square_im__6_n_123,square_im__6_n_124,square_im__6_n_125,square_im__6_n_126,square_im__6_n_127,square_im__6_n_128,square_im__6_n_129,square_im__6_n_130,square_im__6_n_131,square_im__6_n_132,square_im__6_n_133,square_im__6_n_134,square_im__6_n_135,square_im__6_n_136,square_im__6_n_137,square_im__6_n_138,square_im__6_n_139,square_im__6_n_140,square_im__6_n_141,square_im__6_n_142,square_im__6_n_143,square_im__6_n_144,square_im__6_n_145,square_im__6_n_146,square_im__6_n_147,square_im__6_n_148,square_im__6_n_149,square_im__6_n_150,square_im__6_n_151,square_im__6_n_152,square_im__6_n_153}),
        .PCOUT(NLW_square_im__7_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_im__7_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h02)) 
    square_im_i_1
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(cross_im));
  CARRY4 square_im_i_10
       (.CI(square_im__2_i_1_n_0),
        .CO({square_im_i_10_n_0,square_im_i_10_n_1,square_im_i_10_n_2,square_im_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_103,ir_reg__0_n_104,ir_reg__0_n_105,ir_reg__1[16]}),
        .O(cross_im00_out[19:16]),
        .S({square_im_i_39_n_0,square_im_i_40_n_0,square_im_i_41_n_0,square_im_i_42_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_11
       (.I0(ir_reg__0_n_75),
        .I1(ri_reg__0__0[30]),
        .O(square_im_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_12
       (.I0(ir_reg__0_n_76),
        .I1(ri_reg__0__0[29]),
        .O(square_im_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_13
       (.I0(ir_reg__0_n_77),
        .I1(ri_reg__0__0[28]),
        .O(square_im_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_14
       (.I0(ir_reg__0_n_78),
        .I1(ri_reg__0__0[27]),
        .O(square_im_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_15
       (.I0(ir_reg__0_n_79),
        .I1(ri_reg__0__0[26]),
        .O(square_im_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_16
       (.I0(ir_reg__0_n_80),
        .I1(ri_reg__0__0[25]),
        .O(square_im_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_17
       (.I0(ir_reg__0_n_81),
        .I1(ri_reg__0__0[24]),
        .O(square_im_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_18
       (.I0(ir_reg__0_n_82),
        .I1(ri_reg__0__0[23]),
        .O(square_im_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_19
       (.I0(ir_reg__0_n_83),
        .I1(ri_reg__0__0[22]),
        .O(square_im_i_19_n_0));
  CARRY4 square_im_i_2
       (.CI(square_im_i_3_n_0),
        .CO(NLW_square_im_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_square_im_i_2_O_UNCONNECTED[3:1],cross_im00_out[48]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_20
       (.I0(ir_reg__0_n_84),
        .I1(ri_reg__0__0[21]),
        .O(square_im_i_20_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_21
       (.I0(ir_reg__0_n_85),
        .I1(ri_reg__0__0[20]),
        .O(square_im_i_21_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_22
       (.I0(ir_reg__0_n_86),
        .I1(ri_reg__0__0[19]),
        .O(square_im_i_22_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_23
       (.I0(ir_reg__0_n_87),
        .I1(ri_reg__0__0[18]),
        .O(square_im_i_23_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_24
       (.I0(ir_reg__0_n_88),
        .I1(ri_reg__0__0[17]),
        .O(square_im_i_24_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_25
       (.I0(ir_reg__0_n_89),
        .I1(ri_reg__0__0[16]),
        .O(square_im_i_25_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_26
       (.I0(ir_reg__0_n_90),
        .I1(ri_reg__0__0[15]),
        .O(square_im_i_26_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_27
       (.I0(ir_reg__0_n_91),
        .I1(ri_reg__0__0[14]),
        .O(square_im_i_27_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_28
       (.I0(ir_reg__0_n_92),
        .I1(ri_reg__0__0[13]),
        .O(square_im_i_28_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_29
       (.I0(ir_reg__0_n_93),
        .I1(ri_reg__0__0[12]),
        .O(square_im_i_29_n_0));
  CARRY4 square_im_i_3
       (.CI(square_im_i_4_n_0),
        .CO({square_im_i_3_n_0,square_im_i_3_n_1,square_im_i_3_n_2,square_im_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({ri_reg__0__0[30],ir_reg__0_n_76,ir_reg__0_n_77,ir_reg__0_n_78}),
        .O(cross_im00_out[47:44]),
        .S({square_im_i_11_n_0,square_im_i_12_n_0,square_im_i_13_n_0,square_im_i_14_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_30
       (.I0(ir_reg__0_n_94),
        .I1(ri_reg__0__0[11]),
        .O(square_im_i_30_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_31
       (.I0(ir_reg__0_n_95),
        .I1(ri_reg__0__0[10]),
        .O(square_im_i_31_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_32
       (.I0(ir_reg__0_n_96),
        .I1(ri_reg__0__0[9]),
        .O(square_im_i_32_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_33
       (.I0(ir_reg__0_n_97),
        .I1(ri_reg__0__0[8]),
        .O(square_im_i_33_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_34
       (.I0(ir_reg__0_n_98),
        .I1(ri_reg__0__0[7]),
        .O(square_im_i_34_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_35
       (.I0(ir_reg__0_n_99),
        .I1(ri_reg__0__0[6]),
        .O(square_im_i_35_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_36
       (.I0(ir_reg__0_n_100),
        .I1(ri_reg__0__0[5]),
        .O(square_im_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_37
       (.I0(ir_reg__0_n_101),
        .I1(ri_reg__0__0[4]),
        .O(square_im_i_37_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_38
       (.I0(ir_reg__0_n_102),
        .I1(ri_reg__0__0[3]),
        .O(square_im_i_38_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_39
       (.I0(ir_reg__0_n_103),
        .I1(ri_reg__0__0[2]),
        .O(square_im_i_39_n_0));
  CARRY4 square_im_i_4
       (.CI(square_im_i_5_n_0),
        .CO({square_im_i_4_n_0,square_im_i_4_n_1,square_im_i_4_n_2,square_im_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_79,ir_reg__0_n_80,ir_reg__0_n_81,ir_reg__0_n_82}),
        .O(cross_im00_out[43:40]),
        .S({square_im_i_15_n_0,square_im_i_16_n_0,square_im_i_17_n_0,square_im_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_40
       (.I0(ir_reg__0_n_104),
        .I1(ri_reg__0__0[1]),
        .O(square_im_i_40_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_41
       (.I0(ir_reg__0_n_105),
        .I1(ri_reg__0__0[0]),
        .O(square_im_i_41_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    square_im_i_42
       (.I0(ir_reg__1[16]),
        .I1(\ri_reg_n_0_[16] ),
        .O(square_im_i_42_n_0));
  CARRY4 square_im_i_5
       (.CI(square_im_i_6_n_0),
        .CO({square_im_i_5_n_0,square_im_i_5_n_1,square_im_i_5_n_2,square_im_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_83,ir_reg__0_n_84,ir_reg__0_n_85,ir_reg__0_n_86}),
        .O(cross_im00_out[39:36]),
        .S({square_im_i_19_n_0,square_im_i_20_n_0,square_im_i_21_n_0,square_im_i_22_n_0}));
  CARRY4 square_im_i_6
       (.CI(square_im_i_7_n_0),
        .CO({square_im_i_6_n_0,square_im_i_6_n_1,square_im_i_6_n_2,square_im_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_87,ir_reg__0_n_88,ir_reg__0_n_89,ir_reg__0_n_90}),
        .O(cross_im00_out[35:32]),
        .S({square_im_i_23_n_0,square_im_i_24_n_0,square_im_i_25_n_0,square_im_i_26_n_0}));
  CARRY4 square_im_i_7
       (.CI(square_im_i_8_n_0),
        .CO({square_im_i_7_n_0,square_im_i_7_n_1,square_im_i_7_n_2,square_im_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_91,ir_reg__0_n_92,ir_reg__0_n_93,ir_reg__0_n_94}),
        .O(cross_im00_out[31:28]),
        .S({square_im_i_27_n_0,square_im_i_28_n_0,square_im_i_29_n_0,square_im_i_30_n_0}));
  CARRY4 square_im_i_8
       (.CI(square_im_i_9_n_0),
        .CO({square_im_i_8_n_0,square_im_i_8_n_1,square_im_i_8_n_2,square_im_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_95,ir_reg__0_n_96,ir_reg__0_n_97,ir_reg__0_n_98}),
        .O(cross_im00_out[27:24]),
        .S({square_im_i_31_n_0,square_im_i_32_n_0,square_im_i_33_n_0,square_im_i_34_n_0}));
  CARRY4 square_im_i_9
       (.CI(square_im_i_10_n_0),
        .CO({square_im_i_9_n_0,square_im_i_9_n_1,square_im_i_9_n_2,square_im_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({ir_reg__0_n_99,ir_reg__0_n_100,ir_reg__0_n_101,ir_reg__0_n_102}),
        .O(cross_im00_out[23:20]),
        .S({square_im_i_35_n_0,square_im_i_36_n_0,square_im_i_37_n_0,square_im_i_38_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re_OVERFLOW_UNCONNECTED),
        .P(NLW_square_re_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_re_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_re_n_106,square_re_n_107,square_re_n_108,square_re_n_109,square_re_n_110,square_re_n_111,square_re_n_112,square_re_n_113,square_re_n_114,square_re_n_115,square_re_n_116,square_re_n_117,square_re_n_118,square_re_n_119,square_re_n_120,square_re_n_121,square_re_n_122,square_re_n_123,square_re_n_124,square_re_n_125,square_re_n_126,square_re_n_127,square_re_n_128,square_re_n_129,square_re_n_130,square_re_n_131,square_re_n_132,square_re_n_133,square_re_n_134,square_re_n_135,square_re_n_136,square_re_n_137,square_re_n_138,square_re_n_139,square_re_n_140,square_re_n_141,square_re_n_142,square_re_n_143,square_re_n_144,square_re_n_145,square_re_n_146,square_re_n_147,square_re_n_148,square_re_n_149,square_re_n_150,square_re_n_151,square_re_n_152,square_re_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__0_OVERFLOW_UNCONNECTED),
        .P({square_re__0_n_58,square_re__0_n_59,square_re__0_n_60,square_re__0_n_61,square_re__0_n_62,square_re__0_n_63,square_re__0_n_64,square_re__0_n_65,square_re__0_n_66,square_re__0_n_67,square_re__0_n_68,square_re__0_n_69,square_re__0_n_70,square_re__0_n_71,square_re__0_n_72,square_re__0_n_73,square_re__0_n_74,square_re__0_n_75,square_re__0_n_76,square_re__0_n_77,square_re__0_n_78,square_re__0_n_79,square_re__0_n_80,square_re__0_n_81,square_re__0_n_82,square_re__0_n_83,square_re__0_n_84,square_re__0_n_85,square_re__0_n_86,square_re__0_n_87,square_re__0_n_88,square_re__0_n_89,square_re__0_n_90,square_re__0_n_91,square_re__0_n_92,square_re__0_n_93,square_re__0_n_94,square_re__0_n_95,square_re__0_n_96,square_re__0_n_97,square_re__0_n_98,square_re__0_n_99,square_re__0_n_100,square_re__0_n_101,square_re__0_n_102,square_re__0_n_103,square_re__0_n_104,square_re__0_n_105}),
        .PATTERNBDETECT(NLW_square_re__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re_n_106,square_re_n_107,square_re_n_108,square_re_n_109,square_re_n_110,square_re_n_111,square_re_n_112,square_re_n_113,square_re_n_114,square_re_n_115,square_re_n_116,square_re_n_117,square_re_n_118,square_re_n_119,square_re_n_120,square_re_n_121,square_re_n_122,square_re_n_123,square_re_n_124,square_re_n_125,square_re_n_126,square_re_n_127,square_re_n_128,square_re_n_129,square_re_n_130,square_re_n_131,square_re_n_132,square_re_n_133,square_re_n_134,square_re_n_135,square_re_n_136,square_re_n_137,square_re_n_138,square_re_n_139,square_re_n_140,square_re_n_141,square_re_n_142,square_re_n_143,square_re_n_144,square_re_n_145,square_re_n_146,square_re_n_147,square_re_n_148,square_re_n_149,square_re_n_150,square_re_n_151,square_re_n_152,square_re_n_153}),
        .PCOUT({square_re__0_n_106,square_re__0_n_107,square_re__0_n_108,square_re__0_n_109,square_re__0_n_110,square_re__0_n_111,square_re__0_n_112,square_re__0_n_113,square_re__0_n_114,square_re__0_n_115,square_re__0_n_116,square_re__0_n_117,square_re__0_n_118,square_re__0_n_119,square_re__0_n_120,square_re__0_n_121,square_re__0_n_122,square_re__0_n_123,square_re__0_n_124,square_re__0_n_125,square_re__0_n_126,square_re__0_n_127,square_re__0_n_128,square_re__0_n_129,square_re__0_n_130,square_re__0_n_131,square_re__0_n_132,square_re__0_n_133,square_re__0_n_134,square_re__0_n_135,square_re__0_n_136,square_re__0_n_137,square_re__0_n_138,square_re__0_n_139,square_re__0_n_140,square_re__0_n_141,square_re__0_n_142,square_re__0_n_143,square_re__0_n_144,square_re__0_n_145,square_re__0_n_146,square_re__0_n_147,square_re__0_n_148,square_re__0_n_149,square_re__0_n_150,square_re__0_n_151,square_re__0_n_152,square_re__0_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__1
       (.A({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__1_OVERFLOW_UNCONNECTED),
        .P({square_re__1_n_58,square_re__1_n_59,square_re__1_n_60,square_re__1_n_61,square_re__1_n_62,square_re__1_n_63,square_re__1_n_64,square_re__1_n_65,square_re__1_n_66,square_re__1_n_67,square_re__1_n_68,square_re__1_n_69,square_re__1_n_70,square_re__1_n_71,square_re__1_n_72,square_re__1_n_73,square_re__1_n_74,square_re__1_n_75,square_re__1_n_76,square_re__1_n_77,square_re__1_n_78,square_re__1_n_79,square_re__1_n_80,square_re__1_n_81,square_re__1_n_82,square_re__1_n_83,square_re__1_n_84,square_re__1_n_85,square_re__1_n_86,square_re__1_n_87,square_re__1_n_88,square_re__1_n_89,square_re__1_n_90,square_re__1_n_91,square_re__1_n_92,square_re__1_n_93,square_re__1_n_94,square_re__1_n_95,square_re__1_n_96,square_re__1_n_97,square_re__1_n_98,square_re__1_n_99,square_re__1_n_100,square_re__1_n_101,square_re__1_n_102,square_re__1_n_103,square_re__1_n_104,square_re__1_n_105}),
        .PATTERNBDETECT(NLW_square_re__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re__0_n_106,square_re__0_n_107,square_re__0_n_108,square_re__0_n_109,square_re__0_n_110,square_re__0_n_111,square_re__0_n_112,square_re__0_n_113,square_re__0_n_114,square_re__0_n_115,square_re__0_n_116,square_re__0_n_117,square_re__0_n_118,square_re__0_n_119,square_re__0_n_120,square_re__0_n_121,square_re__0_n_122,square_re__0_n_123,square_re__0_n_124,square_re__0_n_125,square_re__0_n_126,square_re__0_n_127,square_re__0_n_128,square_re__0_n_129,square_re__0_n_130,square_re__0_n_131,square_re__0_n_132,square_re__0_n_133,square_re__0_n_134,square_re__0_n_135,square_re__0_n_136,square_re__0_n_137,square_re__0_n_138,square_re__0_n_139,square_re__0_n_140,square_re__0_n_141,square_re__0_n_142,square_re__0_n_143,square_re__0_n_144,square_re__0_n_145,square_re__0_n_146,square_re__0_n_147,square_re__0_n_148,square_re__0_n_149,square_re__0_n_150,square_re__0_n_151,square_re__0_n_152,square_re__0_n_153}),
        .PCOUT(NLW_square_re__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__2_OVERFLOW_UNCONNECTED),
        .P(NLW_square_re__2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_re__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_re__2_n_106,square_re__2_n_107,square_re__2_n_108,square_re__2_n_109,square_re__2_n_110,square_re__2_n_111,square_re__2_n_112,square_re__2_n_113,square_re__2_n_114,square_re__2_n_115,square_re__2_n_116,square_re__2_n_117,square_re__2_n_118,square_re__2_n_119,square_re__2_n_120,square_re__2_n_121,square_re__2_n_122,square_re__2_n_123,square_re__2_n_124,square_re__2_n_125,square_re__2_n_126,square_re__2_n_127,square_re__2_n_128,square_re__2_n_129,square_re__2_n_130,square_re__2_n_131,square_re__2_n_132,square_re__2_n_133,square_re__2_n_134,square_re__2_n_135,square_re__2_n_136,square_re__2_n_137,square_re__2_n_138,square_re__2_n_139,square_re__2_n_140,square_re__2_n_141,square_re__2_n_142,square_re__2_n_143,square_re__2_n_144,square_re__2_n_145,square_re__2_n_146,square_re__2_n_147,square_re__2_n_148,square_re__2_n_149,square_re__2_n_150,square_re__2_n_151,square_re__2_n_152,square_re__2_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__2_UNDERFLOW_UNCONNECTED));
  CARRY4 square_re__2_i_1
       (.CI(square_re__2_i_2_n_0),
        .CO({square_re__2_i_1_n_0,square_re__2_i_1_n_1,square_re__2_i_1_n_2,square_re__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(rr_reg__1[15:12]),
        .O(cross_re0[15:12]),
        .S({square_re__2_i_5_n_0,square_re__2_i_6_n_0,square_re__2_i_7_n_0,square_re__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_10
       (.I0(rr_reg__1[10]),
        .I1(ii_reg__1[10]),
        .O(square_re__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_11
       (.I0(rr_reg__1[9]),
        .I1(ii_reg__1[9]),
        .O(square_re__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_12
       (.I0(rr_reg__1[8]),
        .I1(ii_reg__1[8]),
        .O(square_re__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_13
       (.I0(rr_reg__1[7]),
        .I1(ii_reg__1[7]),
        .O(square_re__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_14
       (.I0(rr_reg__1[6]),
        .I1(ii_reg__1[6]),
        .O(square_re__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_15
       (.I0(rr_reg__1[5]),
        .I1(ii_reg__1[5]),
        .O(square_re__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_16
       (.I0(rr_reg__1[4]),
        .I1(ii_reg__1[4]),
        .O(square_re__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_17
       (.I0(rr_reg__1[3]),
        .I1(ii_reg__1[3]),
        .O(square_re__2_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_18
       (.I0(rr_reg__1[2]),
        .I1(ii_reg__1[2]),
        .O(square_re__2_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_19
       (.I0(rr_reg__1[1]),
        .I1(ii_reg__1[1]),
        .O(square_re__2_i_19_n_0));
  CARRY4 square_re__2_i_2
       (.CI(square_re__2_i_3_n_0),
        .CO({square_re__2_i_2_n_0,square_re__2_i_2_n_1,square_re__2_i_2_n_2,square_re__2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(rr_reg__1[11:8]),
        .O(cross_re0[11:8]),
        .S({square_re__2_i_9_n_0,square_re__2_i_10_n_0,square_re__2_i_11_n_0,square_re__2_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_20
       (.I0(rr_reg__1[0]),
        .I1(ii_reg__1[0]),
        .O(square_re__2_i_20_n_0));
  CARRY4 square_re__2_i_3
       (.CI(square_re__2_i_4_n_0),
        .CO({square_re__2_i_3_n_0,square_re__2_i_3_n_1,square_re__2_i_3_n_2,square_re__2_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(rr_reg__1[7:4]),
        .O(cross_re0[7:4]),
        .S({square_re__2_i_13_n_0,square_re__2_i_14_n_0,square_re__2_i_15_n_0,square_re__2_i_16_n_0}));
  CARRY4 square_re__2_i_4
       (.CI(1'b0),
        .CO({square_re__2_i_4_n_0,square_re__2_i_4_n_1,square_re__2_i_4_n_2,square_re__2_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(rr_reg__1[3:0]),
        .O(cross_re0[3:0]),
        .S({square_re__2_i_17_n_0,square_re__2_i_18_n_0,square_re__2_i_19_n_0,square_re__2_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_5
       (.I0(rr_reg__1[15]),
        .I1(ii_reg__1[15]),
        .O(square_re__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_6
       (.I0(rr_reg__1[14]),
        .I1(ii_reg__1[14]),
        .O(square_re__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_7
       (.I0(rr_reg__1[13]),
        .I1(ii_reg__1[13]),
        .O(square_re__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_8
       (.I0(rr_reg__1[12]),
        .I1(ii_reg__1[12]),
        .O(square_re__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re__2_i_9
       (.I0(rr_reg__1[11]),
        .I1(ii_reg__1[11]),
        .O(square_re__2_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_re0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__3_OVERFLOW_UNCONNECTED),
        .P(NLW_square_re__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_re__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re__2_n_106,square_re__2_n_107,square_re__2_n_108,square_re__2_n_109,square_re__2_n_110,square_re__2_n_111,square_re__2_n_112,square_re__2_n_113,square_re__2_n_114,square_re__2_n_115,square_re__2_n_116,square_re__2_n_117,square_re__2_n_118,square_re__2_n_119,square_re__2_n_120,square_re__2_n_121,square_re__2_n_122,square_re__2_n_123,square_re__2_n_124,square_re__2_n_125,square_re__2_n_126,square_re__2_n_127,square_re__2_n_128,square_re__2_n_129,square_re__2_n_130,square_re__2_n_131,square_re__2_n_132,square_re__2_n_133,square_re__2_n_134,square_re__2_n_135,square_re__2_n_136,square_re__2_n_137,square_re__2_n_138,square_re__2_n_139,square_re__2_n_140,square_re__2_n_141,square_re__2_n_142,square_re__2_n_143,square_re__2_n_144,square_re__2_n_145,square_re__2_n_146,square_re__2_n_147,square_re__2_n_148,square_re__2_n_149,square_re__2_n_150,square_re__2_n_151,square_re__2_n_152,square_re__2_n_153}),
        .PCOUT({square_re__3_n_106,square_re__3_n_107,square_re__3_n_108,square_re__3_n_109,square_re__3_n_110,square_re__3_n_111,square_re__3_n_112,square_re__3_n_113,square_re__3_n_114,square_re__3_n_115,square_re__3_n_116,square_re__3_n_117,square_re__3_n_118,square_re__3_n_119,square_re__3_n_120,square_re__3_n_121,square_re__3_n_122,square_re__3_n_123,square_re__3_n_124,square_re__3_n_125,square_re__3_n_126,square_re__3_n_127,square_re__3_n_128,square_re__3_n_129,square_re__3_n_130,square_re__3_n_131,square_re__3_n_132,square_re__3_n_133,square_re__3_n_134,square_re__3_n_135,square_re__3_n_136,square_re__3_n_137,square_re__3_n_138,square_re__3_n_139,square_re__3_n_140,square_re__3_n_141,square_re__3_n_142,square_re__3_n_143,square_re__3_n_144,square_re__3_n_145,square_re__3_n_146,square_re__3_n_147,square_re__3_n_148,square_re__3_n_149,square_re__3_n_150,square_re__3_n_151,square_re__3_n_152,square_re__3_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cross_re0[48],cross_re0[48],cross_re0[48],cross_re0[48:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__4_OVERFLOW_UNCONNECTED),
        .P({square_re__4_n_58,square_re__4_n_59,square_re__4_n_60,square_re__4_n_61,square_re__4_n_62,square_re__4_n_63,square_re__4_n_64,square_re__4_n_65,square_re__4_n_66,square_re__4_n_67,square_re__4_n_68,square_re__4_n_69,square_re__4_n_70,square_re__4_n_71,square_re__4_n_72,square_re__4_n_73,square_re__4_n_74,square_re__4_n_75,square_re__4_n_76,square_re__4_n_77,square_re__4_n_78,square_re__4_n_79,square_re__4_n_80,square_re__4_n_81,square_re__4_n_82,square_re__4_n_83,square_re__4_n_84,square_re__4_n_85,square_re__4_n_86,square_re__4_n_87,square_re__4_n_88,square_re__4_n_89,square_re__4_n_90,square_re__4_n_91,square_re__4_n_92,square_re__4_n_93,square_re__4_n_94,square_re__4_n_95,square_re__4_n_96,square_re__4_n_97,square_re__4_n_98,square_re__4_n_99,square_re__4_n_100,square_re__4_n_101,square_re__4_n_102,square_re__4_n_103,square_re__4_n_104,square_re__4_n_105}),
        .PATTERNBDETECT(NLW_square_re__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re__3_n_106,square_re__3_n_107,square_re__3_n_108,square_re__3_n_109,square_re__3_n_110,square_re__3_n_111,square_re__3_n_112,square_re__3_n_113,square_re__3_n_114,square_re__3_n_115,square_re__3_n_116,square_re__3_n_117,square_re__3_n_118,square_re__3_n_119,square_re__3_n_120,square_re__3_n_121,square_re__3_n_122,square_re__3_n_123,square_re__3_n_124,square_re__3_n_125,square_re__3_n_126,square_re__3_n_127,square_re__3_n_128,square_re__3_n_129,square_re__3_n_130,square_re__3_n_131,square_re__3_n_132,square_re__3_n_133,square_re__3_n_134,square_re__3_n_135,square_re__3_n_136,square_re__3_n_137,square_re__3_n_138,square_re__3_n_139,square_re__3_n_140,square_re__3_n_141,square_re__3_n_142,square_re__3_n_143,square_re__3_n_144,square_re__3_n_145,square_re__3_n_146,square_re__3_n_147,square_re__3_n_148,square_re__3_n_149,square_re__3_n_150,square_re__3_n_151,square_re__3_n_152,square_re__3_n_153}),
        .PCOUT(NLW_square_re__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_re0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__5_OVERFLOW_UNCONNECTED),
        .P({square_re__5_n_58,square_re__5_n_59,square_re__5_n_60,square_re__5_n_61,square_re__5_n_62,square_re__5_n_63,square_re__5_n_64,square_re__5_n_65,square_re__5_n_66,square_re__5_n_67,square_re__5_n_68,square_re__5_n_69,square_re__5_n_70,square_re__5_n_71,square_re__5_n_72,square_re__5_n_73,square_re__5_n_74,square_re__5_n_75,square_re__5_n_76,square_re__5_n_77,square_re__5_n_78,square_re__5_n_79,square_re__5_n_80,square_re__5_n_81,square_re__5_n_82,square_re__5_n_83,square_re__5_n_84,square_re__5_n_85,square_re__5_n_86,square_re__5_n_87,square_re__5_n_88,square_re__5_n_89,square_re__5_n_90,square_re__5_n_91,square_re__5_n_92,square_re__5_n_93,square_re__5_n_94,square_re__5_n_95,square_re__5_n_96,square_re__5_n_97,square_re__5_n_98,square_re__5_n_99,square_re__5_n_100,square_re__5_n_101,square_re__5_n_102,square_re__5_n_103,square_re__5_n_104,square_re__5_n_105}),
        .PATTERNBDETECT(NLW_square_re__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({square_re__5_n_106,square_re__5_n_107,square_re__5_n_108,square_re__5_n_109,square_re__5_n_110,square_re__5_n_111,square_re__5_n_112,square_re__5_n_113,square_re__5_n_114,square_re__5_n_115,square_re__5_n_116,square_re__5_n_117,square_re__5_n_118,square_re__5_n_119,square_re__5_n_120,square_re__5_n_121,square_re__5_n_122,square_re__5_n_123,square_re__5_n_124,square_re__5_n_125,square_re__5_n_126,square_re__5_n_127,square_re__5_n_128,square_re__5_n_129,square_re__5_n_130,square_re__5_n_131,square_re__5_n_132,square_re__5_n_133,square_re__5_n_134,square_re__5_n_135,square_re__5_n_136,square_re__5_n_137,square_re__5_n_138,square_re__5_n_139,square_re__5_n_140,square_re__5_n_141,square_re__5_n_142,square_re__5_n_143,square_re__5_n_144,square_re__5_n_145,square_re__5_n_146,square_re__5_n_147,square_re__5_n_148,square_re__5_n_149,square_re__5_n_150,square_re__5_n_151,square_re__5_n_152,square_re__5_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_re0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__6_OVERFLOW_UNCONNECTED),
        .P(NLW_square_re__6_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_square_re__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re__5_n_106,square_re__5_n_107,square_re__5_n_108,square_re__5_n_109,square_re__5_n_110,square_re__5_n_111,square_re__5_n_112,square_re__5_n_113,square_re__5_n_114,square_re__5_n_115,square_re__5_n_116,square_re__5_n_117,square_re__5_n_118,square_re__5_n_119,square_re__5_n_120,square_re__5_n_121,square_re__5_n_122,square_re__5_n_123,square_re__5_n_124,square_re__5_n_125,square_re__5_n_126,square_re__5_n_127,square_re__5_n_128,square_re__5_n_129,square_re__5_n_130,square_re__5_n_131,square_re__5_n_132,square_re__5_n_133,square_re__5_n_134,square_re__5_n_135,square_re__5_n_136,square_re__5_n_137,square_re__5_n_138,square_re__5_n_139,square_re__5_n_140,square_re__5_n_141,square_re__5_n_142,square_re__5_n_143,square_re__5_n_144,square_re__5_n_145,square_re__5_n_146,square_re__5_n_147,square_re__5_n_148,square_re__5_n_149,square_re__5_n_150,square_re__5_n_151,square_re__5_n_152,square_re__5_n_153}),
        .PCOUT({square_re__6_n_106,square_re__6_n_107,square_re__6_n_108,square_re__6_n_109,square_re__6_n_110,square_re__6_n_111,square_re__6_n_112,square_re__6_n_113,square_re__6_n_114,square_re__6_n_115,square_re__6_n_116,square_re__6_n_117,square_re__6_n_118,square_re__6_n_119,square_re__6_n_120,square_re__6_n_121,square_re__6_n_122,square_re__6_n_123,square_re__6_n_124,square_re__6_n_125,square_re__6_n_126,square_re__6_n_127,square_re__6_n_128,square_re__6_n_129,square_re__6_n_130,square_re__6_n_131,square_re__6_n_132,square_re__6_n_133,square_re__6_n_134,square_re__6_n_135,square_re__6_n_136,square_re__6_n_137,square_re__6_n_138,square_re__6_n_139,square_re__6_n_140,square_re__6_n_141,square_re__6_n_142,square_re__6_n_143,square_re__6_n_144,square_re__6_n_145,square_re__6_n_146,square_re__6_n_147,square_re__6_n_148,square_re__6_n_149,square_re__6_n_150,square_re__6_n_151,square_re__6_n_152,square_re__6_n_153}),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 9}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    square_re__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cross_re0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_square_re__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,cross_re0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_square_re__7_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_square_re__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_square_re__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(cross_im),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(cross_im),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_square_re__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_square_re__7_OVERFLOW_UNCONNECTED),
        .P({square_re__7_n_58,square_re__7_n_59,square_re__7_n_60,square_re__7_n_61,square_re__7_n_62,square_re__7_n_63,square_re__7_n_64,square_re__7_n_65,square_re__7_n_66,square_re__7_n_67,square_re__7_n_68,square_re__7_n_69,square_re__7_n_70,square_re__7_n_71,square_re__7_n_72,square_re__7_n_73,square_re__7_n_74,square_re__7_n_75,square_re__7_n_76,square_re__7_n_77,square_re__7_n_78,square_re__7_n_79,square_re__7_n_80,square_re__7_n_81,square_re__7_n_82,square_re__7_n_83,square_re__7_n_84,square_re__7_n_85,square_re__7_n_86,square_re__7_n_87,square_re__7_n_88,square_re__7_n_89,square_re__7_n_90,square_re__7_n_91,square_re__7_n_92,square_re__7_n_93,square_re__7_n_94,square_re__7_n_95,square_re__7_n_96,square_re__7_n_97,square_re__7_n_98,square_re__7_n_99,square_re__7_n_100,square_re__7_n_101,square_re__7_n_102,square_re__7_n_103,square_re__7_n_104,square_re__7_n_105}),
        .PATTERNBDETECT(NLW_square_re__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_square_re__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({square_re__6_n_106,square_re__6_n_107,square_re__6_n_108,square_re__6_n_109,square_re__6_n_110,square_re__6_n_111,square_re__6_n_112,square_re__6_n_113,square_re__6_n_114,square_re__6_n_115,square_re__6_n_116,square_re__6_n_117,square_re__6_n_118,square_re__6_n_119,square_re__6_n_120,square_re__6_n_121,square_re__6_n_122,square_re__6_n_123,square_re__6_n_124,square_re__6_n_125,square_re__6_n_126,square_re__6_n_127,square_re__6_n_128,square_re__6_n_129,square_re__6_n_130,square_re__6_n_131,square_re__6_n_132,square_re__6_n_133,square_re__6_n_134,square_re__6_n_135,square_re__6_n_136,square_re__6_n_137,square_re__6_n_138,square_re__6_n_139,square_re__6_n_140,square_re__6_n_141,square_re__6_n_142,square_re__6_n_143,square_re__6_n_144,square_re__6_n_145,square_re__6_n_146,square_re__6_n_147,square_re__6_n_148,square_re__6_n_149,square_re__6_n_150,square_re__6_n_151,square_re__6_n_152,square_re__6_n_153}),
        .PCOUT(NLW_square_re__7_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_square_re__7_UNDERFLOW_UNCONNECTED));
  CARRY4 square_re_i_1
       (.CI(square_re_i_2_n_0),
        .CO(NLW_square_re_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_square_re_i_1_O_UNCONNECTED[3:1],cross_re0[48]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    square_re_i_10
       (.I0(rr_reg__0_n_75),
        .O(square_re_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_11
       (.I0(rr_reg__0_n_75),
        .I1(ii_reg__0_n_75),
        .O(square_re_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_12
       (.I0(rr_reg__0_n_76),
        .I1(ii_reg__0_n_76),
        .O(square_re_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_13
       (.I0(rr_reg__0_n_77),
        .I1(ii_reg__0_n_77),
        .O(square_re_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_14
       (.I0(rr_reg__0_n_78),
        .I1(ii_reg__0_n_78),
        .O(square_re_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_15
       (.I0(rr_reg__0_n_79),
        .I1(ii_reg__0_n_79),
        .O(square_re_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_16
       (.I0(rr_reg__0_n_80),
        .I1(ii_reg__0_n_80),
        .O(square_re_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_17
       (.I0(rr_reg__0_n_81),
        .I1(ii_reg__0_n_81),
        .O(square_re_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_18
       (.I0(rr_reg__0_n_82),
        .I1(ii_reg__0_n_82),
        .O(square_re_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_19
       (.I0(rr_reg__0_n_83),
        .I1(ii_reg__0_n_83),
        .O(square_re_i_19_n_0));
  CARRY4 square_re_i_2
       (.CI(square_re_i_3_n_0),
        .CO({square_re_i_2_n_0,square_re_i_2_n_1,square_re_i_2_n_2,square_re_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({square_re_i_10_n_0,rr_reg__0_n_76,rr_reg__0_n_77,rr_reg__0_n_78}),
        .O(cross_re0[47:44]),
        .S({square_re_i_11_n_0,square_re_i_12_n_0,square_re_i_13_n_0,square_re_i_14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_20
       (.I0(rr_reg__0_n_84),
        .I1(ii_reg__0_n_84),
        .O(square_re_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_21
       (.I0(rr_reg__0_n_85),
        .I1(ii_reg__0_n_85),
        .O(square_re_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_22
       (.I0(rr_reg__0_n_86),
        .I1(ii_reg__0_n_86),
        .O(square_re_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_23
       (.I0(rr_reg__0_n_87),
        .I1(ii_reg__0_n_87),
        .O(square_re_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_24
       (.I0(rr_reg__0_n_88),
        .I1(ii_reg__0_n_88),
        .O(square_re_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_25
       (.I0(rr_reg__0_n_89),
        .I1(ii_reg__0_n_89),
        .O(square_re_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_26
       (.I0(rr_reg__0_n_90),
        .I1(ii_reg__0_n_90),
        .O(square_re_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_27
       (.I0(rr_reg__0_n_91),
        .I1(ii_reg__0_n_91),
        .O(square_re_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_28
       (.I0(rr_reg__0_n_92),
        .I1(ii_reg__0_n_92),
        .O(square_re_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_29
       (.I0(rr_reg__0_n_93),
        .I1(ii_reg__0_n_93),
        .O(square_re_i_29_n_0));
  CARRY4 square_re_i_3
       (.CI(square_re_i_4_n_0),
        .CO({square_re_i_3_n_0,square_re_i_3_n_1,square_re_i_3_n_2,square_re_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_79,rr_reg__0_n_80,rr_reg__0_n_81,rr_reg__0_n_82}),
        .O(cross_re0[43:40]),
        .S({square_re_i_15_n_0,square_re_i_16_n_0,square_re_i_17_n_0,square_re_i_18_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_30
       (.I0(rr_reg__0_n_94),
        .I1(ii_reg__0_n_94),
        .O(square_re_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_31
       (.I0(rr_reg__0_n_95),
        .I1(ii_reg__0_n_95),
        .O(square_re_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_32
       (.I0(rr_reg__0_n_96),
        .I1(ii_reg__0_n_96),
        .O(square_re_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_33
       (.I0(rr_reg__0_n_97),
        .I1(ii_reg__0_n_97),
        .O(square_re_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_34
       (.I0(rr_reg__0_n_98),
        .I1(ii_reg__0_n_98),
        .O(square_re_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_35
       (.I0(rr_reg__0_n_99),
        .I1(ii_reg__0_n_99),
        .O(square_re_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_36
       (.I0(rr_reg__0_n_100),
        .I1(ii_reg__0_n_100),
        .O(square_re_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_37
       (.I0(rr_reg__0_n_101),
        .I1(ii_reg__0_n_101),
        .O(square_re_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_38
       (.I0(rr_reg__0_n_102),
        .I1(ii_reg__0_n_102),
        .O(square_re_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_39
       (.I0(rr_reg__0_n_103),
        .I1(ii_reg__0_n_103),
        .O(square_re_i_39_n_0));
  CARRY4 square_re_i_4
       (.CI(square_re_i_5_n_0),
        .CO({square_re_i_4_n_0,square_re_i_4_n_1,square_re_i_4_n_2,square_re_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_83,rr_reg__0_n_84,rr_reg__0_n_85,rr_reg__0_n_86}),
        .O(cross_re0[39:36]),
        .S({square_re_i_19_n_0,square_re_i_20_n_0,square_re_i_21_n_0,square_re_i_22_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_40
       (.I0(rr_reg__0_n_104),
        .I1(ii_reg__0_n_104),
        .O(square_re_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_41
       (.I0(rr_reg__0_n_105),
        .I1(ii_reg__0_n_105),
        .O(square_re_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    square_re_i_42
       (.I0(rr_reg__1[16]),
        .I1(ii_reg__1[16]),
        .O(square_re_i_42_n_0));
  CARRY4 square_re_i_5
       (.CI(square_re_i_6_n_0),
        .CO({square_re_i_5_n_0,square_re_i_5_n_1,square_re_i_5_n_2,square_re_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_87,rr_reg__0_n_88,rr_reg__0_n_89,rr_reg__0_n_90}),
        .O(cross_re0[35:32]),
        .S({square_re_i_23_n_0,square_re_i_24_n_0,square_re_i_25_n_0,square_re_i_26_n_0}));
  CARRY4 square_re_i_6
       (.CI(square_re_i_7_n_0),
        .CO({square_re_i_6_n_0,square_re_i_6_n_1,square_re_i_6_n_2,square_re_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_91,rr_reg__0_n_92,rr_reg__0_n_93,rr_reg__0_n_94}),
        .O(cross_re0[31:28]),
        .S({square_re_i_27_n_0,square_re_i_28_n_0,square_re_i_29_n_0,square_re_i_30_n_0}));
  CARRY4 square_re_i_7
       (.CI(square_re_i_8_n_0),
        .CO({square_re_i_7_n_0,square_re_i_7_n_1,square_re_i_7_n_2,square_re_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_95,rr_reg__0_n_96,rr_reg__0_n_97,rr_reg__0_n_98}),
        .O(cross_re0[27:24]),
        .S({square_re_i_31_n_0,square_re_i_32_n_0,square_re_i_33_n_0,square_re_i_34_n_0}));
  CARRY4 square_re_i_8
       (.CI(square_re_i_9_n_0),
        .CO({square_re_i_8_n_0,square_re_i_8_n_1,square_re_i_8_n_2,square_re_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_99,rr_reg__0_n_100,rr_reg__0_n_101,rr_reg__0_n_102}),
        .O(cross_re0[23:20]),
        .S({square_re_i_35_n_0,square_re_i_36_n_0,square_re_i_37_n_0,square_re_i_38_n_0}));
  CARRY4 square_re_i_9
       (.CI(square_re__2_i_1_n_0),
        .CO({square_re_i_9_n_0,square_re_i_9_n_1,square_re_i_9_n_2,square_re_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({rr_reg__0_n_103,rr_reg__0_n_104,rr_reg__0_n_105,rr_reg__1[16]}),
        .O(cross_re0[19:16]),
        .S({square_re_i_39_n_0,square_re_i_40_n_0,square_re_i_41_n_0,square_re_i_42_n_0}));
  LUT6 #(
    .INIT(64'h2666262600000000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(rst),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2666262600000000)) 
    \state[0]_rep_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(rst),
        .O(\state[0]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2666262600000000)) 
    \state[0]_rep_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(rst),
        .O(\state[0]_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2666262600000000)) 
    \state[0]_rep_i_1__1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(rst),
        .O(\state[0]_rep_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h262A0000)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg[0]_rep_n_0 ),
        .I4(rst),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0AF040F000000000)) 
    \state[2]_i_1 
       (.I0(\state_reg[0]_rep_n_0 ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(rst),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_10 
       (.I0(\denominator_reg_n_0_[38] ),
        .I1(\denominator_reg_n_0_[32] ),
        .I2(\denominator_reg_n_0_[45] ),
        .I3(\denominator_reg_n_0_[35] ),
        .O(\state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_11 
       (.I0(\denominator_reg_n_0_[31] ),
        .I1(\denominator_reg_n_0_[13] ),
        .I2(\denominator_reg_n_0_[30] ),
        .I3(\denominator_reg_n_0_[23] ),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_12 
       (.I0(\denominator_reg_n_0_[36] ),
        .I1(\denominator_reg_n_0_[24] ),
        .I2(\denominator_reg_n_0_[42] ),
        .I3(\denominator_reg_n_0_[6] ),
        .O(\state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_13 
       (.I0(\denominator_reg_n_0_[19] ),
        .I1(\denominator_reg_n_0_[18] ),
        .I2(\denominator_reg_n_0_[25] ),
        .I3(\denominator_reg_n_0_[21] ),
        .O(\state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_14 
       (.I0(\denominator_reg_n_0_[15] ),
        .I1(\denominator_reg_n_0_[10] ),
        .I2(\denominator_reg_n_0_[48] ),
        .I3(\denominator_reg_n_0_[37] ),
        .O(\state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_15 
       (.I0(\denominator_reg_n_0_[47] ),
        .I1(\denominator_reg_n_0_[29] ),
        .I2(\denominator_reg_n_0_[27] ),
        .I3(\denominator_reg_n_0_[3] ),
        .O(\state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state[2]_i_5_n_0 ),
        .I2(\state[2]_i_6_n_0 ),
        .I3(\state[2]_i_7_n_0 ),
        .I4(\state[2]_i_8_n_0 ),
        .I5(\state[2]_i_9_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF33EFFFE)) 
    \state[2]_i_3 
       (.I0(calculating),
        .I1(\state_reg[0]_rep_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\denominator[48]_i_3_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_4 
       (.I0(\denominator_reg_n_0_[0] ),
        .I1(\denominator_reg_n_0_[12] ),
        .I2(\denominator_reg_n_0_[11] ),
        .I3(\denominator_reg_n_0_[34] ),
        .I4(\state[2]_i_10_n_0 ),
        .O(\state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_5 
       (.I0(\denominator_reg_n_0_[2] ),
        .I1(\denominator_reg_n_0_[33] ),
        .I2(\denominator_reg_n_0_[40] ),
        .I3(\denominator_reg_n_0_[44] ),
        .I4(\state[2]_i_11_n_0 ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_6 
       (.I0(\denominator_reg_n_0_[4] ),
        .I1(\denominator_reg_n_0_[1] ),
        .I2(\denominator_reg_n_0_[20] ),
        .I3(\denominator_reg_n_0_[28] ),
        .I4(\denominator_reg_n_0_[16] ),
        .I5(\denominator_reg_n_0_[17] ),
        .O(\state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_7 
       (.I0(\denominator_reg_n_0_[7] ),
        .I1(\denominator_reg_n_0_[43] ),
        .I2(\denominator_reg_n_0_[5] ),
        .I3(\denominator_reg_n_0_[8] ),
        .I4(\state[2]_i_12_n_0 ),
        .O(\state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_8 
       (.I0(\denominator_reg_n_0_[9] ),
        .I1(\denominator_reg_n_0_[14] ),
        .I2(\denominator_reg_n_0_[26] ),
        .I3(\denominator_reg_n_0_[39] ),
        .I4(\state[2]_i_13_n_0 ),
        .O(\state[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_9 
       (.I0(\denominator_reg_n_0_[22] ),
        .I1(\denominator_reg_n_0_[46] ),
        .I2(\denominator_reg_n_0_[41] ),
        .I3(\state[2]_i_14_n_0 ),
        .I4(\state[2]_i_15_n_0 ),
        .O(\state[2]_i_9_n_0 ));
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_rep_i_1_n_0 ),
        .Q(\state_reg[0]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_rep_i_1__0_n_0 ),
        .Q(\state_reg[0]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_rep_i_1__1_n_0 ),
        .Q(\state_reg[0]_rep__1_n_0 ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PHAT_Weight" *) 
module core_PHAT_IFFT_Ctrl_0_0_PHAT_Weight
   (rst_0,
    CO,
    \div_rem_im_reg[48] ,
    square_im__1,
    square_re__1,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    E,
    m_axis_tvalid_reg_0,
    \bin_index_reg[4] ,
    \bin_index_reg[2] ,
    D,
    Q,
    ii0,
    clk,
    S,
    \out_re_reg[4] ,
    \out_im_reg[4] ,
    \FSM_sequential_state_reg[0] ,
    s_axis_data_tvalid_reg,
    s_axis_data_tvalid_reg_0,
    s_axis_data_tlast,
    rst,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[3]_i_3 ,
    s_axis_config_tready,
    s_axis_data_tlast_reg,
    last_latched_i_2_0);
  output rst_0;
  output [0:0]CO;
  output [0:0]\div_rem_im_reg[48] ;
  output [1:0]square_im__1;
  output [1:0]square_re__1;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]m_axis_tvalid_reg_0;
  output \bin_index_reg[4] ;
  output \bin_index_reg[2] ;
  output [47:0]D;
  input [47:0]Q;
  input [47:0]ii0;
  input clk;
  input [1:0]S;
  input \out_re_reg[4] ;
  input \out_im_reg[4] ;
  input [3:0]\FSM_sequential_state_reg[0] ;
  input s_axis_data_tvalid_reg;
  input s_axis_data_tvalid_reg_0;
  input s_axis_data_tlast;
  input rst;
  input \FSM_sequential_state_reg[0]_0 ;
  input \FSM_sequential_state_reg[0]_1 ;
  input \FSM_sequential_state_reg[3]_i_3 ;
  input s_axis_config_tready;
  input s_axis_data_tlast_reg;
  input [11:0]last_latched_i_2_0;

  wire [0:0]CO;
  wire [47:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[3]_i_3 ;
  wire [47:0]Q;
  wire [1:0]S;
  wire arithmetic_n_7;
  wire arithmetic_n_8;
  wire arithmetic_n_9;
  wire \bin_index_reg[2] ;
  wire \bin_index_reg[4] ;
  wire calculating1;
  wire calculating_reg_n_0;
  wire clk;
  wire [23:0]core_im;
  wire [23:0]core_re;
  wire [0:0]\div_rem_im_reg[48] ;
  wire [47:0]ii0;
  wire last_latched;
  wire [11:0]last_latched_i_2_0;
  wire last_latched_i_2_n_0;
  wire last_latched_i_3_n_0;
  wire [47:0]m_axis_tdata;
  wire m_axis_tvalid_i_2_n_0;
  wire [0:0]m_axis_tvalid_reg_0;
  wire \out_im_reg[4] ;
  wire \out_re_reg[4] ;
  wire rst;
  wire rst_0;
  wire s_axis_config_tready;
  wire s_axis_data_tlast;
  wire s_axis_data_tlast_i_2_n_0;
  wire s_axis_data_tlast_reg;
  wire s_axis_data_tvalid_i_2_n_0;
  wire s_axis_data_tvalid_i_3_n_0;
  wire s_axis_data_tvalid_reg;
  wire s_axis_data_tvalid_reg_0;
  wire [1:0]square_im__1;
  wire [1:0]square_re__1;
  wire weight_out_last;
  wire weight_out_valid;

  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(last_latched_i_2_0[4]),
        .I1(last_latched_i_2_0[5]),
        .O(\bin_index_reg[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(last_latched_i_2_0[2]),
        .I1(last_latched_i_2_0[3]),
        .O(\bin_index_reg[2] ));
  core_PHAT_IFFT_Ctrl_0_0_PHAT_Norm_Core arithmetic
       (.CO(CO),
        .D({core_im,core_re}),
        .E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state_reg[0]_1 ),
        .\FSM_sequential_state_reg[3]_i_3_0 (\FSM_sequential_state_reg[3]_i_3 ),
        .Q(Q),
        .S(S),
        .calculating_reg(arithmetic_n_8),
        .calculating_reg_0(arithmetic_n_9),
        .calculating_reg_1(calculating_reg_n_0),
        .clk(clk),
        .\div_rem_im_reg[48]_0 (\div_rem_im_reg[48] ),
        .done_reg_0(calculating1),
        .ii0_0(ii0),
        .last_latched(last_latched),
        .last_latched_reg(arithmetic_n_7),
        .last_latched_reg_0(last_latched_i_2_n_0),
        .m_axis_tvalid_reg(m_axis_tvalid_i_2_n_0),
        .\out_im_reg[4]_0 (\out_im_reg[4] ),
        .\out_re_reg[4]_0 (\out_re_reg[4] ),
        .rst(rst),
        .rst_0(rst_0),
        .s_axis_config_tready(s_axis_config_tready),
        .square_im__1_0(square_im__1),
        .square_re__1_0(square_re__1),
        .weight_out_valid(weight_out_valid));
  FDCE calculating_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(arithmetic_n_8),
        .Q(calculating_reg_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    last_latched_i_2
       (.I0(last_latched_i_2_0[6]),
        .I1(last_latched_i_2_0[9]),
        .I2(last_latched_i_2_0[8]),
        .I3(last_latched_i_2_0[10]),
        .I4(last_latched_i_3_n_0),
        .O(last_latched_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    last_latched_i_3
       (.I0(last_latched_i_2_0[0]),
        .I1(last_latched_i_2_0[11]),
        .I2(\bin_index_reg[4] ),
        .I3(last_latched_i_2_0[1]),
        .I4(last_latched_i_2_0[7]),
        .I5(\bin_index_reg[2] ),
        .O(last_latched_i_3_n_0));
  FDCE last_latched_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(arithmetic_n_7),
        .Q(last_latched));
  FDCE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[0]),
        .Q(m_axis_tdata[0]));
  FDCE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[10]),
        .Q(m_axis_tdata[10]));
  FDCE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[11]),
        .Q(m_axis_tdata[11]));
  FDCE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[12]),
        .Q(m_axis_tdata[12]));
  FDCE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[13]),
        .Q(m_axis_tdata[13]));
  FDCE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[14]),
        .Q(m_axis_tdata[14]));
  FDCE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[15]),
        .Q(m_axis_tdata[15]));
  FDCE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[16]),
        .Q(m_axis_tdata[16]));
  FDCE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[17]),
        .Q(m_axis_tdata[17]));
  FDCE \m_axis_tdata_reg[18] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[18]),
        .Q(m_axis_tdata[18]));
  FDCE \m_axis_tdata_reg[19] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[19]),
        .Q(m_axis_tdata[19]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[1]),
        .Q(m_axis_tdata[1]));
  FDCE \m_axis_tdata_reg[20] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[20]),
        .Q(m_axis_tdata[20]));
  FDCE \m_axis_tdata_reg[21] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[21]),
        .Q(m_axis_tdata[21]));
  FDCE \m_axis_tdata_reg[22] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[22]),
        .Q(m_axis_tdata[22]));
  FDCE \m_axis_tdata_reg[23] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[23]),
        .Q(m_axis_tdata[23]));
  FDCE \m_axis_tdata_reg[24] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[0]),
        .Q(m_axis_tdata[24]));
  FDCE \m_axis_tdata_reg[25] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[1]),
        .Q(m_axis_tdata[25]));
  FDCE \m_axis_tdata_reg[26] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[2]),
        .Q(m_axis_tdata[26]));
  FDCE \m_axis_tdata_reg[27] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[3]),
        .Q(m_axis_tdata[27]));
  FDCE \m_axis_tdata_reg[28] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[4]),
        .Q(m_axis_tdata[28]));
  FDCE \m_axis_tdata_reg[29] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[5]),
        .Q(m_axis_tdata[29]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[2]),
        .Q(m_axis_tdata[2]));
  FDCE \m_axis_tdata_reg[30] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[6]),
        .Q(m_axis_tdata[30]));
  FDCE \m_axis_tdata_reg[31] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[7]),
        .Q(m_axis_tdata[31]));
  FDCE \m_axis_tdata_reg[32] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[8]),
        .Q(m_axis_tdata[32]));
  FDCE \m_axis_tdata_reg[33] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[9]),
        .Q(m_axis_tdata[33]));
  FDCE \m_axis_tdata_reg[34] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[10]),
        .Q(m_axis_tdata[34]));
  FDCE \m_axis_tdata_reg[35] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[11]),
        .Q(m_axis_tdata[35]));
  FDCE \m_axis_tdata_reg[36] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[12]),
        .Q(m_axis_tdata[36]));
  FDCE \m_axis_tdata_reg[37] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[13]),
        .Q(m_axis_tdata[37]));
  FDCE \m_axis_tdata_reg[38] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[14]),
        .Q(m_axis_tdata[38]));
  FDCE \m_axis_tdata_reg[39] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[15]),
        .Q(m_axis_tdata[39]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[3]),
        .Q(m_axis_tdata[3]));
  FDCE \m_axis_tdata_reg[40] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[16]),
        .Q(m_axis_tdata[40]));
  FDCE \m_axis_tdata_reg[41] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[17]),
        .Q(m_axis_tdata[41]));
  FDCE \m_axis_tdata_reg[42] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[18]),
        .Q(m_axis_tdata[42]));
  FDCE \m_axis_tdata_reg[43] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[19]),
        .Q(m_axis_tdata[43]));
  FDCE \m_axis_tdata_reg[44] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[20]),
        .Q(m_axis_tdata[44]));
  FDCE \m_axis_tdata_reg[45] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[21]),
        .Q(m_axis_tdata[45]));
  FDCE \m_axis_tdata_reg[46] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[22]),
        .Q(m_axis_tdata[46]));
  FDCE \m_axis_tdata_reg[47] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_im[23]),
        .Q(m_axis_tdata[47]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[4]),
        .Q(m_axis_tdata[4]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[5]),
        .Q(m_axis_tdata[5]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[6]),
        .Q(m_axis_tdata[6]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[7]),
        .Q(m_axis_tdata[7]));
  FDCE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[8]),
        .Q(m_axis_tdata[8]));
  FDCE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(core_re[9]),
        .Q(m_axis_tdata[9]));
  FDCE m_axis_tlast_reg
       (.C(clk),
        .CE(calculating1),
        .CLR(rst_0),
        .D(last_latched),
        .Q(weight_out_last));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_i_2
       (.I0(\FSM_sequential_state_reg[0] [3]),
        .I1(\FSM_sequential_state_reg[0] [2]),
        .O(m_axis_tvalid_i_2_n_0));
  FDCE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(arithmetic_n_9),
        .Q(weight_out_valid));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[0]_i_1 
       (.I0(m_axis_tdata[0]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[10]_i_1 
       (.I0(m_axis_tdata[10]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[11]_i_1 
       (.I0(m_axis_tdata[11]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[12]_i_1 
       (.I0(m_axis_tdata[12]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[13]_i_1 
       (.I0(m_axis_tdata[13]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[14]_i_1 
       (.I0(m_axis_tdata[14]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[15]_i_1 
       (.I0(m_axis_tdata[15]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[16]_i_1 
       (.I0(m_axis_tdata[16]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[17]_i_1 
       (.I0(m_axis_tdata[17]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[18]_i_1 
       (.I0(m_axis_tdata[18]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[19]_i_1 
       (.I0(m_axis_tdata[19]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[1]_i_1 
       (.I0(m_axis_tdata[1]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[20]_i_1 
       (.I0(m_axis_tdata[20]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[21]_i_1 
       (.I0(m_axis_tdata[21]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[22]_i_1 
       (.I0(m_axis_tdata[22]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[23]_i_1 
       (.I0(m_axis_tdata[23]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[24]_i_1 
       (.I0(m_axis_tdata[24]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[25]_i_1 
       (.I0(m_axis_tdata[25]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[26]_i_1 
       (.I0(m_axis_tdata[26]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[27]_i_1 
       (.I0(m_axis_tdata[27]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[28]_i_1 
       (.I0(m_axis_tdata[28]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[29]_i_1 
       (.I0(m_axis_tdata[29]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[2]_i_1 
       (.I0(m_axis_tdata[2]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[30]_i_1 
       (.I0(m_axis_tdata[30]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[31]_i_1 
       (.I0(m_axis_tdata[31]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[32]_i_1 
       (.I0(m_axis_tdata[32]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[33]_i_1 
       (.I0(m_axis_tdata[33]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[34]_i_1 
       (.I0(m_axis_tdata[34]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[35]_i_1 
       (.I0(m_axis_tdata[35]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[36]_i_1 
       (.I0(m_axis_tdata[36]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[37]_i_1 
       (.I0(m_axis_tdata[37]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[38]_i_1 
       (.I0(m_axis_tdata[38]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[39]_i_1 
       (.I0(m_axis_tdata[39]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[3]_i_1 
       (.I0(m_axis_tdata[3]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[40]_i_1 
       (.I0(m_axis_tdata[40]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[41]_i_1 
       (.I0(m_axis_tdata[41]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[42]_i_1 
       (.I0(m_axis_tdata[42]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[43]_i_1 
       (.I0(m_axis_tdata[43]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[44]_i_1 
       (.I0(m_axis_tdata[44]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[45]_i_1 
       (.I0(m_axis_tdata[45]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[46]_i_1 
       (.I0(m_axis_tdata[46]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[46]));
  LUT6 #(
    .INIT(64'h0000CA0000000000)) 
    \s_axis_data_tdata[47]_i_1 
       (.I0(s_axis_data_tvalid_reg),
        .I1(weight_out_valid),
        .I2(\FSM_sequential_state_reg[0] [3]),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(\FSM_sequential_state_reg[0] [2]),
        .I5(\FSM_sequential_state_reg[0] [0]),
        .O(m_axis_tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[47]_i_2 
       (.I0(m_axis_tdata[47]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[4]_i_1 
       (.I0(m_axis_tdata[4]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[5]_i_1 
       (.I0(m_axis_tdata[5]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[6]_i_1 
       (.I0(m_axis_tdata[6]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[7]_i_1 
       (.I0(m_axis_tdata[7]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[8]_i_1 
       (.I0(m_axis_tdata[8]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axis_data_tdata[9]_i_1 
       (.I0(m_axis_tdata[9]),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFAAAE0000AAA2)) 
    s_axis_data_tlast_i_1
       (.I0(s_axis_data_tlast_i_2_n_0),
        .I1(\FSM_sequential_state_reg[0] [1]),
        .I2(\FSM_sequential_state_reg[0] [3]),
        .I3(s_axis_data_tvalid_reg),
        .I4(s_axis_data_tvalid_i_3_n_0),
        .I5(s_axis_data_tlast),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    s_axis_data_tlast_i_2
       (.I0(last_latched_i_2_n_0),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .I2(weight_out_last),
        .I3(\FSM_sequential_state_reg[0] [2]),
        .I4(\FSM_sequential_state_reg[0] [1]),
        .O(s_axis_data_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAAE0000AAA2)) 
    s_axis_data_tvalid_i_1
       (.I0(s_axis_data_tvalid_i_2_n_0),
        .I1(\FSM_sequential_state_reg[0] [1]),
        .I2(\FSM_sequential_state_reg[0] [3]),
        .I3(s_axis_data_tvalid_reg),
        .I4(s_axis_data_tvalid_i_3_n_0),
        .I5(s_axis_data_tvalid_reg_0),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    s_axis_data_tvalid_i_2
       (.I0(weight_out_valid),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .I2(\FSM_sequential_state_reg[0] [1]),
        .I3(\FSM_sequential_state_reg[0] [2]),
        .O(s_axis_data_tvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7F704C4F7F7F7F7)) 
    s_axis_data_tvalid_i_3
       (.I0(s_axis_data_tlast_reg),
        .I1(\FSM_sequential_state_reg[0] [3]),
        .I2(\FSM_sequential_state_reg[0] [1]),
        .I3(weight_out_valid),
        .I4(\FSM_sequential_state_reg[0] [2]),
        .I5(\FSM_sequential_state_reg[0] [0]),
        .O(s_axis_data_tvalid_i_3_n_0));
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
