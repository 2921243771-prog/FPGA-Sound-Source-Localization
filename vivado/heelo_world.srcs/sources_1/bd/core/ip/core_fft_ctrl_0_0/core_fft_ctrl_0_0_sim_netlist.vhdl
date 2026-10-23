-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fft_ctrl_0_0/core_fft_ctrl_0_0_sim_netlist.vhdl
-- Design      : core_fft_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_fft_ctrl_0_0_fft_ctrl is
  port (
    \channel_sel_reg[0]_0\ : out STD_LOGIC;
    \channel_sel_reg[1]_0\ : out STD_LOGIC;
    addrb : out STD_LOGIC_VECTOR ( 12 downto 0 );
    tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    batch_done : out STD_LOGIC;
    s_axis_config_tvalid_reg_0 : out STD_LOGIC;
    fft_rx_start : out STD_LOGIC;
    s_axis_data_tvalid_reg_0 : out STD_LOGIC;
    enb : out STD_LOGIC;
    busy : out STD_LOGIC;
    s_axis_data_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    Ram_ready : in STD_LOGIC;
    fft_frame_done : in STD_LOGIC;
    s_axis_config_tready : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_axis_data_tready : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_fft_ctrl_0_0_fft_ctrl : entity is "fft_ctrl";
end core_fft_ctrl_0_0_fft_ctrl;

architecture STRUCTURE of core_fft_ctrl_0_0_fft_ctrl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal Ram_ready_d : STD_LOGIC;
  signal \addrb[12]_i_1_n_0\ : STD_LOGIC;
  signal \addrb[12]_i_2_n_0\ : STD_LOGIC;
  signal batch_done_i_1_n_0 : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \channel_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_sel[1]_i_2_n_0\ : STD_LOGIC;
  signal \^channel_sel_reg[0]_0\ : STD_LOGIC;
  signal \^channel_sel_reg[1]_0\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal enb_i_1_n_0 : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal s_axis_config_tvalid_i_1_n_0 : STD_LOGIC;
  signal s_axis_config_tvalid_i_2_n_0 : STD_LOGIC;
  signal s_axis_config_tvalid_i_3_n_0 : STD_LOGIC;
  signal s_axis_config_tvalid_i_4_n_0 : STD_LOGIC;
  signal \^s_axis_config_tvalid_reg_0\ : STD_LOGIC;
  signal \^s_axis_data_tlast\ : STD_LOGIC;
  signal s_axis_data_tlast_i_1_n_0 : STD_LOGIC;
  signal s_axis_data_tlast_i_2_n_0 : STD_LOGIC;
  signal s_axis_data_tlast_i_3_n_0 : STD_LOGIC;
  signal s_axis_data_tvalid_i_1_n_0 : STD_LOGIC;
  signal s_axis_data_tvalid_i_2_n_0 : STD_LOGIC;
  signal s_axis_data_tvalid_i_3_n_0 : STD_LOGIC;
  signal \^s_axis_data_tvalid_reg_0\ : STD_LOGIC;
  signal send_index : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \send_index0_carry__0_n_0\ : STD_LOGIC;
  signal \send_index0_carry__0_n_1\ : STD_LOGIC;
  signal \send_index0_carry__0_n_2\ : STD_LOGIC;
  signal \send_index0_carry__0_n_3\ : STD_LOGIC;
  signal \send_index0_carry__1_n_2\ : STD_LOGIC;
  signal \send_index0_carry__1_n_3\ : STD_LOGIC;
  signal send_index0_carry_n_0 : STD_LOGIC;
  signal send_index0_carry_n_1 : STD_LOGIC;
  signal send_index0_carry_n_2 : STD_LOGIC;
  signal send_index0_carry_n_3 : STD_LOGIC;
  signal \send_index[11]_i_1_n_0\ : STD_LOGIC;
  signal \send_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[10]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[11]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[8]\ : STD_LOGIC;
  signal \send_index_reg_n_0_[9]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \tdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \tdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_send_index0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_send_index0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "WAIT_RAM:011,LATCH_RAM:100,FFT_SEND:101,RAM_REQUEST:010,WAIT_RESULT:110,FFT_CONFIG:001,IDLE:000";
  attribute SOFT_HLUTNM of \channel_sel[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \channel_sel[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of enb_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of fft_rx_start_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axis_config_tvalid_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_data_tlast_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \send_index[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \send_index[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \send_index[11]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \send_index[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \send_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \send_index[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \send_index[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \send_index[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \send_index[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \send_index[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \send_index[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \send_index[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdata[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tdata[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdata[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdata[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdata[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdata[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdata[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdata[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdata[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdata[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdata[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdata[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tdata[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdata[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdata[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdata[23]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdata[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tdata[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tdata[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdata[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdata[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdata[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdata[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tdata[9]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wait_count[0]_i_1\ : label is "soft_lutpair2";
begin
  busy <= \^busy\;
  \channel_sel_reg[0]_0\ <= \^channel_sel_reg[0]_0\;
  \channel_sel_reg[1]_0\ <= \^channel_sel_reg[1]_0\;
  enb <= \^enb\;
  s_axis_config_tvalid_reg_0 <= \^s_axis_config_tvalid_reg_0\;
  s_axis_data_tlast <= \^s_axis_data_tlast\;
  s_axis_data_tvalid_reg_0 <= \^s_axis_data_tvalid_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0FBBB0B0B0"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => s_axis_data_tvalid_i_2_n_0,
      I4 => s_axis_data_tlast_i_3_n_0,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^channel_sel_reg[0]_0\,
      I1 => \^channel_sel_reg[1]_0\,
      I2 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F1F1FCCC0C0C0"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => s_axis_data_tvalid_i_2_n_0,
      I4 => s_axis_data_tlast_i_3_n_0,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F2F2F88808080"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => s_axis_data_tvalid_i_2_n_0,
      I4 => s_axis_data_tlast_i_3_n_0,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAA55555555"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \send_index_reg_n_0_[11]\,
      I2 => s_axis_data_tvalid_i_3_n_0,
      I3 => \tdata[23]_i_5_n_0\,
      I4 => \send_index_reg_n_0_[0]\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00FFCCCCFCCC"
    )
        port map (
      I0 => fft_frame_done,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000F2F2"
    )
        port map (
      I0 => Ram_ready,
      I1 => Ram_ready_d,
      I2 => \state__0\(1),
      I3 => \wait_count_reg_n_0_[0]\,
      I4 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_config_tvalid_reg_0\,
      I1 => s_axis_config_tready,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
Ram_ready_d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => Ram_ready,
      Q => Ram_ready_d
    );
\addrb[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \addrb[12]_i_1_n_0\
    );
\addrb[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \addrb[12]_i_2_n_0\
    );
\addrb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \^channel_sel_reg[0]_0\,
      Q => addrb(0)
    );
\addrb_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[8]\,
      Q => addrb(10)
    );
\addrb_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[9]\,
      Q => addrb(11)
    );
\addrb_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[10]\,
      Q => addrb(12)
    );
\addrb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \^channel_sel_reg[1]_0\,
      Q => addrb(1)
    );
\addrb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[0]\,
      Q => addrb(2)
    );
\addrb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[1]\,
      Q => addrb(3)
    );
\addrb_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[2]\,
      Q => addrb(4)
    );
\addrb_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[3]\,
      Q => addrb(5)
    );
\addrb_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[4]\,
      Q => addrb(6)
    );
\addrb_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[5]\,
      Q => addrb(7)
    );
\addrb_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[6]\,
      Q => addrb(8)
    );
\addrb_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \addrb[12]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \send_index_reg_n_0_[7]\,
      Q => addrb(9)
    );
batch_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => fft_frame_done,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^channel_sel_reg[1]_0\,
      I5 => \^channel_sel_reg[0]_0\,
      O => batch_done_i_1_n_0
    );
batch_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => batch_done_i_1_n_0,
      Q => batch_done
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F555F550A000B00"
    )
        port map (
      I0 => batch_done_i_1_n_0,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => s_axis_config_tvalid_i_2_n_0,
      I4 => \state__0\(1),
      I5 => \^busy\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => busy_i_1_n_0,
      Q => \^busy\
    );
\channel_sel[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \channel_sel[1]_i_2_n_0\,
      I3 => \^channel_sel_reg[0]_0\,
      O => \channel_sel[0]_i_1_n_0\
    );
\channel_sel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF2000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \^channel_sel_reg[0]_0\,
      I3 => \channel_sel[1]_i_2_n_0\,
      I4 => \^channel_sel_reg[1]_0\,
      O => \channel_sel[1]_i_1_n_0\
    );
\channel_sel[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => Ram_ready_d,
      I3 => Ram_ready,
      I4 => \state__0\(1),
      I5 => s_axis_config_tvalid_i_4_n_0,
      O => \channel_sel[1]_i_2_n_0\
    );
\channel_sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \channel_sel[0]_i_1_n_0\,
      Q => \^channel_sel_reg[0]_0\
    );
\channel_sel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \channel_sel[1]_i_1_n_0\,
      Q => \^channel_sel_reg[1]_0\
    );
enb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA02"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \^enb\,
      O => enb_i_1_n_0
    );
enb_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => enb_i_1_n_0,
      Q => \^enb\
    );
fft_rx_start_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_config_tready,
      I1 => \^s_axis_config_tvalid_reg_0\,
      I2 => rst,
      O => fft_rx_start
    );
s_axis_config_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2320FFFF23200000"
    )
        port map (
      I0 => fft_frame_done,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => s_axis_config_tvalid_i_2_n_0,
      I4 => s_axis_config_tvalid_i_3_n_0,
      I5 => \^s_axis_config_tvalid_reg_0\,
      O => s_axis_config_tvalid_i_1_n_0
    );
s_axis_config_tvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Ram_ready,
      I1 => Ram_ready_d,
      O => s_axis_config_tvalid_i_2_n_0
    );
s_axis_config_tvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF05010101"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => s_axis_config_tready,
      I4 => \^s_axis_config_tvalid_reg_0\,
      I5 => s_axis_config_tvalid_i_4_n_0,
      O => s_axis_config_tvalid_i_3_n_0
    );
s_axis_config_tvalid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \^channel_sel_reg[1]_0\,
      I3 => \^channel_sel_reg[0]_0\,
      I4 => \state__0\(2),
      I5 => fft_frame_done,
      O => s_axis_config_tvalid_i_4_n_0
    );
s_axis_config_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => s_axis_config_tvalid_i_1_n_0,
      Q => \^s_axis_config_tvalid_reg_0\
    );
s_axis_data_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEAA02"
    )
        port map (
      I0 => s_axis_data_tlast_i_2_n_0,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_data_tlast_i_3_n_0,
      I4 => \^s_axis_data_tlast\,
      O => s_axis_data_tlast_i_1_n_0
    );
s_axis_data_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001100000"
    )
        port map (
      I0 => s_axis_data_tvalid_i_3_n_0,
      I1 => \tdata[23]_i_5_n_0\,
      I2 => \send_index_reg_n_0_[0]\,
      I3 => \state__0\(0),
      I4 => \send_index_reg_n_0_[11]\,
      I5 => \tdata[23]_i_4_n_0\,
      O => s_axis_data_tlast_i_2_n_0
    );
s_axis_data_tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axis_data_tready,
      I1 => \^s_axis_data_tvalid_reg_0\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => s_axis_data_tlast_i_3_n_0
    );
s_axis_data_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => s_axis_data_tlast_i_1_n_0,
      Q => \^s_axis_data_tlast\
    );
s_axis_data_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FC0300FFFC0300"
    )
        port map (
      I0 => s_axis_data_tvalid_i_2_n_0,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \^s_axis_data_tvalid_reg_0\,
      I5 => s_axis_data_tready,
      O => s_axis_data_tvalid_i_1_n_0
    );
s_axis_data_tvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => s_axis_data_tvalid_i_3_n_0,
      I1 => \tdata[23]_i_5_n_0\,
      I2 => \send_index_reg_n_0_[0]\,
      I3 => \send_index_reg_n_0_[11]\,
      O => s_axis_data_tvalid_i_2_n_0
    );
s_axis_data_tvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \send_index_reg_n_0_[5]\,
      I1 => \send_index_reg_n_0_[6]\,
      I2 => \send_index_reg_n_0_[1]\,
      I3 => \send_index_reg_n_0_[4]\,
      O => s_axis_data_tvalid_i_3_n_0
    );
s_axis_data_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => s_axis_data_tvalid_i_1_n_0,
      Q => \^s_axis_data_tvalid_reg_0\
    );
send_index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => send_index0_carry_n_0,
      CO(2) => send_index0_carry_n_1,
      CO(1) => send_index0_carry_n_2,
      CO(0) => send_index0_carry_n_3,
      CYINIT => \send_index_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3) => \send_index_reg_n_0_[4]\,
      S(2) => \send_index_reg_n_0_[3]\,
      S(1) => \send_index_reg_n_0_[2]\,
      S(0) => \send_index_reg_n_0_[1]\
    );
\send_index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => send_index0_carry_n_0,
      CO(3) => \send_index0_carry__0_n_0\,
      CO(2) => \send_index0_carry__0_n_1\,
      CO(1) => \send_index0_carry__0_n_2\,
      CO(0) => \send_index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \send_index_reg_n_0_[8]\,
      S(2) => \send_index_reg_n_0_[7]\,
      S(1) => \send_index_reg_n_0_[6]\,
      S(0) => \send_index_reg_n_0_[5]\
    );
\send_index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \send_index0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_send_index0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \send_index0_carry__1_n_2\,
      CO(0) => \send_index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_send_index0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(11 downto 9),
      S(3) => '0',
      S(2) => \send_index_reg_n_0_[11]\,
      S(1) => \send_index_reg_n_0_[10]\,
      S(0) => \send_index_reg_n_0_[9]\
    );
\send_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \send_index_reg_n_0_[0]\,
      O => send_index(0)
    );
\send_index[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(10),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(10)
    );
\send_index[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => \send_index_reg_n_0_[11]\,
      I1 => \tdata[23]_i_3_n_0\,
      I2 => \state__0\(0),
      I3 => s_axis_data_tlast_i_3_n_0,
      I4 => \channel_sel[1]_i_2_n_0\,
      O => \send_index[11]_i_1_n_0\
    );
\send_index[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(11),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(11)
    );
\send_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(1),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(1)
    );
\send_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(2),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(2)
    );
\send_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(3),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(3)
    );
\send_index[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(4),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(4)
    );
\send_index[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(5),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(5)
    );
\send_index[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(6),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(6)
    );
\send_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(7),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(7)
    );
\send_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(8),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(8)
    );
\send_index[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => in9(9),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => send_index(9)
    );
\send_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(0),
      Q => \send_index_reg_n_0_[0]\
    );
\send_index_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(10),
      Q => \send_index_reg_n_0_[10]\
    );
\send_index_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(11),
      Q => \send_index_reg_n_0_[11]\
    );
\send_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(1),
      Q => \send_index_reg_n_0_[1]\
    );
\send_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(2),
      Q => \send_index_reg_n_0_[2]\
    );
\send_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(3),
      Q => \send_index_reg_n_0_[3]\
    );
\send_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(4),
      Q => \send_index_reg_n_0_[4]\
    );
\send_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(5),
      Q => \send_index_reg_n_0_[5]\
    );
\send_index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(6),
      Q => \send_index_reg_n_0_[6]\
    );
\send_index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(7),
      Q => \send_index_reg_n_0_[7]\
    );
\send_index_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(8),
      Q => \send_index_reg_n_0_[8]\
    );
\send_index_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \send_index[11]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => send_index(9),
      Q => \send_index_reg_n_0_[9]\
    );
\tdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(0),
      I1 => \state__0\(0),
      O => \tdata[0]_i_1_n_0\
    );
\tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(10),
      I1 => \state__0\(0),
      O => \tdata[10]_i_1_n_0\
    );
\tdata[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(11),
      I1 => \state__0\(0),
      O => \tdata[11]_i_1_n_0\
    );
\tdata[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(12),
      I1 => \state__0\(0),
      O => \tdata[12]_i_1_n_0\
    );
\tdata[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(13),
      I1 => \state__0\(0),
      O => \tdata[13]_i_1_n_0\
    );
\tdata[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(14),
      I1 => \state__0\(0),
      O => \tdata[14]_i_1_n_0\
    );
\tdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(15),
      I1 => \state__0\(0),
      O => \tdata[15]_i_1_n_0\
    );
\tdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(16),
      I1 => \state__0\(0),
      O => \tdata[16]_i_1_n_0\
    );
\tdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(17),
      I1 => \state__0\(0),
      O => \tdata[17]_i_1_n_0\
    );
\tdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(18),
      I1 => \state__0\(0),
      O => \tdata[18]_i_1_n_0\
    );
\tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(19),
      I1 => \state__0\(0),
      O => \tdata[19]_i_1_n_0\
    );
\tdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(1),
      I1 => \state__0\(0),
      O => \tdata[1]_i_1_n_0\
    );
\tdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(20),
      I1 => \state__0\(0),
      O => \tdata[20]_i_1_n_0\
    );
\tdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(21),
      I1 => \state__0\(0),
      O => \tdata[21]_i_1_n_0\
    );
\tdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(22),
      I1 => \state__0\(0),
      O => \tdata[22]_i_1_n_0\
    );
\tdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009000FFFF"
    )
        port map (
      I0 => \tdata[23]_i_3_n_0\,
      I1 => \send_index_reg_n_0_[11]\,
      I2 => s_axis_data_tready,
      I3 => \^s_axis_data_tvalid_reg_0\,
      I4 => \state__0\(0),
      I5 => \tdata[23]_i_4_n_0\,
      O => \tdata[23]_i_1_n_0\
    );
\tdata[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(23),
      I1 => \state__0\(0),
      O => \tdata[23]_i_2_n_0\
    );
\tdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \send_index_reg_n_0_[5]\,
      I1 => \send_index_reg_n_0_[6]\,
      I2 => \send_index_reg_n_0_[1]\,
      I3 => \send_index_reg_n_0_[4]\,
      I4 => \tdata[23]_i_5_n_0\,
      I5 => \send_index_reg_n_0_[0]\,
      O => \tdata[23]_i_3_n_0\
    );
\tdata[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \tdata[23]_i_4_n_0\
    );
\tdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \send_index_reg_n_0_[9]\,
      I1 => \send_index_reg_n_0_[8]\,
      I2 => \send_index_reg_n_0_[3]\,
      I3 => \send_index_reg_n_0_[2]\,
      I4 => \send_index_reg_n_0_[7]\,
      I5 => \send_index_reg_n_0_[10]\,
      O => \tdata[23]_i_5_n_0\
    );
\tdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(2),
      I1 => \state__0\(0),
      O => \tdata[2]_i_1_n_0\
    );
\tdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(3),
      I1 => \state__0\(0),
      O => \tdata[3]_i_1_n_0\
    );
\tdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(4),
      I1 => \state__0\(0),
      O => \tdata[4]_i_1_n_0\
    );
\tdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(5),
      I1 => \state__0\(0),
      O => \tdata[5]_i_1_n_0\
    );
\tdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(6),
      I1 => \state__0\(0),
      O => \tdata[6]_i_1_n_0\
    );
\tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(7),
      I1 => \state__0\(0),
      O => \tdata[7]_i_1_n_0\
    );
\tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(8),
      I1 => \state__0\(0),
      O => \tdata[8]_i_1_n_0\
    );
\tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data(9),
      I1 => \state__0\(0),
      O => \tdata[9]_i_1_n_0\
    );
\tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[0]_i_1_n_0\,
      Q => tdata(0)
    );
\tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[10]_i_1_n_0\,
      Q => tdata(10)
    );
\tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[11]_i_1_n_0\,
      Q => tdata(11)
    );
\tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[12]_i_1_n_0\,
      Q => tdata(12)
    );
\tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[13]_i_1_n_0\,
      Q => tdata(13)
    );
\tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[14]_i_1_n_0\,
      Q => tdata(14)
    );
\tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[15]_i_1_n_0\,
      Q => tdata(15)
    );
\tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[16]_i_1_n_0\,
      Q => tdata(16)
    );
\tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[17]_i_1_n_0\,
      Q => tdata(17)
    );
\tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[18]_i_1_n_0\,
      Q => tdata(18)
    );
\tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[19]_i_1_n_0\,
      Q => tdata(19)
    );
\tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[1]_i_1_n_0\,
      Q => tdata(1)
    );
\tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[20]_i_1_n_0\,
      Q => tdata(20)
    );
\tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[21]_i_1_n_0\,
      Q => tdata(21)
    );
\tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[22]_i_1_n_0\,
      Q => tdata(22)
    );
\tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[23]_i_2_n_0\,
      Q => tdata(23)
    );
\tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[2]_i_1_n_0\,
      Q => tdata(2)
    );
\tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[3]_i_1_n_0\,
      Q => tdata(3)
    );
\tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[4]_i_1_n_0\,
      Q => tdata(4)
    );
\tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[5]_i_1_n_0\,
      Q => tdata(5)
    );
\tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[6]_i_1_n_0\,
      Q => tdata(6)
    );
\tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[7]_i_1_n_0\,
      Q => tdata(7)
    );
\tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[8]_i_1_n_0\,
      Q => tdata(8)
    );
\tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \tdata[23]_i_1_n_0\,
      CLR => \addrb[12]_i_2_n_0\,
      D => \tdata[9]_i_1_n_0\,
      Q => tdata(9)
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addrb[12]_i_2_n_0\,
      D => \wait_count[0]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_fft_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_fft_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_fft_ctrl_0_0 : entity is "core_fft_ctrl_0_0,fft_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_fft_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_fft_ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_fft_ctrl_0_0 : entity is "fft_ctrl,Vivado 2018.3";
end core_fft_ctrl_0_0;

architecture STRUCTURE of core_fft_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^tdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_config:s_axis_data, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_config_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_config TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_config_tready : signal is "XIL_INTERFACENAME s_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_config_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_config TVALID";
  attribute X_INTERFACE_INFO of s_axis_data_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_data TLAST";
  attribute X_INTERFACE_INFO of s_axis_data_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_data TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_data_tready : signal is "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_data TVALID";
  attribute X_INTERFACE_INFO of s_axis_config_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_config TDATA";
  attribute X_INTERFACE_INFO of tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_data TDATA";
begin
  s_axis_config_tdata(7) <= \<const0>\;
  s_axis_config_tdata(6) <= \<const0>\;
  s_axis_config_tdata(5) <= \<const0>\;
  s_axis_config_tdata(4) <= \<const0>\;
  s_axis_config_tdata(3) <= \<const0>\;
  s_axis_config_tdata(2) <= \<const0>\;
  s_axis_config_tdata(1) <= \<const0>\;
  s_axis_config_tdata(0) <= \<const1>\;
  tdata(47) <= \<const0>\;
  tdata(46) <= \<const0>\;
  tdata(45) <= \<const0>\;
  tdata(44) <= \<const0>\;
  tdata(43) <= \<const0>\;
  tdata(42) <= \<const0>\;
  tdata(41) <= \<const0>\;
  tdata(40) <= \<const0>\;
  tdata(39) <= \<const0>\;
  tdata(38) <= \<const0>\;
  tdata(37) <= \<const0>\;
  tdata(36) <= \<const0>\;
  tdata(35) <= \<const0>\;
  tdata(34) <= \<const0>\;
  tdata(33) <= \<const0>\;
  tdata(32) <= \<const0>\;
  tdata(31) <= \<const0>\;
  tdata(30) <= \<const0>\;
  tdata(29) <= \<const0>\;
  tdata(28) <= \<const0>\;
  tdata(27) <= \<const0>\;
  tdata(26) <= \<const0>\;
  tdata(25) <= \<const0>\;
  tdata(24) <= \<const0>\;
  tdata(23 downto 0) <= \^tdata\(23 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.core_fft_ctrl_0_0_fft_ctrl
     port map (
      Ram_ready => Ram_ready,
      addrb(12 downto 0) => addrb(12 downto 0),
      batch_done => batch_done,
      busy => busy,
      \channel_sel_reg[0]_0\ => channel_sel(0),
      \channel_sel_reg[1]_0\ => channel_sel(1),
      clk => clk,
      data(23 downto 0) => data(23 downto 0),
      enb => enb,
      fft_frame_done => fft_frame_done,
      fft_rx_start => fft_rx_start,
      rst => rst,
      s_axis_config_tready => s_axis_config_tready,
      s_axis_config_tvalid_reg_0 => s_axis_config_tvalid,
      s_axis_data_tlast => s_axis_data_tlast,
      s_axis_data_tready => s_axis_data_tready,
      s_axis_data_tvalid_reg_0 => s_axis_data_tvalid,
      tdata(23 downto 0) => \^tdata\(23 downto 0)
    );
end STRUCTURE;
