// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 21 16:28:26 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_IFFT_Mux_0_0/core_FFT_IFFT_Mux_0_0_sim_netlist.v
// Design      : core_FFT_IFFT_Mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_FFT_IFFT_Mux_0_0,FFT_IFFT_Mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFT_IFFT_Mux,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_FFT_IFFT_Mux_0_0
   (select_ifft,
    forward_config_tdata,
    forward_config_tvalid,
    forward_config_tready,
    forward_data_tdata,
    forward_data_tvalid,
    forward_data_tlast,
    forward_data_tready,
    forward_result_tdata,
    forward_result_tvalid,
    forward_result_tlast,
    forward_result_tready,
    inverse_config_tdata,
    inverse_config_tvalid,
    inverse_config_tready,
    inverse_data_tdata,
    inverse_data_tvalid,
    inverse_data_tlast,
    inverse_data_tready,
    inverse_result_tdata,
    inverse_result_tvalid,
    inverse_result_tlast,
    inverse_result_tready,
    core_config_tdata,
    core_config_tvalid,
    core_config_tready,
    core_data_tdata,
    core_data_tvalid,
    core_data_tlast,
    core_data_tready,
    core_result_tdata,
    core_result_tvalid,
    core_result_tlast,
    core_result_tready);
  input select_ifft;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TDATA" *) input [7:0]forward_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TVALID" *) input forward_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output forward_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TDATA" *) input [47:0]forward_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TVALID" *) input forward_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TLAST" *) input forward_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output forward_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TDATA" *) output [47:0]forward_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TVALID" *) output forward_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TLAST" *) output forward_result_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input forward_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TDATA" *) input [7:0]inverse_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TVALID" *) input inverse_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output inverse_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TDATA" *) input [47:0]inverse_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TVALID" *) input inverse_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TLAST" *) input inverse_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output inverse_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TDATA" *) output [47:0]inverse_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TVALID" *) output inverse_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TLAST" *) output inverse_result_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input inverse_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TDATA" *) output [7:0]core_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TVALID" *) output core_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input core_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TDATA" *) output [47:0]core_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TVALID" *) output core_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TLAST" *) output core_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input core_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TDATA" *) input [47:0]core_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TVALID" *) input core_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TLAST" *) input core_result_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output core_result_tready;

  wire [7:0]core_config_tdata;
  wire core_config_tready;
  wire core_config_tvalid;
  wire [47:0]core_data_tdata;
  wire core_data_tlast;
  wire core_data_tready;
  wire core_data_tvalid;
  wire [47:0]core_result_tdata;
  wire core_result_tlast;
  wire core_result_tready;
  wire core_result_tvalid;
  wire [7:0]forward_config_tdata;
  wire forward_config_tready;
  wire forward_config_tvalid;
  wire [47:0]forward_data_tdata;
  wire forward_data_tlast;
  wire forward_data_tready;
  wire forward_data_tvalid;
  wire forward_result_tready;
  wire forward_result_tvalid;
  wire [7:0]inverse_config_tdata;
  wire inverse_config_tready;
  wire inverse_config_tvalid;
  wire [47:0]inverse_data_tdata;
  wire inverse_data_tlast;
  wire inverse_data_tready;
  wire inverse_data_tvalid;
  wire inverse_result_tready;
  wire inverse_result_tvalid;
  wire select_ifft;

  assign forward_result_tdata[47:0] = core_result_tdata;
  assign forward_result_tlast = core_result_tlast;
  assign inverse_result_tdata[47:0] = core_result_tdata;
  assign inverse_result_tlast = core_result_tlast;
  LUT3 #(
    .INIT(8'hB8)) 
    core_config_tvalid_INST_0
       (.I0(inverse_config_tvalid),
        .I1(select_ifft),
        .I2(forward_config_tvalid),
        .O(core_config_tvalid));
  LUT3 #(
    .INIT(8'hB8)) 
    core_data_tlast_INST_0
       (.I0(inverse_data_tlast),
        .I1(select_ifft),
        .I2(forward_data_tlast),
        .O(core_data_tlast));
  LUT3 #(
    .INIT(8'hB8)) 
    core_data_tvalid_INST_0
       (.I0(inverse_data_tvalid),
        .I1(select_ifft),
        .I2(forward_data_tvalid),
        .O(core_data_tvalid));
  LUT3 #(
    .INIT(8'hB8)) 
    core_result_tready_INST_0
       (.I0(inverse_result_tready),
        .I1(select_ifft),
        .I2(forward_result_tready),
        .O(core_result_tready));
  LUT2 #(
    .INIT(4'h2)) 
    forward_config_tready_INST_0
       (.I0(core_config_tready),
        .I1(select_ifft),
        .O(forward_config_tready));
  LUT2 #(
    .INIT(4'h2)) 
    forward_data_tready_INST_0
       (.I0(core_data_tready),
        .I1(select_ifft),
        .O(forward_data_tready));
  LUT2 #(
    .INIT(4'h2)) 
    forward_result_tvalid_INST_0
       (.I0(core_result_tvalid),
        .I1(select_ifft),
        .O(forward_result_tvalid));
  core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux inst
       (.core_config_tdata(core_config_tdata),
        .core_data_tdata(core_data_tdata),
        .forward_config_tdata(forward_config_tdata),
        .forward_data_tdata(forward_data_tdata),
        .inverse_config_tdata(inverse_config_tdata),
        .inverse_data_tdata(inverse_data_tdata),
        .select_ifft(select_ifft));
  LUT2 #(
    .INIT(4'h8)) 
    inverse_config_tready_INST_0
       (.I0(select_ifft),
        .I1(core_config_tready),
        .O(inverse_config_tready));
  LUT2 #(
    .INIT(4'h8)) 
    inverse_data_tready_INST_0
       (.I0(select_ifft),
        .I1(core_data_tready),
        .O(inverse_data_tready));
  LUT2 #(
    .INIT(4'h8)) 
    inverse_result_tvalid_INST_0
       (.I0(select_ifft),
        .I1(core_result_tvalid),
        .O(inverse_result_tvalid));
endmodule

(* ORIG_REF_NAME = "FFT_IFFT_Mux" *) 
module core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux
   (core_config_tdata,
    core_data_tdata,
    inverse_config_tdata,
    forward_config_tdata,
    select_ifft,
    inverse_data_tdata,
    forward_data_tdata);
  output [7:0]core_config_tdata;
  output [47:0]core_data_tdata;
  input [7:0]inverse_config_tdata;
  input [7:0]forward_config_tdata;
  input select_ifft;
  input [47:0]inverse_data_tdata;
  input [47:0]forward_data_tdata;

  wire [7:0]core_config_tdata;
  wire [47:0]core_data_tdata;
  wire [7:0]forward_config_tdata;
  wire [47:0]forward_data_tdata;
  wire [7:0]inverse_config_tdata;
  wire [47:0]inverse_data_tdata;
  wire select_ifft;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[0]_INST_0 
       (.I0(inverse_config_tdata[0]),
        .I1(forward_config_tdata[0]),
        .I2(select_ifft),
        .O(core_config_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[1]_INST_0 
       (.I0(inverse_config_tdata[1]),
        .I1(forward_config_tdata[1]),
        .I2(select_ifft),
        .O(core_config_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[2]_INST_0 
       (.I0(inverse_config_tdata[2]),
        .I1(forward_config_tdata[2]),
        .I2(select_ifft),
        .O(core_config_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[3]_INST_0 
       (.I0(inverse_config_tdata[3]),
        .I1(forward_config_tdata[3]),
        .I2(select_ifft),
        .O(core_config_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[4]_INST_0 
       (.I0(inverse_config_tdata[4]),
        .I1(forward_config_tdata[4]),
        .I2(select_ifft),
        .O(core_config_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[5]_INST_0 
       (.I0(inverse_config_tdata[5]),
        .I1(forward_config_tdata[5]),
        .I2(select_ifft),
        .O(core_config_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[6]_INST_0 
       (.I0(inverse_config_tdata[6]),
        .I1(forward_config_tdata[6]),
        .I2(select_ifft),
        .O(core_config_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_config_tdata[7]_INST_0 
       (.I0(inverse_config_tdata[7]),
        .I1(forward_config_tdata[7]),
        .I2(select_ifft),
        .O(core_config_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[0]_INST_0 
       (.I0(inverse_data_tdata[0]),
        .I1(forward_data_tdata[0]),
        .I2(select_ifft),
        .O(core_data_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[10]_INST_0 
       (.I0(inverse_data_tdata[10]),
        .I1(forward_data_tdata[10]),
        .I2(select_ifft),
        .O(core_data_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[11]_INST_0 
       (.I0(inverse_data_tdata[11]),
        .I1(forward_data_tdata[11]),
        .I2(select_ifft),
        .O(core_data_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[12]_INST_0 
       (.I0(inverse_data_tdata[12]),
        .I1(forward_data_tdata[12]),
        .I2(select_ifft),
        .O(core_data_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[13]_INST_0 
       (.I0(inverse_data_tdata[13]),
        .I1(forward_data_tdata[13]),
        .I2(select_ifft),
        .O(core_data_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[14]_INST_0 
       (.I0(inverse_data_tdata[14]),
        .I1(forward_data_tdata[14]),
        .I2(select_ifft),
        .O(core_data_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[15]_INST_0 
       (.I0(inverse_data_tdata[15]),
        .I1(forward_data_tdata[15]),
        .I2(select_ifft),
        .O(core_data_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[16]_INST_0 
       (.I0(inverse_data_tdata[16]),
        .I1(forward_data_tdata[16]),
        .I2(select_ifft),
        .O(core_data_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[17]_INST_0 
       (.I0(inverse_data_tdata[17]),
        .I1(forward_data_tdata[17]),
        .I2(select_ifft),
        .O(core_data_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[18]_INST_0 
       (.I0(inverse_data_tdata[18]),
        .I1(forward_data_tdata[18]),
        .I2(select_ifft),
        .O(core_data_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[19]_INST_0 
       (.I0(inverse_data_tdata[19]),
        .I1(forward_data_tdata[19]),
        .I2(select_ifft),
        .O(core_data_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[1]_INST_0 
       (.I0(inverse_data_tdata[1]),
        .I1(forward_data_tdata[1]),
        .I2(select_ifft),
        .O(core_data_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[20]_INST_0 
       (.I0(inverse_data_tdata[20]),
        .I1(forward_data_tdata[20]),
        .I2(select_ifft),
        .O(core_data_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[21]_INST_0 
       (.I0(inverse_data_tdata[21]),
        .I1(forward_data_tdata[21]),
        .I2(select_ifft),
        .O(core_data_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[22]_INST_0 
       (.I0(inverse_data_tdata[22]),
        .I1(forward_data_tdata[22]),
        .I2(select_ifft),
        .O(core_data_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[23]_INST_0 
       (.I0(inverse_data_tdata[23]),
        .I1(forward_data_tdata[23]),
        .I2(select_ifft),
        .O(core_data_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[24]_INST_0 
       (.I0(inverse_data_tdata[24]),
        .I1(forward_data_tdata[24]),
        .I2(select_ifft),
        .O(core_data_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[25]_INST_0 
       (.I0(inverse_data_tdata[25]),
        .I1(forward_data_tdata[25]),
        .I2(select_ifft),
        .O(core_data_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[26]_INST_0 
       (.I0(inverse_data_tdata[26]),
        .I1(forward_data_tdata[26]),
        .I2(select_ifft),
        .O(core_data_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[27]_INST_0 
       (.I0(inverse_data_tdata[27]),
        .I1(forward_data_tdata[27]),
        .I2(select_ifft),
        .O(core_data_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[28]_INST_0 
       (.I0(inverse_data_tdata[28]),
        .I1(forward_data_tdata[28]),
        .I2(select_ifft),
        .O(core_data_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[29]_INST_0 
       (.I0(inverse_data_tdata[29]),
        .I1(forward_data_tdata[29]),
        .I2(select_ifft),
        .O(core_data_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[2]_INST_0 
       (.I0(inverse_data_tdata[2]),
        .I1(forward_data_tdata[2]),
        .I2(select_ifft),
        .O(core_data_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[30]_INST_0 
       (.I0(inverse_data_tdata[30]),
        .I1(forward_data_tdata[30]),
        .I2(select_ifft),
        .O(core_data_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[31]_INST_0 
       (.I0(inverse_data_tdata[31]),
        .I1(forward_data_tdata[31]),
        .I2(select_ifft),
        .O(core_data_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[32]_INST_0 
       (.I0(inverse_data_tdata[32]),
        .I1(forward_data_tdata[32]),
        .I2(select_ifft),
        .O(core_data_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[33]_INST_0 
       (.I0(inverse_data_tdata[33]),
        .I1(forward_data_tdata[33]),
        .I2(select_ifft),
        .O(core_data_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[34]_INST_0 
       (.I0(inverse_data_tdata[34]),
        .I1(forward_data_tdata[34]),
        .I2(select_ifft),
        .O(core_data_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[35]_INST_0 
       (.I0(inverse_data_tdata[35]),
        .I1(forward_data_tdata[35]),
        .I2(select_ifft),
        .O(core_data_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[36]_INST_0 
       (.I0(inverse_data_tdata[36]),
        .I1(forward_data_tdata[36]),
        .I2(select_ifft),
        .O(core_data_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[37]_INST_0 
       (.I0(inverse_data_tdata[37]),
        .I1(forward_data_tdata[37]),
        .I2(select_ifft),
        .O(core_data_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[38]_INST_0 
       (.I0(inverse_data_tdata[38]),
        .I1(forward_data_tdata[38]),
        .I2(select_ifft),
        .O(core_data_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[39]_INST_0 
       (.I0(inverse_data_tdata[39]),
        .I1(forward_data_tdata[39]),
        .I2(select_ifft),
        .O(core_data_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[3]_INST_0 
       (.I0(inverse_data_tdata[3]),
        .I1(forward_data_tdata[3]),
        .I2(select_ifft),
        .O(core_data_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[40]_INST_0 
       (.I0(inverse_data_tdata[40]),
        .I1(forward_data_tdata[40]),
        .I2(select_ifft),
        .O(core_data_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[41]_INST_0 
       (.I0(inverse_data_tdata[41]),
        .I1(forward_data_tdata[41]),
        .I2(select_ifft),
        .O(core_data_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[42]_INST_0 
       (.I0(inverse_data_tdata[42]),
        .I1(forward_data_tdata[42]),
        .I2(select_ifft),
        .O(core_data_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[43]_INST_0 
       (.I0(inverse_data_tdata[43]),
        .I1(forward_data_tdata[43]),
        .I2(select_ifft),
        .O(core_data_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[44]_INST_0 
       (.I0(inverse_data_tdata[44]),
        .I1(forward_data_tdata[44]),
        .I2(select_ifft),
        .O(core_data_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[45]_INST_0 
       (.I0(inverse_data_tdata[45]),
        .I1(forward_data_tdata[45]),
        .I2(select_ifft),
        .O(core_data_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[46]_INST_0 
       (.I0(inverse_data_tdata[46]),
        .I1(forward_data_tdata[46]),
        .I2(select_ifft),
        .O(core_data_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[47]_INST_0 
       (.I0(inverse_data_tdata[47]),
        .I1(forward_data_tdata[47]),
        .I2(select_ifft),
        .O(core_data_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[4]_INST_0 
       (.I0(inverse_data_tdata[4]),
        .I1(forward_data_tdata[4]),
        .I2(select_ifft),
        .O(core_data_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[5]_INST_0 
       (.I0(inverse_data_tdata[5]),
        .I1(forward_data_tdata[5]),
        .I2(select_ifft),
        .O(core_data_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[6]_INST_0 
       (.I0(inverse_data_tdata[6]),
        .I1(forward_data_tdata[6]),
        .I2(select_ifft),
        .O(core_data_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[7]_INST_0 
       (.I0(inverse_data_tdata[7]),
        .I1(forward_data_tdata[7]),
        .I2(select_ifft),
        .O(core_data_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[8]_INST_0 
       (.I0(inverse_data_tdata[8]),
        .I1(forward_data_tdata[8]),
        .I2(select_ifft),
        .O(core_data_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \core_data_tdata[9]_INST_0 
       (.I0(inverse_data_tdata[9]),
        .I1(forward_data_tdata[9]),
        .I2(select_ifft),
        .O(core_data_tdata[9]));
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
