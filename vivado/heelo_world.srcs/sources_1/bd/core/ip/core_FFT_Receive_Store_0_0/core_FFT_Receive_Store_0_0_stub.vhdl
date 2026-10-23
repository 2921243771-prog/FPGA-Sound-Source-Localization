-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_Receive_Store_0_0/core_FFT_Receive_Store_0_0_stub.vhdl
-- Design      : core_FFT_Receive_Store_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_FFT_Receive_Store_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    channel_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tready : out STD_LOGIC;
    ram_ena : out STD_LOGIC;
    ram_wea : out STD_LOGIC;
    ram_addra : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_dina : out STD_LOGIC_VECTOR ( 47 downto 0 );
    busy : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    frame_channel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    channel_valid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    all_channels_ready : out STD_LOGIC;
    tlast_error : out STD_LOGIC
  );

end core_FFT_Receive_Store_0_0;

architecture stub of core_FFT_Receive_Store_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,channel_sel[1:0],m_axis_data_tdata[47:0],m_axis_data_tvalid,m_axis_data_tlast,m_axis_data_tready,ram_ena,ram_wea,ram_addra[13:0],ram_dina[47:0],busy,frame_done,frame_channel[1:0],channel_valid[3:0],all_channels_ready,tlast_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FFT_Receive_Store,Vivado 2018.3";
begin
end;
