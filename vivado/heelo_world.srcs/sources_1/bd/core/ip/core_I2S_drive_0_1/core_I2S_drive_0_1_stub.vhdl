-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 17:02:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_I2S_drive_0_1/core_I2S_drive_0_1_stub.vhdl
-- Design      : core_I2S_drive_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_I2S_drive_0_1 is
  Port ( 
    rst : in STD_LOGIC;
    SCK : out STD_LOGIC;
    WS : out STD_LOGIC;
    locked : in STD_LOGIC;
    SD : in STD_LOGIC;
    SD1 : in STD_LOGIC;
    data1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data4 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sample_valid : out STD_LOGIC;
    MMCM_CLOCK : in STD_LOGIC
  );

end core_I2S_drive_0_1;

architecture stub of core_I2S_drive_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,SCK,WS,locked,SD,SD1,data1[23:0],data2[23:0],data3[23:0],data4[23:0],sample_valid,MMCM_CLOCK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "I2S_drive,Vivado 2018.3";
begin
end;
