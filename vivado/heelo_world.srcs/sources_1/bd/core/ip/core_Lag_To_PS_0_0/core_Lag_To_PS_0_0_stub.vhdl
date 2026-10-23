-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 18:52:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Lag_To_PS_0_0/core_Lag_To_PS_0_0_stub.vhdl
-- Design      : core_Lag_To_PS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_Lag_To_PS_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    done : in STD_LOGIC;
    lag12 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag13 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag24 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag34 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lag_valid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_error : in STD_LOGIC;
    gpio_word0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_word1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_word2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end core_Lag_To_PS_0_0;

architecture stub of core_Lag_To_PS_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,done,lag12[15:0],lag13[15:0],lag14[15:0],lag23[15:0],lag24[15:0],lag34[15:0],lag_valid[5:0],frame_error,gpio_word0[31:0],gpio_word1[31:0],gpio_word2[31:0],gpio_status[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Lag_To_PS,Vivado 2018.3";
begin
end;
