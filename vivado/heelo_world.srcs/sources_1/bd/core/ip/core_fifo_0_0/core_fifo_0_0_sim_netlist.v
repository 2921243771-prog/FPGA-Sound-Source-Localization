// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 20 21:23:55 2026
// Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fifo_0_0/core_fifo_0_0_sim_netlist.v
// Design      : core_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "core_fifo_0_0,fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module core_fifo_0_0
   (rst,
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
    fifo_reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [23:0]data1;
  input [23:0]data2;
  input [23:0]data3;
  input [23:0]data4;
  input sample_valid;
  input fifo_full;
  input fifo_empty;
  input [95:0]fifo_dout;
  input Ram_en;
  input read_toggle;
  output [95:0]fifo_din;
  output fifo_wr_en;
  output fifo_rd_en;
  output [23:0]mic1;
  output [23:0]mic2;
  output [23:0]mic3;
  output [23:0]mic4;
  output read_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_reset;

  wire Ram_en;
  wire [23:0]data1;
  wire [23:0]data2;
  wire [23:0]data3;
  wire [23:0]data4;
  wire [95:0]fifo_dout;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_rd_en;
  wire fifo_reset;
  wire fifo_wr_en;
  wire rd_clk;
  wire read_toggle;
  wire read_valid;
  wire rst;
  wire sample_valid;

  assign fifo_din[95:72] = data4;
  assign fifo_din[71:48] = data3;
  assign fifo_din[47:24] = data2;
  assign fifo_din[23:0] = data1;
  assign mic1[23:0] = fifo_dout[23:0];
  assign mic2[23:0] = fifo_dout[47:24];
  assign mic3[23:0] = fifo_dout[71:48];
  assign mic4[23:0] = fifo_dout[95:72];
  core_fifo_0_0_fifo inst
       (.Ram_en(Ram_en),
        .fifo_empty(fifo_empty),
        .fifo_full(fifo_full),
        .fifo_rd_en(fifo_rd_en),
        .fifo_reset(fifo_reset),
        .fifo_wr_en(fifo_wr_en),
        .rd_clk(rd_clk),
        .read_toggle(read_toggle),
        .rst(rst),
        .sample_valid(sample_valid));
  LUT2 #(
    .INIT(4'h2)) 
    read_valid_INST_0
       (.I0(rst),
        .I1(fifo_empty),
        .O(read_valid));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module core_fifo_0_0_fifo
   (fifo_reset,
    fifo_wr_en,
    fifo_rd_en,
    read_toggle,
    rd_clk,
    sample_valid,
    fifo_full,
    Ram_en,
    rst,
    fifo_empty);
  output fifo_reset;
  output fifo_wr_en;
  output fifo_rd_en;
  input read_toggle;
  input rd_clk;
  input sample_valid;
  input fifo_full;
  input Ram_en;
  input rst;
  input fifo_empty;

  wire Ram_en;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_rd_en;
  wire fifo_reset;
  wire fifo_wr_en;
  wire rd_clk;
  wire read_toggle;
  wire read_toggle_d;
  wire rst;
  wire sample_valid;

  LUT4 #(
    .INIT(16'h0440)) 
    fifo_rd_en__0
       (.I0(fifo_empty),
        .I1(rst),
        .I2(read_toggle),
        .I3(read_toggle_d),
        .O(fifo_rd_en));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_reset_INST_0
       (.I0(rst),
        .O(fifo_reset));
  LUT4 #(
    .INIT(16'h2000)) 
    fifo_wr_en__0
       (.I0(sample_valid),
        .I1(fifo_full),
        .I2(Ram_en),
        .I3(rst),
        .O(fifo_wr_en));
  FDCE read_toggle_d_reg
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(fifo_reset),
        .D(read_toggle),
        .Q(read_toggle_d));
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
