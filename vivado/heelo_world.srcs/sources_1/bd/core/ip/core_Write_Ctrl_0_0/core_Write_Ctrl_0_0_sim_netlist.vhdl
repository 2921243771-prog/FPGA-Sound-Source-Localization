-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 17:20:19 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Write_Ctrl_0_0/core_Write_Ctrl_0_0_sim_netlist.vhdl
-- Design      : core_Write_Ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_Write_Ctrl_0_0_Write_Ctrl is
  port (
    wna : out STD_LOGIC;
    read_toggle : out STD_LOGIC;
    Write_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Ram_en : out STD_LOGIC;
    Ram_ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_Write_Ctrl_0_0_Write_Ctrl : entity is "Write_Ctrl";
end core_Write_Ctrl_0_0_Write_Ctrl;

architecture STRUCTURE of core_Write_Ctrl_0_0_Write_Ctrl is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^ram_en\ : STD_LOGIC;
  signal Ram_en_i_1_n_0 : STD_LOGIC;
  signal \^ram_ready\ : STD_LOGIC;
  signal Ram_ready_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_2_n_0\ : STD_LOGIC;
  signal \count[10]_i_3_n_0\ : STD_LOGIC;
  signal \count[10]_i_4_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal ena_i_1_n_0 : STD_LOGIC;
  signal full_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of full_meta : signal is "true";
  signal full_seen_low_i_1_n_0 : STD_LOGIC;
  signal full_seen_low_reg_n_0 : STD_LOGIC;
  signal full_sync : STD_LOGIC;
  attribute async_reg of full_sync : signal is "true";
  signal p_0_in : STD_LOGIC;
  signal \^read_toggle\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "WAIT_FULL:001,WRITE_WORD:010,FINISH:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "WAIT_FULL:001,WRITE_WORD:010,FINISH:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "WAIT_FULL:001,WRITE_WORD:010,FINISH:100,";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[10]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[10]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair0";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of full_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of full_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of full_sync_reg : label is std.standard.true;
  attribute KEEP of full_sync_reg : label is "yes";
begin
  Ram_en <= \^ram_en\;
  Ram_ready <= \^ram_ready\;
  read_toggle <= \^read_toggle\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAABFAABFAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => full_seen_low_reg_n_0,
      I5 => full_sync,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FA10FA10FA10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => full_seen_low_reg_n_0,
      I5 => full_sync,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0E0E0E0E0E0E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => full_seen_low_reg_n_0,
      I5 => full_sync,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_3_n_0\,
      I1 => \count[7]_i_2_n_0\,
      I2 => count(9),
      I3 => count(8),
      I4 => count(10),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count(5),
      I1 => count(4),
      I2 => count(7),
      I3 => count(6),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => ena_i_1_n_0,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
Ram_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => full_seen_low_reg_n_0,
      I1 => full_sync,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \^ram_en\,
      O => Ram_en_i_1_n_0
    );
Ram_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => Ram_en_i_1_n_0,
      Q => \^ram_en\
    );
Ram_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => full_sync,
      I2 => full_seen_low_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ram_ready\,
      O => Ram_ready_i_1_n_0
    );
Ram_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => Ram_ready_i_1_n_0,
      Q => \^ram_ready\
    );
\Write_addra_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(0),
      Q => Write_addra(0)
    );
\Write_addra_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(10),
      Q => Write_addra(10)
    );
\Write_addra_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(1),
      Q => Write_addra(1)
    );
\Write_addra_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(2),
      Q => Write_addra(2)
    );
\Write_addra_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(3),
      Q => Write_addra(3)
    );
\Write_addra_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(4),
      Q => Write_addra(4)
    );
\Write_addra_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(5),
      Q => Write_addra(5)
    );
\Write_addra_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(6),
      Q => Write_addra(6)
    );
\Write_addra_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(7),
      Q => Write_addra(7)
    );
\Write_addra_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(8),
      Q => Write_addra(8)
    );
\Write_addra_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => count(9),
      Q => Write_addra(9)
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFAAAAAAAA"
    )
        port map (
      I0 => \count[10]_i_3_n_0\,
      I1 => \count[10]_i_4_n_0\,
      I2 => count(9),
      I3 => count(8),
      I4 => count(10),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \count[10]_i_1_n_0\
    );
\count[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \count[10]_i_4_n_0\,
      I2 => count(8),
      I3 => count(9),
      I4 => count(10),
      O => \count[10]_i_2_n_0\
    );
\count[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => full_sync,
      I2 => full_seen_low_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \count[10]_i_3_n_0\
    );
\count[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => count(6),
      I2 => count(7),
      I3 => count(4),
      I4 => count(5),
      O => \count[10]_i_4_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(0),
      I2 => count(1),
      I3 => count(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => count(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(3),
      I4 => count(2),
      I5 => count(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \count[7]_i_2_n_0\,
      I2 => count(4),
      I3 => count(5),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(5),
      I2 => count(4),
      I3 => \count[7]_i_2_n_0\,
      I4 => count(6),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF400000000000"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => count(4),
      I2 => count(5),
      I3 => count(6),
      I4 => count(7),
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \count[7]_i_1_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(3),
      I3 => count(2),
      O => \count[7]_i_2_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \count[10]_i_4_n_0\,
      I2 => count(8),
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => count(8),
      I2 => \count[10]_i_4_n_0\,
      I3 => count(9),
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[0]_i_1_n_0\,
      Q => count(0)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[10]_i_2_n_0\,
      Q => count(10)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[1]_i_1_n_0\,
      Q => count(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[2]_i_1_n_0\,
      Q => count(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[3]_i_1_n_0\,
      Q => count(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[4]_i_1_n_0\,
      Q => count(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[5]_i_1_n_0\,
      Q => count(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[6]_i_1_n_0\,
      Q => count(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[7]_i_1_n_0\,
      Q => count(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[8]_i_1_n_0\,
      Q => count(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[10]_i_1_n_0\,
      CLR => ena_i_1_n_0,
      D => \count[9]_i_1_n_0\,
      Q => count(9)
    );
ena_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => ena_i_1_n_0
    );
ena_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => wna
    );
full_meta_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => fifo_full,
      PRE => ena_i_1_n_0,
      Q => full_meta
    );
full_seen_low_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => full_seen_low_reg_n_0,
      I2 => full_sync,
      O => full_seen_low_i_1_n_0
    );
full_seen_low_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ena_i_1_n_0,
      D => full_seen_low_i_1_n_0,
      Q => full_seen_low_reg_n_0
    );
full_sync_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => full_meta,
      PRE => ena_i_1_n_0,
      Q => full_sync
    );
read_toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_toggle\,
      O => p_0_in
    );
read_toggle_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => ena_i_1_n_0,
      D => p_0_in,
      Q => \^read_toggle\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_Write_Ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_Write_Ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_Write_Ctrl_0_0 : entity is "core_Write_Ctrl_0_0,Write_Ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_Write_Ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_Write_Ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_Write_Ctrl_0_0 : entity is "Write_Ctrl,Vivado 2018.3";
end core_Write_Ctrl_0_0;

architecture STRUCTURE of core_Write_Ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^write_addra\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^data1\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data2\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data3\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data4\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^wna\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  Write_addra(11) <= \<const0>\;
  Write_addra(10 downto 0) <= \^write_addra\(10 downto 0);
  \^data1\(23 downto 0) <= data1(23 downto 0);
  \^data2\(23 downto 0) <= data2(23 downto 0);
  \^data3\(23 downto 0) <= data3(23 downto 0);
  \^data4\(23 downto 0) <= data4(23 downto 0);
  data(95 downto 72) <= \^data4\(23 downto 0);
  data(71 downto 48) <= \^data3\(23 downto 0);
  data(47 downto 24) <= \^data2\(23 downto 0);
  data(23 downto 0) <= \^data1\(23 downto 0);
  ena <= \^wna\;
  wna <= \^wna\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.core_Write_Ctrl_0_0_Write_Ctrl
     port map (
      Ram_en => Ram_en,
      Ram_ready => Ram_ready,
      Write_addra(10 downto 0) => \^write_addra\(10 downto 0),
      clk => clk,
      fifo_full => fifo_full,
      read_toggle => read_toggle,
      rst => rst,
      wna => \^wna\
    );
end STRUCTURE;
