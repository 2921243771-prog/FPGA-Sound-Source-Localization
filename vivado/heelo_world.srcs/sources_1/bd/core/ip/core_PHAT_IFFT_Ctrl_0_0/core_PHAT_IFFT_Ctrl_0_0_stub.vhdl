-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 16:28:41 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_PHAT_IFFT_Ctrl_0_0/core_PHAT_IFFT_Ctrl_0_0_stub.vhdl
-- Design      : core_PHAT_IFFT_Ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_PHAT_IFFT_Ctrl_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    spectrum_addrb : out STD_LOGIC_VECTOR ( 13 downto 0 );
    spectrum_enb : out STD_LOGIC;
    spectrum_doutb : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : out STD_LOGIC;
    s_axis_config_tready : in STD_LOGIC;
    s_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tlast : out STD_LOGIC;
    s_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tready : out STD_LOGIC;
    pair_index : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pair_done : out STD_LOGIC;
    pair_lag : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pair_peak : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lag12 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag13 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag14 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag23 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag24 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag34 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    lag_valid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_error : out STD_LOGIC
  );

end core_PHAT_IFFT_Ctrl_0_0;

architecture stub of core_PHAT_IFFT_Ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,busy,done,spectrum_addrb[13:0],spectrum_enb,spectrum_doutb[47:0],s_axis_config_tdata[7:0],s_axis_config_tvalid,s_axis_config_tready,s_axis_data_tdata[47:0],s_axis_data_tvalid,s_axis_data_tlast,s_axis_data_tready,m_axis_data_tdata[47:0],m_axis_data_tvalid,m_axis_data_tlast,m_axis_data_tready,pair_index[2:0],pair_done,pair_lag[15:0],pair_peak[23:0],lag12[15:0],lag13[15:0],lag14[15:0],lag23[15:0],lag24[15:0],lag34[15:0],lag_valid[5:0],frame_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PHAT_IFFT_Ctrl,Vivado 2018.3";
begin
end;
