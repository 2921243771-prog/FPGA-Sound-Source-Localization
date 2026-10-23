-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 16:28:26 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_IFFT_Mux_0_0/core_FFT_IFFT_Mux_0_0_stub.vhdl
-- Design      : core_FFT_IFFT_Mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity core_FFT_IFFT_Mux_0_0 is
  Port ( 
    select_ifft : in STD_LOGIC;
    forward_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    forward_config_tvalid : in STD_LOGIC;
    forward_config_tready : out STD_LOGIC;
    forward_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    forward_data_tvalid : in STD_LOGIC;
    forward_data_tlast : in STD_LOGIC;
    forward_data_tready : out STD_LOGIC;
    forward_result_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    forward_result_tvalid : out STD_LOGIC;
    forward_result_tlast : out STD_LOGIC;
    forward_result_tready : in STD_LOGIC;
    inverse_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inverse_config_tvalid : in STD_LOGIC;
    inverse_config_tready : out STD_LOGIC;
    inverse_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    inverse_data_tvalid : in STD_LOGIC;
    inverse_data_tlast : in STD_LOGIC;
    inverse_data_tready : out STD_LOGIC;
    inverse_result_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    inverse_result_tvalid : out STD_LOGIC;
    inverse_result_tlast : out STD_LOGIC;
    inverse_result_tready : in STD_LOGIC;
    core_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_config_tvalid : out STD_LOGIC;
    core_config_tready : in STD_LOGIC;
    core_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    core_data_tvalid : out STD_LOGIC;
    core_data_tlast : out STD_LOGIC;
    core_data_tready : in STD_LOGIC;
    core_result_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    core_result_tvalid : in STD_LOGIC;
    core_result_tlast : in STD_LOGIC;
    core_result_tready : out STD_LOGIC
  );

end core_FFT_IFFT_Mux_0_0;

architecture stub of core_FFT_IFFT_Mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "select_ifft,forward_config_tdata[7:0],forward_config_tvalid,forward_config_tready,forward_data_tdata[47:0],forward_data_tvalid,forward_data_tlast,forward_data_tready,forward_result_tdata[47:0],forward_result_tvalid,forward_result_tlast,forward_result_tready,inverse_config_tdata[7:0],inverse_config_tvalid,inverse_config_tready,inverse_data_tdata[47:0],inverse_data_tvalid,inverse_data_tlast,inverse_data_tready,inverse_result_tdata[47:0],inverse_result_tvalid,inverse_result_tlast,inverse_result_tready,core_config_tdata[7:0],core_config_tvalid,core_config_tready,core_data_tdata[47:0],core_data_tvalid,core_data_tlast,core_data_tready,core_result_tdata[47:0],core_result_tvalid,core_result_tlast,core_result_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FFT_IFFT_Mux,Vivado 2018.3";
begin
end;
