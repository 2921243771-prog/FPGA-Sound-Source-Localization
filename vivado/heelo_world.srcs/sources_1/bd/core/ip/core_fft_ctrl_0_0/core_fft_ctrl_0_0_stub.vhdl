-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fft_ctrl_0_0/core_fft_ctrl_0_0_stub.vhdl
-- Design      : core_fft_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_fft_ctrl_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Ram_ready : in STD_LOGIC;
    addrb : out STD_LOGIC_VECTOR ( 12 downto 0 );
    enb : out STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ifft_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : out STD_LOGIC;
    s_axis_config_tready : in STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tlast : out STD_LOGIC;
    s_axis_data_tready : in STD_LOGIC;
    fft_rx_start : out STD_LOGIC;
    channel_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fft_frame_done : in STD_LOGIC;
    busy : out STD_LOGIC;
    batch_done : out STD_LOGIC
  );

end core_fft_ctrl_0_0;

architecture stub of core_fft_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,Ram_ready,addrb[12:0],enb,data[23:0],ifft_data[47:0],s_axis_config_tdata[7:0],s_axis_config_tvalid,s_axis_config_tready,tdata[47:0],s_axis_data_tvalid,s_axis_data_tlast,s_axis_data_tready,fft_rx_start,channel_sel[1:0],fft_frame_done,busy,batch_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fft_ctrl,Vivado 2018.3";
begin
end;
