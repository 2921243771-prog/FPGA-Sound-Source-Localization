-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 17:02:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_I2S_drive_0_1/core_I2S_drive_0_1_sim_netlist.vhdl
-- Design      : core_I2S_drive_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_I2S_drive_0_1_I2C_clock is
  port (
    logic_rst : out STD_LOGIC;
    SCK_reg_0 : out STD_LOGIC;
    WS_reg_0 : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SCK_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    WS1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[3]\ : out STD_LOGIC;
    SCK_reg_2 : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    SCK_reg_3 : out STD_LOGIC;
    MMCM_CLOCK : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \data4_reg[0]\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    locked : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    SCK1_reg : in STD_LOGIC;
    WS1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_data1_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_I2S_drive_0_1_I2C_clock : entity is "I2C_clock";
end core_I2S_drive_0_1_I2C_clock;

architecture STRUCTURE of core_I2S_drive_0_1_I2C_clock is
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal SCK1_i_2_n_0 : STD_LOGIC;
  signal SCK_i_1_n_0 : STD_LOGIC;
  signal \^sck_reg_0\ : STD_LOGIC;
  signal WS_i_1_n_0 : STD_LOGIC;
  signal \^ws_reg_0\ : STD_LOGIC;
  signal counter1 : STD_LOGIC;
  signal counter7 : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \data3[23]_i_2_n_0\ : STD_LOGIC;
  signal \^logic_rst\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_data[8]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of SCK1_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of SCK_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data3[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_data[23]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_data[32]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_data[8]_i_3\ : label is "soft_lutpair2";
begin
  SCK_reg_0 <= \^sck_reg_0\;
  WS_reg_0 <= \^ws_reg_0\;
  logic_rst <= \^logic_rst\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \state__0\(0),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \state__0\(1),
      O => \FSM_sequential_state_reg[0]_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \state__0\(2),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state_reg[0]_1\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \data3[23]_i_2_n_0\,
      I4 => \FSM_sequential_state_reg[0]_2\,
      I5 => \data4_reg[0]\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100100"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \^ws_reg_0\,
      I3 => WS1,
      I4 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^sck_reg_0\,
      I1 => SCK1_reg,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => Q(2),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
SCK1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABFAAB00A80AA8"
    )
        port map (
      I0 => \^sck_reg_0\,
      I1 => SCK1_i_2_n_0,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => SCK1_reg,
      O => SCK_reg_3
    );
SCK1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \state__0\(1),
      I1 => WS1,
      I2 => \^ws_reg_0\,
      O => SCK1_i_2_n_0
    );
SCK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counter1,
      I1 => p_0_in0_in,
      I2 => \^sck_reg_0\,
      O => SCK_i_1_n_0
    );
SCK_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rst,
      I1 => locked,
      O => \^logic_rst\
    );
SCK_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => SCK_i_1_n_0,
      Q => \^sck_reg_0\
    );
WS_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counter7,
      I1 => p_0_in,
      I2 => \^ws_reg_0\,
      O => WS_i_1_n_0
    );
WS_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => WS_i_1_n_0,
      Q => \^ws_reg_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0F4200000042"
    )
        port map (
      I0 => WS1,
      I1 => \^ws_reg_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \data3[23]_i_2_n_0\,
      O => WS1_reg(0)
    );
counter1_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => p_0_in0_in,
      Q => counter1
    );
counter7_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => p_0_in,
      Q => counter7
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => p_0_in0_in,
      I3 => \counter_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => p_0_in0_in,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[4]\,
      O => \p_0_in__0\(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => p_0_in0_in,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter[7]_i_2_n_0\,
      I1 => \counter_reg_n_0_[6]\,
      O => \p_0_in__0\(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter[7]_i_2_n_0\,
      I2 => p_0_in,
      O => \p_0_in__0\(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => p_0_in0_in,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[5]\,
      O => \counter[7]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(1),
      Q => p_0_in0_in
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => \^logic_rst\,
      D => \p_0_in__0\(7),
      Q => p_0_in
    );
\data1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^sck_reg_0\,
      I1 => SCK1_reg,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \data4_reg[0]\,
      O => SCK_reg_1(0)
    );
\data3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \data3[23]_i_2_n_0\,
      I4 => \^logic_rst\,
      I5 => \data4_reg[0]\,
      O => E(0)
    );
\data3[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sck_reg_0\,
      I1 => SCK1_reg,
      O => \data3[23]_i_2_n_0\
    );
\r_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020000000"
    )
        port map (
      I0 => \^sck_reg_0\,
      I1 => SCK1_reg,
      I2 => \r_data1_reg[0]\,
      I3 => \state__0\(1),
      I4 => Q(2),
      I5 => Q(0),
      O => SCK_reg_2
    );
\r_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \state__0\(1),
      I2 => Q(1),
      I3 => Q(0),
      O => \FSM_sequential_state_reg[1]\
    );
\r_data[32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state[2]_i_5_n_0\,
      I2 => \state__0\(1),
      I3 => Q(1),
      O => \cnt_reg[3]_0\
    );
\r_data[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \^sck_reg_0\,
      I2 => SCK1_reg,
      I3 => \r_data1_reg[0]\,
      I4 => Q(2),
      I5 => Q(0),
      O => \FSM_sequential_state_reg[1]_0\
    );
\r_data[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \^sck_reg_0\,
      I2 => SCK1_reg,
      I3 => \r_data1_reg[0]\,
      I4 => Q(2),
      I5 => Q(0),
      O => \FSM_sequential_state_reg[1]_1\
    );
\r_data[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000020"
    )
        port map (
      I0 => \r_data[8]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \state__0\(1),
      I4 => Q(2),
      O => \cnt_reg[3]\
    );
\r_data[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => SCK1_reg,
      I3 => \^sck_reg_0\,
      O => \r_data[8]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_I2S_drive_0_1_I2S_drive is
  port (
    WS_reg : out STD_LOGIC;
    data1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data4 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sample_valid : out STD_LOGIC;
    SCK_reg : out STD_LOGIC;
    MMCM_CLOCK : in STD_LOGIC;
    SD : in STD_LOGIC;
    SD1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    locked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_I2S_drive_0_1_I2S_drive : entity is "I2S_drive";
end core_I2S_drive_0_1_I2S_drive;

architecture STRUCTURE of core_I2S_drive_0_1_I2S_drive is
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal SCK1_reg_n_0 : STD_LOGIC;
  signal WS1 : STD_LOGIC;
  signal \^ws_reg\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \data1[23]_i_2_n_0\ : STD_LOGIC;
  signal logic_rst : STD_LOGIC;
  signal r_data0_in : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \r_data1[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_data1[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[32]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[33]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[34]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[35]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[36]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[37]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[38]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[39]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[40]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[41]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[42]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[43]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[44]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[44]_i_2_n_0\ : STD_LOGIC;
  signal \r_data1[45]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[46]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[47]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[47]_i_2_n_0\ : STD_LOGIC;
  signal \r_data1[47]_i_3_n_0\ : STD_LOGIC;
  signal \r_data1[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[32]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[33]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[34]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[35]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[36]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[37]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[38]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[39]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[40]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[41]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[42]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[43]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[44]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[45]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[46]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[47]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_data1_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[40]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[41]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[41]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[42]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[43]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[43]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[44]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[44]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[45]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[45]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[46]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[46]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[47]_i_4_n_0\ : STD_LOGIC;
  signal \r_data[47]_i_5_n_0\ : STD_LOGIC;
  signal \r_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal uut_n_10 : STD_LOGIC;
  signal uut_n_11 : STD_LOGIC;
  signal uut_n_12 : STD_LOGIC;
  signal uut_n_13 : STD_LOGIC;
  signal uut_n_14 : STD_LOGIC;
  signal uut_n_15 : STD_LOGIC;
  signal uut_n_3 : STD_LOGIC;
  signal uut_n_4 : STD_LOGIC;
  signal uut_n_5 : STD_LOGIC;
  signal uut_n_6 : STD_LOGIC;
  signal uut_n_7 : STD_LOGIC;
  signal uut_n_8 : STD_LOGIC;
  signal uut_n_9 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,read:001,wait_end:010,read1:011,wait_end1:100,";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[5]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_data1[24]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_data1[44]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_data1[47]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_data[41]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_data[43]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_data[44]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_data[45]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_data[46]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_data[47]_i_4\ : label is "soft_lutpair15";
begin
  WS_reg <= \^ws_reg\;
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => uut_n_5,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => uut_n_4,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => uut_n_3,
      Q => \state__0\(2)
    );
SCK1_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => uut_n_15,
      Q => SCK1_reg_n_0
    );
WS1_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \^ws_reg\,
      Q => WS1
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0026"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \cnt_reg_n_0_[0]\,
      O => cnt(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00343400"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      O => cnt(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0034343434000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt[4]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt[4]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[4]\,
      O => cnt(4)
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \cnt[4]_i_2_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C1C001C00000C00"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt[5]_i_3_n_0\,
      I5 => \cnt_reg_n_0_[5]\,
      O => cnt(5)
    );
\cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[3]\,
      O => \cnt[5]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_8,
      CLR => logic_rst,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\data1[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg_n_0_[5]\,
      O => \data1[23]_i_2_n_0\
    );
\data1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[0]\,
      Q => data1(0)
    );
\data1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[10]\,
      Q => data1(10)
    );
\data1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[11]\,
      Q => data1(11)
    );
\data1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[12]\,
      Q => data1(12)
    );
\data1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[13]\,
      Q => data1(13)
    );
\data1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[14]\,
      Q => data1(14)
    );
\data1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[15]\,
      Q => data1(15)
    );
\data1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[16]\,
      Q => data1(16)
    );
\data1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[17]\,
      Q => data1(17)
    );
\data1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[18]\,
      Q => data1(18)
    );
\data1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[19]\,
      Q => data1(19)
    );
\data1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[1]\,
      Q => data1(1)
    );
\data1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[20]\,
      Q => data1(20)
    );
\data1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[21]\,
      Q => data1(21)
    );
\data1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[22]\,
      Q => data1(22)
    );
\data1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[23]\,
      Q => data1(23)
    );
\data1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[2]\,
      Q => data1(2)
    );
\data1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[3]\,
      Q => data1(3)
    );
\data1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[4]\,
      Q => data1(4)
    );
\data1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[5]\,
      Q => data1(5)
    );
\data1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[6]\,
      Q => data1(6)
    );
\data1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[7]\,
      Q => data1(7)
    );
\data1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[8]\,
      Q => data1(8)
    );
\data1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[9]\,
      Q => data1(9)
    );
\data2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[24]\,
      Q => data2(0)
    );
\data2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[34]\,
      Q => data2(10)
    );
\data2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[35]\,
      Q => data2(11)
    );
\data2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[36]\,
      Q => data2(12)
    );
\data2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[37]\,
      Q => data2(13)
    );
\data2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[38]\,
      Q => data2(14)
    );
\data2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[39]\,
      Q => data2(15)
    );
\data2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[40]\,
      Q => data2(16)
    );
\data2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[41]\,
      Q => data2(17)
    );
\data2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[42]\,
      Q => data2(18)
    );
\data2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[43]\,
      Q => data2(19)
    );
\data2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[25]\,
      Q => data2(1)
    );
\data2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[44]\,
      Q => data2(20)
    );
\data2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[45]\,
      Q => data2(21)
    );
\data2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[46]\,
      Q => data2(22)
    );
\data2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[47]\,
      Q => data2(23)
    );
\data2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[26]\,
      Q => data2(2)
    );
\data2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[27]\,
      Q => data2(3)
    );
\data2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[28]\,
      Q => data2(4)
    );
\data2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[29]\,
      Q => data2(5)
    );
\data2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[30]\,
      Q => data2(6)
    );
\data2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[31]\,
      Q => data2(7)
    );
\data2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[32]\,
      Q => data2(8)
    );
\data2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_7,
      CLR => logic_rst,
      D => \r_data_reg_n_0_[33]\,
      Q => data2(9)
    );
\data3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[0]\,
      Q => data3(0),
      R => '0'
    );
\data3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[10]\,
      Q => data3(10),
      R => '0'
    );
\data3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[11]\,
      Q => data3(11),
      R => '0'
    );
\data3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[12]\,
      Q => data3(12),
      R => '0'
    );
\data3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[13]\,
      Q => data3(13),
      R => '0'
    );
\data3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[14]\,
      Q => data3(14),
      R => '0'
    );
\data3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[15]\,
      Q => data3(15),
      R => '0'
    );
\data3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[16]\,
      Q => data3(16),
      R => '0'
    );
\data3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[17]\,
      Q => data3(17),
      R => '0'
    );
\data3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[18]\,
      Q => data3(18),
      R => '0'
    );
\data3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[19]\,
      Q => data3(19),
      R => '0'
    );
\data3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[1]\,
      Q => data3(1),
      R => '0'
    );
\data3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[20]\,
      Q => data3(20),
      R => '0'
    );
\data3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[21]\,
      Q => data3(21),
      R => '0'
    );
\data3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[22]\,
      Q => data3(22),
      R => '0'
    );
\data3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[23]\,
      Q => data3(23),
      R => '0'
    );
\data3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[2]\,
      Q => data3(2),
      R => '0'
    );
\data3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[3]\,
      Q => data3(3),
      R => '0'
    );
\data3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[4]\,
      Q => data3(4),
      R => '0'
    );
\data3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[5]\,
      Q => data3(5),
      R => '0'
    );
\data3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[6]\,
      Q => data3(6),
      R => '0'
    );
\data3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[7]\,
      Q => data3(7),
      R => '0'
    );
\data3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[8]\,
      Q => data3(8),
      R => '0'
    );
\data3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[9]\,
      Q => data3(9),
      R => '0'
    );
\data4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[24]\,
      Q => data4(0),
      R => '0'
    );
\data4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[34]\,
      Q => data4(10),
      R => '0'
    );
\data4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[35]\,
      Q => data4(11),
      R => '0'
    );
\data4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[36]\,
      Q => data4(12),
      R => '0'
    );
\data4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[37]\,
      Q => data4(13),
      R => '0'
    );
\data4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[38]\,
      Q => data4(14),
      R => '0'
    );
\data4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[39]\,
      Q => data4(15),
      R => '0'
    );
\data4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[40]\,
      Q => data4(16),
      R => '0'
    );
\data4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[41]\,
      Q => data4(17),
      R => '0'
    );
\data4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[42]\,
      Q => data4(18),
      R => '0'
    );
\data4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[43]\,
      Q => data4(19),
      R => '0'
    );
\data4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[25]\,
      Q => data4(1),
      R => '0'
    );
\data4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[44]\,
      Q => data4(20),
      R => '0'
    );
\data4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[45]\,
      Q => data4(21),
      R => '0'
    );
\data4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[46]\,
      Q => data4(22),
      R => '0'
    );
\data4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[47]\,
      Q => data4(23),
      R => '0'
    );
\data4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[26]\,
      Q => data4(2),
      R => '0'
    );
\data4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[27]\,
      Q => data4(3),
      R => '0'
    );
\data4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[28]\,
      Q => data4(4),
      R => '0'
    );
\data4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[29]\,
      Q => data4(5),
      R => '0'
    );
\data4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[30]\,
      Q => data4(6),
      R => '0'
    );
\data4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[31]\,
      Q => data4(7),
      R => '0'
    );
\data4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[32]\,
      Q => data4(8),
      R => '0'
    );
\data4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => uut_n_6,
      D => \r_data1_reg_n_0_[33]\,
      Q => data4(9),
      R => '0'
    );
\r_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \r_data1[24]_i_2_n_0\,
      I3 => \r_data[44]_i_2_n_0\,
      I4 => uut_n_10,
      I5 => \r_data1_reg_n_0_[0]\,
      O => \r_data1[0]_i_1_n_0\
    );
\r_data1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_10,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[10]\,
      O => \r_data1[10]_i_1_n_0\
    );
\r_data1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[11]\,
      O => \r_data1[11]_i_1_n_0\
    );
\r_data1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[12]\,
      O => \r_data1[12]_i_1_n_0\
    );
\r_data1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[13]\,
      O => \r_data1[13]_i_1_n_0\
    );
\r_data1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_10,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[14]\,
      O => \r_data1[14]_i_1_n_0\
    );
\r_data1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[15]\,
      O => \r_data1[15]_i_1_n_0\
    );
\r_data1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[16]\,
      O => \r_data1[16]_i_1_n_0\
    );
\r_data1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD1,
      I1 => \state__0\(2),
      I2 => logic_rst,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_11,
      I5 => \r_data1_reg_n_0_[17]\,
      O => \r_data1[17]_i_1_n_0\
    );
\r_data1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[46]_i_2_n_0\,
      I2 => uut_n_11,
      I3 => logic_rst,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data1_reg_n_0_[18]\,
      O => \r_data1[18]_i_1_n_0\
    );
\r_data1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[47]_i_4_n_0\,
      I2 => uut_n_11,
      I3 => logic_rst,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data1_reg_n_0_[19]\,
      O => \r_data1[19]_i_1_n_0\
    );
\r_data1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD1,
      I1 => \state__0\(2),
      I2 => logic_rst,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_9,
      I5 => \r_data1_reg_n_0_[1]\,
      O => \r_data1[1]_i_1_n_0\
    );
\r_data1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[44]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_11,
      I5 => \r_data1_reg_n_0_[20]\,
      O => \r_data1[20]_i_1_n_0\
    );
\r_data1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[45]_i_2_n_0\,
      I2 => logic_rst,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => uut_n_11,
      I5 => \r_data1_reg_n_0_[21]\,
      O => \r_data1[21]_i_1_n_0\
    );
\r_data1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[46]_i_2_n_0\,
      I2 => uut_n_11,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => logic_rst,
      I5 => \r_data1_reg_n_0_[22]\,
      O => \r_data1[22]_i_1_n_0\
    );
\r_data1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[47]_i_4_n_0\,
      I2 => uut_n_11,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => logic_rst,
      I5 => \r_data1_reg_n_0_[23]\,
      O => \r_data1[23]_i_1_n_0\
    );
\r_data1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \r_data1[24]_i_2_n_0\,
      I3 => \r_data[44]_i_2_n_0\,
      I4 => uut_n_12,
      I5 => \r_data1_reg_n_0_[24]\,
      O => \r_data1[24]_i_1_n_0\
    );
\r_data1[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => locked,
      I1 => rst,
      I2 => \cnt_reg_n_0_[2]\,
      O => \r_data1[24]_i_2_n_0\
    );
\r_data1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD1,
      I1 => \state__0\(2),
      I2 => logic_rst,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_13,
      I5 => \r_data1_reg_n_0_[25]\,
      O => \r_data1[25]_i_1_n_0\
    );
\r_data1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[46]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_13,
      I5 => \r_data1_reg_n_0_[26]\,
      O => \r_data1[26]_i_1_n_0\
    );
\r_data1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[47]_i_4_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_13,
      I5 => \r_data1_reg_n_0_[27]\,
      O => \r_data1[27]_i_1_n_0\
    );
\r_data1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[44]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_13,
      I5 => \r_data1_reg_n_0_[28]\,
      O => \r_data1[28]_i_1_n_0\
    );
\r_data1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_13,
      I4 => \r_data[45]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[29]\,
      O => \r_data1[29]_i_1_n_0\
    );
\r_data1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[46]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_9,
      I5 => \r_data1_reg_n_0_[2]\,
      O => \r_data1[2]_i_1_n_0\
    );
\r_data1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_13,
      I4 => \r_data[46]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[30]\,
      O => \r_data1[30]_i_1_n_0\
    );
\r_data1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_13,
      I4 => \r_data[47]_i_4_n_0\,
      I5 => \r_data1_reg_n_0_[31]\,
      O => \r_data1[31]_i_1_n_0\
    );
\r_data1[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_13,
      I4 => \r_data[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[32]\,
      O => \r_data1[32]_i_1_n_0\
    );
\r_data1[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \r_data[41]_i_2_n_0\,
      I3 => logic_rst,
      I4 => uut_n_12,
      I5 => \r_data1_reg_n_0_[33]\,
      O => \r_data1[33]_i_1_n_0\
    );
\r_data1[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_12,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[34]\,
      O => \r_data1[34]_i_1_n_0\
    );
\r_data1[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[35]\,
      O => \r_data1[35]_i_1_n_0\
    );
\r_data1[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[36]\,
      O => \r_data1[36]_i_1_n_0\
    );
\r_data1[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \r_data1[47]_i_3_n_0\,
      I4 => uut_n_12,
      I5 => \r_data1_reg_n_0_[37]\,
      O => \r_data1[37]_i_1_n_0\
    );
\r_data1[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_12,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[38]\,
      O => \r_data1[38]_i_1_n_0\
    );
\r_data1[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[39]\,
      O => \r_data1[39]_i_1_n_0\
    );
\r_data1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[47]_i_4_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_9,
      I5 => \r_data1_reg_n_0_[3]\,
      O => \r_data1[3]_i_1_n_0\
    );
\r_data1[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[40]\,
      O => \r_data1[40]_i_1_n_0\
    );
\r_data1[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \r_data[41]_i_2_n_0\,
      I3 => logic_rst,
      I4 => uut_n_14,
      I5 => \r_data1_reg_n_0_[41]\,
      O => \r_data1[41]_i_1_n_0\
    );
\r_data1[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[42]\,
      O => \r_data1[42]_i_1_n_0\
    );
\r_data1[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \r_data1[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[43]\,
      O => \r_data1[43]_i_1_n_0\
    );
\r_data1[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \r_data1[44]_i_2_n_0\,
      I4 => uut_n_14,
      I5 => \r_data1_reg_n_0_[44]\,
      O => \r_data1[44]_i_1_n_0\
    );
\r_data1[44]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => locked,
      I3 => rst,
      O => \r_data1[44]_i_2_n_0\
    );
\r_data1[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \r_data1[47]_i_3_n_0\,
      I4 => uut_n_14,
      I5 => \r_data1_reg_n_0_[45]\,
      O => \r_data1[45]_i_1_n_0\
    );
\r_data1[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[46]\,
      O => \r_data1[46]_i_1_n_0\
    );
\r_data1[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \r_data1[47]_i_3_n_0\,
      I5 => \r_data1_reg_n_0_[47]\,
      O => \r_data1[47]_i_1_n_0\
    );
\r_data1[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SD1,
      I1 => \state__0\(2),
      O => \r_data1[47]_i_2_n_0\
    );
\r_data1[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => rst,
      I2 => locked,
      I3 => \cnt_reg_n_0_[4]\,
      O => \r_data1[47]_i_3_n_0\
    );
\r_data1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \r_data[44]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => logic_rst,
      I4 => uut_n_9,
      I5 => \r_data1_reg_n_0_[4]\,
      O => \r_data1[4]_i_1_n_0\
    );
\r_data1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_9,
      I4 => \r_data[45]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[5]\,
      O => \r_data1[5]_i_1_n_0\
    );
\r_data1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_9,
      I4 => \r_data[46]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[6]\,
      O => \r_data1[6]_i_1_n_0\
    );
\r_data1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_9,
      I4 => \r_data[47]_i_4_n_0\,
      I5 => \r_data1_reg_n_0_[7]\,
      O => \r_data1[7]_i_1_n_0\
    );
\r_data1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => logic_rst,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => uut_n_9,
      I4 => \r_data[44]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[8]\,
      O => \r_data1[8]_i_1_n_0\
    );
\r_data1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => \r_data1[47]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => uut_n_10,
      I3 => logic_rst,
      I4 => \r_data[41]_i_2_n_0\,
      I5 => \r_data1_reg_n_0_[9]\,
      O => \r_data1[9]_i_1_n_0\
    );
\r_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[0]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[0]\,
      R => '0'
    );
\r_data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[10]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[10]\,
      R => '0'
    );
\r_data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[11]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[11]\,
      R => '0'
    );
\r_data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[12]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[12]\,
      R => '0'
    );
\r_data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[13]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[13]\,
      R => '0'
    );
\r_data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[14]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[14]\,
      R => '0'
    );
\r_data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[15]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[15]\,
      R => '0'
    );
\r_data1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[16]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[16]\,
      R => '0'
    );
\r_data1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[17]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[17]\,
      R => '0'
    );
\r_data1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[18]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[18]\,
      R => '0'
    );
\r_data1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[19]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[19]\,
      R => '0'
    );
\r_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[1]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[1]\,
      R => '0'
    );
\r_data1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[20]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[20]\,
      R => '0'
    );
\r_data1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[21]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[21]\,
      R => '0'
    );
\r_data1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[22]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[22]\,
      R => '0'
    );
\r_data1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[23]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[23]\,
      R => '0'
    );
\r_data1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[24]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[24]\,
      R => '0'
    );
\r_data1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[25]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[25]\,
      R => '0'
    );
\r_data1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[26]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[26]\,
      R => '0'
    );
\r_data1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[27]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[27]\,
      R => '0'
    );
\r_data1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[28]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[28]\,
      R => '0'
    );
\r_data1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[29]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[29]\,
      R => '0'
    );
\r_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[2]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[2]\,
      R => '0'
    );
\r_data1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[30]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[30]\,
      R => '0'
    );
\r_data1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[31]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[31]\,
      R => '0'
    );
\r_data1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[32]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[32]\,
      R => '0'
    );
\r_data1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[33]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[33]\,
      R => '0'
    );
\r_data1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[34]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[34]\,
      R => '0'
    );
\r_data1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[35]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[35]\,
      R => '0'
    );
\r_data1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[36]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[36]\,
      R => '0'
    );
\r_data1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[37]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[37]\,
      R => '0'
    );
\r_data1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[38]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[38]\,
      R => '0'
    );
\r_data1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[39]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[39]\,
      R => '0'
    );
\r_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[3]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[3]\,
      R => '0'
    );
\r_data1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[40]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[40]\,
      R => '0'
    );
\r_data1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[41]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[41]\,
      R => '0'
    );
\r_data1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[42]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[42]\,
      R => '0'
    );
\r_data1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[43]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[43]\,
      R => '0'
    );
\r_data1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[44]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[44]\,
      R => '0'
    );
\r_data1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[45]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[45]\,
      R => '0'
    );
\r_data1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[46]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[46]\,
      R => '0'
    );
\r_data1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[47]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[47]\,
      R => '0'
    );
\r_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[4]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[4]\,
      R => '0'
    );
\r_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[5]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[5]\,
      R => '0'
    );
\r_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[6]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[6]\,
      R => '0'
    );
\r_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[7]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[7]\,
      R => '0'
    );
\r_data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[8]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[8]\,
      R => '0'
    );
\r_data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      D => \r_data1[9]_i_1_n_0\,
      Q => \r_data1_reg_n_0_[9]\,
      R => '0'
    );
\r_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \r_data[44]_i_2_n_0\,
      I4 => uut_n_10,
      I5 => \r_data_reg_n_0_[0]\,
      O => \r_data[0]_i_1_n_0\
    );
\r_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_10,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[10]\,
      O => \r_data[10]_i_1_n_0\
    );
\r_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[11]\,
      O => \r_data[11]_i_1_n_0\
    );
\r_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_10,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[12]\,
      O => \r_data[12]_i_1_n_0\
    );
\r_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[45]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => uut_n_10,
      I5 => \r_data_reg_n_0_[13]\,
      O => \r_data[13]_i_1_n_0\
    );
\r_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[46]_i_2_n_0\,
      I2 => uut_n_10,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[14]\,
      O => \r_data[14]_i_1_n_0\
    );
\r_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[47]_i_4_n_0\,
      I2 => uut_n_10,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[15]\,
      O => \r_data[15]_i_1_n_0\
    );
\r_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[44]_i_2_n_0\,
      I2 => uut_n_10,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[16]\,
      O => \r_data[16]_i_1_n_0\
    );
\r_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_11,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \r_data_reg_n_0_[17]\,
      O => \r_data[17]_i_1_n_0\
    );
\r_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_11,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[18]\,
      O => \r_data[18]_i_1_n_0\
    );
\r_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_11,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[19]\,
      O => \r_data[19]_i_1_n_0\
    );
\r_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_9,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \r_data_reg_n_0_[1]\,
      O => \r_data[1]_i_1_n_0\
    );
\r_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_11,
      I5 => \r_data_reg_n_0_[20]\,
      O => \r_data[20]_i_1_n_0\
    );
\r_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_11,
      I5 => \r_data_reg_n_0_[21]\,
      O => \r_data[21]_i_1_n_0\
    );
\r_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_11,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[22]\,
      O => \r_data[22]_i_1_n_0\
    );
\r_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_11,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[23]\,
      O => \r_data[23]_i_1_n_0\
    );
\r_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \r_data[44]_i_2_n_0\,
      I4 => uut_n_12,
      I5 => \r_data_reg_n_0_[24]\,
      O => \r_data[24]_i_1_n_0\
    );
\r_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_13,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \r_data_reg_n_0_[25]\,
      O => \r_data[25]_i_1_n_0\
    );
\r_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[26]\,
      O => \r_data[26]_i_1_n_0\
    );
\r_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[27]\,
      O => \r_data[27]_i_1_n_0\
    );
\r_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[28]\,
      O => \r_data[28]_i_1_n_0\
    );
\r_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[29]\,
      O => \r_data[29]_i_1_n_0\
    );
\r_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[2]\,
      O => \r_data[2]_i_1_n_0\
    );
\r_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[30]\,
      O => \r_data[30]_i_1_n_0\
    );
\r_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[31]\,
      O => \r_data[31]_i_1_n_0\
    );
\r_data[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_13,
      I5 => \r_data_reg_n_0_[32]\,
      O => \r_data[32]_i_1_n_0\
    );
\r_data[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD,
      I1 => \state__0\(2),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_12,
      I5 => \r_data_reg_n_0_[33]\,
      O => \r_data[33]_i_1_n_0\
    );
\r_data[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => uut_n_12,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[34]\,
      O => \r_data[34]_i_1_n_0\
    );
\r_data[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[35]\,
      O => \r_data[35]_i_1_n_0\
    );
\r_data[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => uut_n_12,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[36]\,
      O => \r_data[36]_i_1_n_0\
    );
\r_data[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[45]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => uut_n_12,
      I5 => \r_data_reg_n_0_[37]\,
      O => \r_data[37]_i_1_n_0\
    );
\r_data[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[46]_i_2_n_0\,
      I2 => uut_n_12,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[38]\,
      O => \r_data[38]_i_1_n_0\
    );
\r_data[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[47]_i_4_n_0\,
      I2 => uut_n_12,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[39]\,
      O => \r_data[39]_i_1_n_0\
    );
\r_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[3]\,
      O => \r_data[3]_i_1_n_0\
    );
\r_data[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[44]_i_2_n_0\,
      I2 => uut_n_12,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[40]\,
      O => \r_data[40]_i_1_n_0\
    );
\r_data[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD,
      I1 => \state__0\(2),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_14,
      I5 => \r_data_reg_n_0_[41]\,
      O => \r_data[41]_i_1_n_0\
    );
\r_data[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \r_data[41]_i_2_n_0\
    );
\r_data[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[42]\,
      O => \r_data[42]_i_1_n_0\
    );
\r_data[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_14,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \r_data[43]_i_2_n_0\,
      I5 => \r_data_reg_n_0_[43]\,
      O => \r_data[43]_i_1_n_0\
    );
\r_data[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => \r_data[43]_i_2_n_0\
    );
\r_data[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[44]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => uut_n_14,
      I5 => \r_data_reg_n_0_[44]\,
      O => \r_data[44]_i_1_n_0\
    );
\r_data[44]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \r_data[44]_i_2_n_0\
    );
\r_data[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \r_data[45]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => uut_n_14,
      I5 => \r_data_reg_n_0_[45]\,
      O => \r_data[45]_i_1_n_0\
    );
\r_data[45]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \r_data[45]_i_2_n_0\
    );
\r_data[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_14,
      I2 => \r_data[46]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[46]\,
      O => \r_data[46]_i_1_n_0\
    );
\r_data[46]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      O => \r_data[46]_i_2_n_0\
    );
\r_data[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => uut_n_14,
      I2 => \r_data[47]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \r_data_reg_n_0_[47]\,
      O => \r_data[47]_i_1_n_0\
    );
\r_data[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SD,
      I1 => \state__0\(2),
      O => r_data0_in(23)
    );
\r_data[47]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \r_data[47]_i_4_n_0\
    );
\r_data[47]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => \r_data[47]_i_5_n_0\
    );
\r_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[4]\,
      O => \r_data[4]_i_1_n_0\
    );
\r_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[5]\,
      O => \r_data[5]_i_1_n_0\
    );
\r_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[6]\,
      O => \r_data[6]_i_1_n_0\
    );
\r_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[7]\,
      O => \r_data[7]_i_1_n_0\
    );
\r_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_data0_in(23),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => uut_n_9,
      I5 => \r_data_reg_n_0_[8]\,
      O => \r_data[8]_i_1_n_0\
    );
\r_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFF00020000"
    )
        port map (
      I0 => SD,
      I1 => \state__0\(2),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \r_data[41]_i_2_n_0\,
      I4 => uut_n_10,
      I5 => \r_data_reg_n_0_[9]\,
      O => \r_data[9]_i_1_n_0\
    );
\r_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[0]_i_1_n_0\,
      Q => \r_data_reg_n_0_[0]\
    );
\r_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[10]_i_1_n_0\,
      Q => \r_data_reg_n_0_[10]\
    );
\r_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[11]_i_1_n_0\,
      Q => \r_data_reg_n_0_[11]\
    );
\r_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[12]_i_1_n_0\,
      Q => \r_data_reg_n_0_[12]\
    );
\r_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[13]_i_1_n_0\,
      Q => \r_data_reg_n_0_[13]\
    );
\r_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[14]_i_1_n_0\,
      Q => \r_data_reg_n_0_[14]\
    );
\r_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[15]_i_1_n_0\,
      Q => \r_data_reg_n_0_[15]\
    );
\r_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[16]_i_1_n_0\,
      Q => \r_data_reg_n_0_[16]\
    );
\r_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[17]_i_1_n_0\,
      Q => \r_data_reg_n_0_[17]\
    );
\r_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[18]_i_1_n_0\,
      Q => \r_data_reg_n_0_[18]\
    );
\r_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[19]_i_1_n_0\,
      Q => \r_data_reg_n_0_[19]\
    );
\r_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[1]_i_1_n_0\,
      Q => \r_data_reg_n_0_[1]\
    );
\r_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[20]_i_1_n_0\,
      Q => \r_data_reg_n_0_[20]\
    );
\r_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[21]_i_1_n_0\,
      Q => \r_data_reg_n_0_[21]\
    );
\r_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[22]_i_1_n_0\,
      Q => \r_data_reg_n_0_[22]\
    );
\r_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[23]_i_1_n_0\,
      Q => \r_data_reg_n_0_[23]\
    );
\r_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[24]_i_1_n_0\,
      Q => \r_data_reg_n_0_[24]\
    );
\r_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[25]_i_1_n_0\,
      Q => \r_data_reg_n_0_[25]\
    );
\r_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[26]_i_1_n_0\,
      Q => \r_data_reg_n_0_[26]\
    );
\r_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[27]_i_1_n_0\,
      Q => \r_data_reg_n_0_[27]\
    );
\r_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[28]_i_1_n_0\,
      Q => \r_data_reg_n_0_[28]\
    );
\r_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[29]_i_1_n_0\,
      Q => \r_data_reg_n_0_[29]\
    );
\r_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[2]_i_1_n_0\,
      Q => \r_data_reg_n_0_[2]\
    );
\r_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[30]_i_1_n_0\,
      Q => \r_data_reg_n_0_[30]\
    );
\r_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[31]_i_1_n_0\,
      Q => \r_data_reg_n_0_[31]\
    );
\r_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[32]_i_1_n_0\,
      Q => \r_data_reg_n_0_[32]\
    );
\r_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[33]_i_1_n_0\,
      Q => \r_data_reg_n_0_[33]\
    );
\r_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[34]_i_1_n_0\,
      Q => \r_data_reg_n_0_[34]\
    );
\r_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[35]_i_1_n_0\,
      Q => \r_data_reg_n_0_[35]\
    );
\r_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[36]_i_1_n_0\,
      Q => \r_data_reg_n_0_[36]\
    );
\r_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[37]_i_1_n_0\,
      Q => \r_data_reg_n_0_[37]\
    );
\r_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[38]_i_1_n_0\,
      Q => \r_data_reg_n_0_[38]\
    );
\r_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[39]_i_1_n_0\,
      Q => \r_data_reg_n_0_[39]\
    );
\r_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[3]_i_1_n_0\,
      Q => \r_data_reg_n_0_[3]\
    );
\r_data_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[40]_i_1_n_0\,
      Q => \r_data_reg_n_0_[40]\
    );
\r_data_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[41]_i_1_n_0\,
      Q => \r_data_reg_n_0_[41]\
    );
\r_data_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[42]_i_1_n_0\,
      Q => \r_data_reg_n_0_[42]\
    );
\r_data_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[43]_i_1_n_0\,
      Q => \r_data_reg_n_0_[43]\
    );
\r_data_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[44]_i_1_n_0\,
      Q => \r_data_reg_n_0_[44]\
    );
\r_data_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[45]_i_1_n_0\,
      Q => \r_data_reg_n_0_[45]\
    );
\r_data_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[46]_i_1_n_0\,
      Q => \r_data_reg_n_0_[46]\
    );
\r_data_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[47]_i_1_n_0\,
      Q => \r_data_reg_n_0_[47]\
    );
\r_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[4]_i_1_n_0\,
      Q => \r_data_reg_n_0_[4]\
    );
\r_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[5]_i_1_n_0\,
      Q => \r_data_reg_n_0_[5]\
    );
\r_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[6]_i_1_n_0\,
      Q => \r_data_reg_n_0_[6]\
    );
\r_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[7]_i_1_n_0\,
      Q => \r_data_reg_n_0_[7]\
    );
\r_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[8]_i_1_n_0\,
      Q => \r_data_reg_n_0_[8]\
    );
\r_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => \r_data[9]_i_1_n_0\,
      Q => \r_data_reg_n_0_[9]\
    );
sample_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => MMCM_CLOCK,
      CE => '1',
      CLR => logic_rst,
      D => uut_n_7,
      Q => sample_valid
    );
uut: entity work.core_I2S_drive_0_1_I2C_clock
     port map (
      E(0) => uut_n_6,
      \FSM_sequential_state_reg[0]\ => uut_n_3,
      \FSM_sequential_state_reg[0]_0\ => uut_n_4,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state[2]_i_4_n_0\,
      \FSM_sequential_state_reg[0]_2\ => \FSM_sequential_state[2]_i_6_n_0\,
      \FSM_sequential_state_reg[1]\ => uut_n_11,
      \FSM_sequential_state_reg[1]_0\ => uut_n_12,
      \FSM_sequential_state_reg[1]_1\ => uut_n_14,
      \FSM_sequential_state_reg[2]\ => uut_n_5,
      MMCM_CLOCK => MMCM_CLOCK,
      Q(2) => \cnt_reg_n_0_[5]\,
      Q(1) => \cnt_reg_n_0_[4]\,
      Q(0) => \cnt_reg_n_0_[3]\,
      SCK1_reg => SCK1_reg_n_0,
      SCK_reg_0 => SCK_reg,
      SCK_reg_1(0) => uut_n_7,
      SCK_reg_2 => uut_n_10,
      SCK_reg_3 => uut_n_15,
      WS1 => WS1,
      WS1_reg(0) => uut_n_8,
      WS_reg_0 => \^ws_reg\,
      \cnt_reg[3]\ => uut_n_9,
      \cnt_reg[3]_0\ => uut_n_13,
      \data4_reg[0]\ => \data1[23]_i_2_n_0\,
      locked => locked,
      logic_rst => logic_rst,
      \r_data1_reg[0]\ => \r_data[47]_i_5_n_0\,
      rst => rst,
      \state__0\(2 downto 0) => \state__0\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_I2S_drive_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_I2S_drive_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_I2S_drive_0_1 : entity is "core_I2S_drive_0_1,I2S_drive,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_I2S_drive_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_I2S_drive_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_I2S_drive_0_1 : entity is "I2S_drive,Vivado 2018.3";
end core_I2S_drive_0_1;

architecture STRUCTURE of core_I2S_drive_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of MMCM_CLOCK : signal is "xilinx.com:signal:clock:1.0 MMCM_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of MMCM_CLOCK : signal is "XIL_INTERFACENAME MMCM_CLOCK, ASSOCIATED_RESET rst, FREQ_HZ 11289602, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.core_I2S_drive_0_1_I2S_drive
     port map (
      MMCM_CLOCK => MMCM_CLOCK,
      SCK_reg => SCK,
      SD => SD,
      SD1 => SD1,
      WS_reg => WS,
      data1(23 downto 0) => data1(23 downto 0),
      data2(23 downto 0) => data2(23 downto 0),
      data3(23 downto 0) => data3(23 downto 0),
      data4(23 downto 0) => data4(23 downto 0),
      locked => locked,
      rst => rst,
      sample_valid => sample_valid
    );
end STRUCTURE;
