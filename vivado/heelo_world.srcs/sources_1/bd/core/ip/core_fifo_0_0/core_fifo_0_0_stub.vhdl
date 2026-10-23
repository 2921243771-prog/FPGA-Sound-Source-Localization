-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:55 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fifo_0_0/core_fifo_0_0_stub.vhdl
-- Design      : core_fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_fifo_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    sample_valid : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 95 downto 0 );
    Ram_en : in STD_LOGIC;
    read_toggle : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 95 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    mic1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic4 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    read_valid : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    fifo_reset : out STD_LOGIC
  );

end core_fifo_0_0;

architecture stub of core_fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,data1[23:0],data2[23:0],data3[23:0],data4[23:0],sample_valid,fifo_full,fifo_empty,fifo_dout[95:0],Ram_en,read_toggle,fifo_din[95:0],fifo_wr_en,fifo_rd_en,mic1[23:0],mic2[23:0],mic3[23:0],mic4[23:0],read_valid,rd_clk,fifo_reset";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fifo,Vivado 2018.3";
begin
end;
