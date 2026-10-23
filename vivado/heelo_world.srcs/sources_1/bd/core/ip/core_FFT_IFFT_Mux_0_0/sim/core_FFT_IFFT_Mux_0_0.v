// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:FFT_IFFT_Mux:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module core_FFT_IFFT_Mux_0_0 (
  select_ifft,
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
  core_result_tready
);

input wire select_ifft;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TDATA" *)
input wire [7 : 0] forward_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TVALID" *)
input wire forward_config_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_config TREADY" *)
output wire forward_config_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TDATA" *)
input wire [47 : 0] forward_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TVALID" *)
input wire forward_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TLAST" *)
input wire forward_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_data TREADY" *)
output wire forward_data_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TDATA" *)
output wire [47 : 0] forward_result_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TVALID" *)
output wire forward_result_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TLAST" *)
output wire forward_result_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME forward_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 forward_result TREADY" *)
input wire forward_result_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TDATA" *)
input wire [7 : 0] inverse_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TVALID" *)
input wire inverse_config_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_config TREADY" *)
output wire inverse_config_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TDATA" *)
input wire [47 : 0] inverse_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TVALID" *)
input wire inverse_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TLAST" *)
input wire inverse_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_data TREADY" *)
output wire inverse_data_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TDATA" *)
output wire [47 : 0] inverse_result_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TVALID" *)
output wire inverse_result_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TLAST" *)
output wire inverse_result_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inverse_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inverse_result TREADY" *)
input wire inverse_result_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TDATA" *)
output wire [7 : 0] core_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TVALID" *)
output wire core_config_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_config TREADY" *)
input wire core_config_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TDATA" *)
output wire [47 : 0] core_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TVALID" *)
output wire core_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TLAST" *)
output wire core_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_data TREADY" *)
input wire core_data_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TDATA" *)
input wire [47 : 0] core_result_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TVALID" *)
input wire core_result_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TLAST" *)
input wire core_result_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 core_result TREADY" *)
output wire core_result_tready;

  FFT_IFFT_Mux inst (
    .select_ifft(select_ifft),
    .forward_config_tdata(forward_config_tdata),
    .forward_config_tvalid(forward_config_tvalid),
    .forward_config_tready(forward_config_tready),
    .forward_data_tdata(forward_data_tdata),
    .forward_data_tvalid(forward_data_tvalid),
    .forward_data_tlast(forward_data_tlast),
    .forward_data_tready(forward_data_tready),
    .forward_result_tdata(forward_result_tdata),
    .forward_result_tvalid(forward_result_tvalid),
    .forward_result_tlast(forward_result_tlast),
    .forward_result_tready(forward_result_tready),
    .inverse_config_tdata(inverse_config_tdata),
    .inverse_config_tvalid(inverse_config_tvalid),
    .inverse_config_tready(inverse_config_tready),
    .inverse_data_tdata(inverse_data_tdata),
    .inverse_data_tvalid(inverse_data_tvalid),
    .inverse_data_tlast(inverse_data_tlast),
    .inverse_data_tready(inverse_data_tready),
    .inverse_result_tdata(inverse_result_tdata),
    .inverse_result_tvalid(inverse_result_tvalid),
    .inverse_result_tlast(inverse_result_tlast),
    .inverse_result_tready(inverse_result_tready),
    .core_config_tdata(core_config_tdata),
    .core_config_tvalid(core_config_tvalid),
    .core_config_tready(core_config_tready),
    .core_data_tdata(core_data_tdata),
    .core_data_tvalid(core_data_tvalid),
    .core_data_tlast(core_data_tlast),
    .core_data_tready(core_data_tready),
    .core_result_tdata(core_result_tdata),
    .core_result_tvalid(core_result_tvalid),
    .core_result_tlast(core_result_tlast),
    .core_result_tready(core_result_tready)
  );
endmodule
