-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_Receive_Store_0_0/core_FFT_Receive_Store_0_0_sim_netlist.vhdl
-- Design      : core_FFT_Receive_Store_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_FFT_Receive_Store_0_0_FFT_Receive_Store is
  port (
    busy_reg_0 : out STD_LOGIC;
    \channel_latched_reg[1]_0\ : out STD_LOGIC;
    \channel_latched_reg[0]_0\ : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    m_axis_data_tvalid_0 : out STD_LOGIC;
    \channel_valid_reg[3]_0\ : out STD_LOGIC;
    \channel_valid_reg[2]_0\ : out STD_LOGIC;
    \channel_valid_reg[1]_0\ : out STD_LOGIC;
    \channel_valid_reg[0]_0\ : out STD_LOGIC;
    ram_addra : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_data_tready : out STD_LOGIC;
    all_channels_ready : out STD_LOGIC;
    tlast_error : out STD_LOGIC;
    channel_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    m_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_FFT_Receive_Store_0_0_FFT_Receive_Store : entity is "FFT_Receive_Store";
end core_FFT_Receive_Store_0_0_FFT_Receive_Store;

architecture STRUCTURE of core_FFT_Receive_Store_0_0_FFT_Receive_Store is
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^busy_reg_0\ : STD_LOGIC;
  signal \channel_latched[0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_latched[1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_latched[1]_i_2_n_0\ : STD_LOGIC;
  signal \^channel_latched_reg[0]_0\ : STD_LOGIC;
  signal \^channel_latched_reg[1]_0\ : STD_LOGIC;
  signal \channel_valid[0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_valid[0]_i_2_n_0\ : STD_LOGIC;
  signal \channel_valid[0]_i_3_n_0\ : STD_LOGIC;
  signal \channel_valid[1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_valid[1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_valid[1]_i_3_n_0\ : STD_LOGIC;
  signal \channel_valid[2]_i_1_n_0\ : STD_LOGIC;
  signal \channel_valid[2]_i_2_n_0\ : STD_LOGIC;
  signal \channel_valid[2]_i_3_n_0\ : STD_LOGIC;
  signal \channel_valid[3]_i_1_n_0\ : STD_LOGIC;
  signal \channel_valid[3]_i_2_n_0\ : STD_LOGIC;
  signal \channel_valid[3]_i_3_n_0\ : STD_LOGIC;
  signal \channel_valid[3]_i_4_n_0\ : STD_LOGIC;
  signal \^channel_valid_reg[0]_0\ : STD_LOGIC;
  signal \^channel_valid_reg[1]_0\ : STD_LOGIC;
  signal \^channel_valid_reg[2]_0\ : STD_LOGIC;
  signal \^channel_valid_reg[3]_0\ : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_data_tvalid_0\ : STD_LOGIC;
  signal \point_index[11]_i_1_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_3_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_4_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_5_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_6_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_7_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_8_n_0\ : STD_LOGIC;
  signal \point_index[11]_i_9_n_0\ : STD_LOGIC;
  signal \point_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \point_index[3]_i_3_n_0\ : STD_LOGIC;
  signal \point_index[3]_i_4_n_0\ : STD_LOGIC;
  signal \point_index[3]_i_5_n_0\ : STD_LOGIC;
  signal \point_index[7]_i_2_n_0\ : STD_LOGIC;
  signal \point_index[7]_i_3_n_0\ : STD_LOGIC;
  signal \point_index[7]_i_4_n_0\ : STD_LOGIC;
  signal \point_index[7]_i_5_n_0\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \point_index_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \point_index_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \point_index_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^ram_addra\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^tlast_error\ : STD_LOGIC;
  signal tlast_error_i_1_n_0 : STD_LOGIC;
  signal \NLW_point_index_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of all_channels_ready_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \channel_latched[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \channel_latched[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \channel_valid[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \channel_valid[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \channel_valid[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \channel_valid[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \channel_valid[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \channel_valid[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \channel_valid[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \channel_valid[3]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of frame_done_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_data_tready_INST_0 : label is "soft_lutpair3";
begin
  busy_reg_0 <= \^busy_reg_0\;
  \channel_latched_reg[0]_0\ <= \^channel_latched_reg[0]_0\;
  \channel_latched_reg[1]_0\ <= \^channel_latched_reg[1]_0\;
  \channel_valid_reg[0]_0\ <= \^channel_valid_reg[0]_0\;
  \channel_valid_reg[1]_0\ <= \^channel_valid_reg[1]_0\;
  \channel_valid_reg[2]_0\ <= \^channel_valid_reg[2]_0\;
  \channel_valid_reg[3]_0\ <= \^channel_valid_reg[3]_0\;
  m_axis_data_tvalid_0 <= \^m_axis_data_tvalid_0\;
  ram_addra(11 downto 0) <= \^ram_addra\(11 downto 0);
  tlast_error <= \^tlast_error\;
all_channels_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^channel_valid_reg[2]_0\,
      I1 => \^channel_valid_reg[1]_0\,
      I2 => \^channel_valid_reg[3]_0\,
      I3 => \^channel_valid_reg[0]_0\,
      O => all_channels_ready
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFAAAA"
    )
        port map (
      I0 => start,
      I1 => \point_index[11]_i_3_n_0\,
      I2 => m_axis_data_tvalid,
      I3 => rst,
      I4 => \^busy_reg_0\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => busy_i_1_n_0,
      Q => \^busy_reg_0\
    );
\channel_latched[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => channel_sel(0),
      I1 => start,
      I2 => \^busy_reg_0\,
      I3 => \^channel_latched_reg[0]_0\,
      O => \channel_latched[0]_i_1_n_0\
    );
\channel_latched[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => channel_sel(1),
      I1 => start,
      I2 => \^busy_reg_0\,
      I3 => \^channel_latched_reg[1]_0\,
      O => \channel_latched[1]_i_1_n_0\
    );
\channel_latched[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \channel_latched[1]_i_2_n_0\
    );
\channel_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_latched[0]_i_1_n_0\,
      Q => \^channel_latched_reg[0]_0\
    );
\channel_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_latched[1]_i_1_n_0\,
      Q => \^channel_latched_reg[1]_0\
    );
\channel_valid[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \channel_valid[0]_i_2_n_0\,
      I2 => \point_index[11]_i_3_n_0\,
      I3 => \channel_valid[0]_i_3_n_0\,
      I4 => \^m_axis_data_tvalid_0\,
      I5 => \^channel_valid_reg[0]_0\,
      O => \channel_valid[0]_i_1_n_0\
    );
\channel_valid[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044444"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => start,
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => \channel_valid[3]_i_4_n_0\,
      O => \channel_valid[0]_i_2_n_0\
    );
\channel_valid[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^channel_latched_reg[0]_0\,
      I1 => \^channel_latched_reg[1]_0\,
      O => \channel_valid[0]_i_3_n_0\
    );
\channel_valid[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \channel_valid[1]_i_2_n_0\,
      I2 => \point_index[11]_i_3_n_0\,
      I3 => \channel_valid[1]_i_3_n_0\,
      I4 => \^m_axis_data_tvalid_0\,
      I5 => \^channel_valid_reg[1]_0\,
      O => \channel_valid[1]_i_1_n_0\
    );
\channel_valid[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404444"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => start,
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => \channel_valid[3]_i_4_n_0\,
      O => \channel_valid[1]_i_2_n_0\
    );
\channel_valid[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^channel_latched_reg[1]_0\,
      I1 => \^channel_latched_reg[0]_0\,
      O => \channel_valid[1]_i_3_n_0\
    );
\channel_valid[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \channel_valid[2]_i_2_n_0\,
      I2 => \point_index[11]_i_3_n_0\,
      I3 => \channel_valid[2]_i_3_n_0\,
      I4 => \^m_axis_data_tvalid_0\,
      I5 => \^channel_valid_reg[2]_0\,
      O => \channel_valid[2]_i_1_n_0\
    );
\channel_valid[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404444"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => start,
      I2 => channel_sel(1),
      I3 => channel_sel(0),
      I4 => \channel_valid[3]_i_4_n_0\,
      O => \channel_valid[2]_i_2_n_0\
    );
\channel_valid[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^channel_latched_reg[0]_0\,
      I1 => \^channel_latched_reg[1]_0\,
      O => \channel_valid[2]_i_3_n_0\
    );
\channel_valid[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \channel_valid[3]_i_2_n_0\,
      I2 => \point_index[11]_i_3_n_0\,
      I3 => \channel_valid[3]_i_3_n_0\,
      I4 => \^m_axis_data_tvalid_0\,
      I5 => \^channel_valid_reg[3]_0\,
      O => \channel_valid[3]_i_1_n_0\
    );
\channel_valid[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004444"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => start,
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => \channel_valid[3]_i_4_n_0\,
      O => \channel_valid[3]_i_2_n_0\
    );
\channel_valid[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^channel_latched_reg[0]_0\,
      I1 => \^channel_latched_reg[1]_0\,
      O => \channel_valid[3]_i_3_n_0\
    );
\channel_valid[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^channel_valid_reg[0]_0\,
      I1 => \^channel_valid_reg[3]_0\,
      I2 => \^channel_valid_reg[1]_0\,
      I3 => \^channel_valid_reg[2]_0\,
      O => \channel_valid[3]_i_4_n_0\
    );
\channel_valid_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_valid[0]_i_1_n_0\,
      Q => \^channel_valid_reg[0]_0\
    );
\channel_valid_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_valid[1]_i_1_n_0\,
      Q => \^channel_valid_reg[1]_0\
    );
\channel_valid_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_valid[2]_i_1_n_0\,
      Q => \^channel_valid_reg[2]_0\
    );
\channel_valid_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \channel_valid[3]_i_1_n_0\,
      Q => \^channel_valid_reg[3]_0\
    );
frame_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => rst,
      I2 => m_axis_data_tvalid,
      I3 => \point_index[11]_i_3_n_0\,
      O => frame_done_i_1_n_0
    );
frame_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => frame_done_i_1_n_0,
      Q => frame_done
    );
m_axis_data_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst,
      I1 => \^busy_reg_0\,
      O => m_axis_data_tready
    );
\point_index[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => start,
      I1 => \point_index[11]_i_3_n_0\,
      I2 => m_axis_data_tvalid,
      I3 => rst,
      I4 => \^busy_reg_0\,
      O => \point_index[11]_i_1_n_0\
    );
\point_index[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \point_index[11]_i_8_n_0\,
      I1 => \point_index[11]_i_9_n_0\,
      O => \point_index[11]_i_3_n_0\
    );
\point_index[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(11),
      O => \point_index[11]_i_4_n_0\
    );
\point_index[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(10),
      O => \point_index[11]_i_5_n_0\
    );
\point_index[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(9),
      O => \point_index[11]_i_6_n_0\
    );
\point_index[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(8),
      O => \point_index[11]_i_7_n_0\
    );
\point_index[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ram_addra\(4),
      I1 => \^ram_addra\(3),
      I2 => \^ram_addra\(5),
      I3 => \^ram_addra\(1),
      I4 => \^ram_addra\(0),
      I5 => \^ram_addra\(2),
      O => \point_index[11]_i_8_n_0\
    );
\point_index[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^ram_addra\(7),
      I1 => \^ram_addra\(6),
      I2 => \^ram_addra\(8),
      I3 => \^ram_addra\(11),
      I4 => \^ram_addra\(9),
      I5 => \^ram_addra\(10),
      O => \point_index[11]_i_9_n_0\
    );
\point_index[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(3),
      O => \point_index[3]_i_2_n_0\
    );
\point_index[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(2),
      O => \point_index[3]_i_3_n_0\
    );
\point_index[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(1),
      O => \point_index[3]_i_4_n_0\
    );
\point_index[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^ram_addra\(0),
      I1 => \^busy_reg_0\,
      O => \point_index[3]_i_5_n_0\
    );
\point_index[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(7),
      O => \point_index[7]_i_2_n_0\
    );
\point_index[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(6),
      O => \point_index[7]_i_3_n_0\
    );
\point_index[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(5),
      O => \point_index[7]_i_4_n_0\
    );
\point_index[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \^ram_addra\(4),
      O => \point_index[7]_i_5_n_0\
    );
\point_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[3]_i_1_n_7\,
      Q => \^ram_addra\(0)
    );
\point_index_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[11]_i_2_n_5\,
      Q => \^ram_addra\(10)
    );
\point_index_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[11]_i_2_n_4\,
      Q => \^ram_addra\(11)
    );
\point_index_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_index_reg[7]_i_1_n_0\,
      CO(3) => \NLW_point_index_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \point_index_reg[11]_i_2_n_1\,
      CO(1) => \point_index_reg[11]_i_2_n_2\,
      CO(0) => \point_index_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \point_index_reg[11]_i_2_n_4\,
      O(2) => \point_index_reg[11]_i_2_n_5\,
      O(1) => \point_index_reg[11]_i_2_n_6\,
      O(0) => \point_index_reg[11]_i_2_n_7\,
      S(3) => \point_index[11]_i_4_n_0\,
      S(2) => \point_index[11]_i_5_n_0\,
      S(1) => \point_index[11]_i_6_n_0\,
      S(0) => \point_index[11]_i_7_n_0\
    );
\point_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[3]_i_1_n_6\,
      Q => \^ram_addra\(1)
    );
\point_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[3]_i_1_n_5\,
      Q => \^ram_addra\(2)
    );
\point_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[3]_i_1_n_4\,
      Q => \^ram_addra\(3)
    );
\point_index_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \point_index_reg[3]_i_1_n_0\,
      CO(2) => \point_index_reg[3]_i_1_n_1\,
      CO(1) => \point_index_reg[3]_i_1_n_2\,
      CO(0) => \point_index_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^busy_reg_0\,
      O(3) => \point_index_reg[3]_i_1_n_4\,
      O(2) => \point_index_reg[3]_i_1_n_5\,
      O(1) => \point_index_reg[3]_i_1_n_6\,
      O(0) => \point_index_reg[3]_i_1_n_7\,
      S(3) => \point_index[3]_i_2_n_0\,
      S(2) => \point_index[3]_i_3_n_0\,
      S(1) => \point_index[3]_i_4_n_0\,
      S(0) => \point_index[3]_i_5_n_0\
    );
\point_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[7]_i_1_n_7\,
      Q => \^ram_addra\(4)
    );
\point_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[7]_i_1_n_6\,
      Q => \^ram_addra\(5)
    );
\point_index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[7]_i_1_n_5\,
      Q => \^ram_addra\(6)
    );
\point_index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[7]_i_1_n_4\,
      Q => \^ram_addra\(7)
    );
\point_index_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \point_index_reg[3]_i_1_n_0\,
      CO(3) => \point_index_reg[7]_i_1_n_0\,
      CO(2) => \point_index_reg[7]_i_1_n_1\,
      CO(1) => \point_index_reg[7]_i_1_n_2\,
      CO(0) => \point_index_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \point_index_reg[7]_i_1_n_4\,
      O(2) => \point_index_reg[7]_i_1_n_5\,
      O(1) => \point_index_reg[7]_i_1_n_6\,
      O(0) => \point_index_reg[7]_i_1_n_7\,
      S(3) => \point_index[7]_i_2_n_0\,
      S(2) => \point_index[7]_i_3_n_0\,
      S(1) => \point_index[7]_i_4_n_0\,
      S(0) => \point_index[7]_i_5_n_0\
    );
\point_index_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[11]_i_2_n_7\,
      Q => \^ram_addra\(8)
    );
\point_index_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \point_index[11]_i_1_n_0\,
      CLR => \channel_latched[1]_i_2_n_0\,
      D => \point_index_reg[11]_i_2_n_6\,
      Q => \^ram_addra\(9)
    );
ram_wea_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axis_data_tvalid,
      I1 => rst,
      I2 => \^busy_reg_0\,
      O => \^m_axis_data_tvalid_0\
    );
tlast_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBABBBBA00A0000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => start,
      I2 => m_axis_data_tlast,
      I3 => \point_index[11]_i_3_n_0\,
      I4 => \^m_axis_data_tvalid_0\,
      I5 => \^tlast_error\,
      O => tlast_error_i_1_n_0
    );
tlast_error_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \channel_latched[1]_i_2_n_0\,
      D => tlast_error_i_1_n_0,
      Q => \^tlast_error\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_FFT_Receive_Store_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_FFT_Receive_Store_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_FFT_Receive_Store_0_0 : entity is "core_FFT_Receive_Store_0_0,FFT_Receive_Store,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_FFT_Receive_Store_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_FFT_Receive_Store_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_FFT_Receive_Store_0_0 : entity is "FFT_Receive_Store,Vivado 2018.3";
end core_FFT_Receive_Store_0_0;

architecture STRUCTURE of core_FFT_Receive_Store_0_0 is
  signal \^m_axis_data_tdata\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \^ram_addra\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^ram_ena\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_data_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_data TLAST";
  attribute X_INTERFACE_INFO of m_axis_data_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_data TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_data_tready : signal is "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_data TVALID";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_data TDATA";
begin
  \^m_axis_data_tdata\(47 downto 0) <= m_axis_data_tdata(47 downto 0);
  frame_channel(1 downto 0) <= \^ram_addra\(13 downto 12);
  ram_addra(13 downto 0) <= \^ram_addra\(13 downto 0);
  ram_dina(47 downto 0) <= \^m_axis_data_tdata\(47 downto 0);
  ram_ena <= \^ram_ena\;
  ram_wea <= \^ram_ena\;
inst: entity work.core_FFT_Receive_Store_0_0_FFT_Receive_Store
     port map (
      all_channels_ready => all_channels_ready,
      busy_reg_0 => busy,
      \channel_latched_reg[0]_0\ => \^ram_addra\(12),
      \channel_latched_reg[1]_0\ => \^ram_addra\(13),
      channel_sel(1 downto 0) => channel_sel(1 downto 0),
      \channel_valid_reg[0]_0\ => channel_valid(0),
      \channel_valid_reg[1]_0\ => channel_valid(1),
      \channel_valid_reg[2]_0\ => channel_valid(2),
      \channel_valid_reg[3]_0\ => channel_valid(3),
      clk => clk,
      frame_done => frame_done,
      m_axis_data_tlast => m_axis_data_tlast,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_data_tvalid_0 => \^ram_ena\,
      ram_addra(11 downto 0) => \^ram_addra\(11 downto 0),
      rst => rst,
      start => start,
      tlast_error => tlast_error
    );
end STRUCTURE;
