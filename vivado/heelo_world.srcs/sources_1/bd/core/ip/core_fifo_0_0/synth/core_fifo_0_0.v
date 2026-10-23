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


// IP VLNV: xilinx.com:module_ref:fifo:1.0
// IP Revision: 1

(* X_CORE_INFO = "fifo,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "core_fifo_0_0,fifo,{}" *)
(* CORE_GENERATION_INFO = "core_fifo_0_0,fifo,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fifo,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module core_fifo_0_0 (
  rst,
  data1,
  data2,
  data3,
  data4,
  sample_valid,
  fifo_full,
  fifo_empty,
  fifo_dout,
  Ram_en,
  read_toggle,
  fifo_din,
  fifo_wr_en,
  fifo_rd_en,
  mic1,
  mic2,
  mic3,
  mic4,
  read_valid,
  rd_clk,
  fifo_reset
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [23 : 0] data1;
input wire [23 : 0] data2;
input wire [23 : 0] data3;
input wire [23 : 0] data4;
input wire sample_valid;
input wire fifo_full;
input wire fifo_empty;
input wire [95 : 0] fifo_dout;
input wire Ram_en;
input wire read_toggle;
output wire [95 : 0] fifo_din;
output wire fifo_wr_en;
output wire fifo_rd_en;
output wire [23 : 0] mic1;
output wire [23 : 0] mic2;
output wire [23 : 0] mic3;
output wire [23 : 0] mic4;
output wire read_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *)
input wire rd_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_reset RST" *)
output wire fifo_reset;

  fifo inst (
    .rst(rst),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .data4(data4),
    .sample_valid(sample_valid),
    .fifo_full(fifo_full),
    .fifo_empty(fifo_empty),
    .fifo_dout(fifo_dout),
    .Ram_en(Ram_en),
    .read_toggle(read_toggle),
    .fifo_din(fifo_din),
    .fifo_wr_en(fifo_wr_en),
    .fifo_rd_en(fifo_rd_en),
    .mic1(mic1),
    .mic2(mic2),
    .mic3(mic3),
    .mic4(mic4),
    .read_valid(read_valid),
    .rd_clk(rd_clk),
    .fifo_reset(fifo_reset)
  );
endmodule
