-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 17:20:19 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Write_Ctrl_0_0/core_Write_Ctrl_0_0_stub.vhdl
-- Design      : core_Write_Ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_Write_Ctrl_0_0 is
  Port ( 
    ena : out STD_LOGIC;
    wna : out STD_LOGIC;
    read_toggle : out STD_LOGIC;
    Write_addra : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data : out STD_LOGIC_VECTOR ( 95 downto 0 );
    Ram_en : out STD_LOGIC;
    Ram_ready : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end core_Write_Ctrl_0_0;

architecture stub of core_Write_Ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ena,wna,read_toggle,Write_addra[11:0],data[95:0],Ram_en,Ram_ready,fifo_full,data1[23:0],data2[23:0],data3[23:0],data4[23:0],clk,rst";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Write_Ctrl,Vivado 2018.3";
begin
end;
