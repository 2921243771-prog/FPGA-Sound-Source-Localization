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


// IP VLNV: xilinx.com:module_ref:fft_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "fft_ctrl,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "core_fft_ctrl_0_0,fft_ctrl,{}" *)
(* CORE_GENERATION_INFO = "core_fft_ctrl_0_0,fft_ctrl,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fft_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,RAM_READ_LATENCY=2,IFFT_MODE=0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module core_fft_ctrl_0_0 (
  clk,
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
  batch_done
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_config:s_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire Ram_ready;
output wire [12 : 0] addrb;
output wire enb;
input wire [23 : 0] data;
input wire [47 : 0] ifft_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TDATA" *)
output wire [7 : 0] s_axis_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TVALID" *)
output wire s_axis_config_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_config TREADY" *)
input wire s_axis_config_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *)
output wire [47 : 0] tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *)
output wire s_axis_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TLAST" *)
output wire s_axis_data_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *)
input wire s_axis_data_tready;
output wire fft_rx_start;
output wire [1 : 0] channel_sel;
input wire fft_frame_done;
output wire busy;
output wire batch_done;

  fft_ctrl #(
    .RAM_READ_LATENCY(2),
    .IFFT_MODE(0)
  ) inst (
    .clk(clk),
    .rst(rst),
    .Ram_ready(Ram_ready),
    .addrb(addrb),
    .enb(enb),
    .data(data),
    .ifft_data(ifft_data),
    .s_axis_config_tdata(s_axis_config_tdata),
    .s_axis_config_tvalid(s_axis_config_tvalid),
    .s_axis_config_tready(s_axis_config_tready),
    .tdata(tdata),
    .s_axis_data_tvalid(s_axis_data_tvalid),
    .s_axis_data_tlast(s_axis_data_tlast),
    .s_axis_data_tready(s_axis_data_tready),
    .fft_rx_start(fft_rx_start),
    .channel_sel(channel_sel),
    .fft_frame_done(fft_frame_done),
    .busy(busy),
    .batch_done(batch_done)
  );
endmodule
