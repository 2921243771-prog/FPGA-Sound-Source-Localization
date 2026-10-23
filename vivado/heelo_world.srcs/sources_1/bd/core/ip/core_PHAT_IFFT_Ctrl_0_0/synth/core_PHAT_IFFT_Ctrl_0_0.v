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


// IP VLNV: xilinx.com:module_ref:PHAT_IFFT_Ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "PHAT_IFFT_Ctrl,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "core_PHAT_IFFT_Ctrl_0_0,PHAT_IFFT_Ctrl,{}" *)
(* CORE_GENERATION_INFO = "core_PHAT_IFFT_Ctrl_0_0,PHAT_IFFT_Ctrl,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=PHAT_IFFT_Ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,RAM_READ_LATENCY=2,SAMPLE_RATE=44100,BAND_LOW_HZ=300,BAND_HIGH_HZ=6000,MAX_LAG_SIDE=9,MAX_LAG_DIAG=13,MIN_MAG=0000000000000000000000000000000000000000000000001,MIN_PEAK=0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module core_PHAT_IFFT_Ctrl_0_0 (
  clk,
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
  frame_error
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data:s_axis_config:s_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire start;
output wire busy;
output wire done;
output wire [13 : 0] spectrum_addrb;
output wire spectrum_enb;
input wire [47 : 0] spectrum_doutb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TDATA" *)
output wire [7 : 0] s_axis_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TVALID" *)
output wire s_axis_config_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TREADY" *)
input wire s_axis_config_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *)
output wire [47 : 0] s_axis_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *)
output wire s_axis_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TLAST" *)
output wire s_axis_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *)
input wire s_axis_data_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *)
input wire [47 : 0] m_axis_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *)
input wire m_axis_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *)
input wire m_axis_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *)
output wire m_axis_data_tready;
output wire [2 : 0] pair_index;
output wire pair_done;
output wire [15 : 0] pair_lag;
output wire [23 : 0] pair_peak;
output wire [15 : 0] lag12;
output wire [15 : 0] lag13;
output wire [15 : 0] lag14;
output wire [15 : 0] lag23;
output wire [15 : 0] lag24;
output wire [15 : 0] lag34;
output wire [5 : 0] lag_valid;
output wire frame_error;

  PHAT_IFFT_Ctrl #(
    .RAM_READ_LATENCY(2),
    .SAMPLE_RATE(44100),
    .BAND_LOW_HZ(300),
    .BAND_HIGH_HZ(6000),
    .MAX_LAG_SIDE(9),
    .MAX_LAG_DIAG(13),
    .MIN_MAG(49'B0000000000000000000000000000000000000000000000001),
    .MIN_PEAK("0")
  ) inst (
    .clk(clk),
    .rst(rst),
    .start(start),
    .busy(busy),
    .done(done),
    .spectrum_addrb(spectrum_addrb),
    .spectrum_enb(spectrum_enb),
    .spectrum_doutb(spectrum_doutb),
    .s_axis_config_tdata(s_axis_config_tdata),
    .s_axis_config_tvalid(s_axis_config_tvalid),
    .s_axis_config_tready(s_axis_config_tready),
    .s_axis_data_tdata(s_axis_data_tdata),
    .s_axis_data_tvalid(s_axis_data_tvalid),
    .s_axis_data_tlast(s_axis_data_tlast),
    .s_axis_data_tready(s_axis_data_tready),
    .m_axis_data_tdata(m_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .m_axis_data_tlast(m_axis_data_tlast),
    .m_axis_data_tready(m_axis_data_tready),
    .pair_index(pair_index),
    .pair_done(pair_done),
    .pair_lag(pair_lag),
    .pair_peak(pair_peak),
    .lag12(lag12),
    .lag13(lag13),
    .lag14(lag14),
    .lag23(lag23),
    .lag24(lag24),
    .lag34(lag34),
    .lag_valid(lag_valid),
    .frame_error(frame_error)
  );
endmodule
