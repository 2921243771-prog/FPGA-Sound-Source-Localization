-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 18:52:56 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_Lag_To_PS_0_0/core_Lag_To_PS_0_0_sim_netlist.vhdl
-- Design      : core_Lag_To_PS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_Lag_To_PS_0_0_Lag_To_PS is
  port (
    gpio_word0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_word1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_word2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    \gpio_word1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gpio_word2_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lag_valid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_error : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_Lag_To_PS_0_0_Lag_To_PS : entity is "Lag_To_PS";
end core_Lag_To_PS_0_0_Lag_To_PS;

architecture STRUCTURE of core_Lag_To_PS_0_0_Lag_To_PS is
  signal \^gpio_status\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gpio_word0[31]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number[3]_i_2_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_number_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_sequence_number_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  gpio_status(31 downto 0) <= \^gpio_status\(31 downto 0);
error_latched_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => frame_error,
      Q => \^gpio_status\(7)
    );
\gpio_word0[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \gpio_word0[31]_i_1_n_0\
    );
\gpio_word0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(0),
      Q => gpio_word0(0)
    );
\gpio_word0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(10),
      Q => gpio_word0(10)
    );
\gpio_word0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(11),
      Q => gpio_word0(11)
    );
\gpio_word0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(12),
      Q => gpio_word0(12)
    );
\gpio_word0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(13),
      Q => gpio_word0(13)
    );
\gpio_word0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(14),
      Q => gpio_word0(14)
    );
\gpio_word0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(15),
      Q => gpio_word0(15)
    );
\gpio_word0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(16),
      Q => gpio_word0(16)
    );
\gpio_word0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(17),
      Q => gpio_word0(17)
    );
\gpio_word0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(18),
      Q => gpio_word0(18)
    );
\gpio_word0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(19),
      Q => gpio_word0(19)
    );
\gpio_word0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(1),
      Q => gpio_word0(1)
    );
\gpio_word0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(20),
      Q => gpio_word0(20)
    );
\gpio_word0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(21),
      Q => gpio_word0(21)
    );
\gpio_word0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(22),
      Q => gpio_word0(22)
    );
\gpio_word0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(23),
      Q => gpio_word0(23)
    );
\gpio_word0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(24),
      Q => gpio_word0(24)
    );
\gpio_word0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(25),
      Q => gpio_word0(25)
    );
\gpio_word0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(26),
      Q => gpio_word0(26)
    );
\gpio_word0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(27),
      Q => gpio_word0(27)
    );
\gpio_word0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(28),
      Q => gpio_word0(28)
    );
\gpio_word0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(29),
      Q => gpio_word0(29)
    );
\gpio_word0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(2),
      Q => gpio_word0(2)
    );
\gpio_word0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(30),
      Q => gpio_word0(30)
    );
\gpio_word0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(31),
      Q => gpio_word0(31)
    );
\gpio_word0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(3),
      Q => gpio_word0(3)
    );
\gpio_word0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(4),
      Q => gpio_word0(4)
    );
\gpio_word0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(5),
      Q => gpio_word0(5)
    );
\gpio_word0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(6),
      Q => gpio_word0(6)
    );
\gpio_word0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(7),
      Q => gpio_word0(7)
    );
\gpio_word0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(8),
      Q => gpio_word0(8)
    );
\gpio_word0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => D(9),
      Q => gpio_word0(9)
    );
\gpio_word1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(0),
      Q => gpio_word1(0)
    );
\gpio_word1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(10),
      Q => gpio_word1(10)
    );
\gpio_word1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(11),
      Q => gpio_word1(11)
    );
\gpio_word1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(12),
      Q => gpio_word1(12)
    );
\gpio_word1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(13),
      Q => gpio_word1(13)
    );
\gpio_word1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(14),
      Q => gpio_word1(14)
    );
\gpio_word1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(15),
      Q => gpio_word1(15)
    );
\gpio_word1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(16),
      Q => gpio_word1(16)
    );
\gpio_word1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(17),
      Q => gpio_word1(17)
    );
\gpio_word1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(18),
      Q => gpio_word1(18)
    );
\gpio_word1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(19),
      Q => gpio_word1(19)
    );
\gpio_word1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(1),
      Q => gpio_word1(1)
    );
\gpio_word1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(20),
      Q => gpio_word1(20)
    );
\gpio_word1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(21),
      Q => gpio_word1(21)
    );
\gpio_word1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(22),
      Q => gpio_word1(22)
    );
\gpio_word1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(23),
      Q => gpio_word1(23)
    );
\gpio_word1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(24),
      Q => gpio_word1(24)
    );
\gpio_word1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(25),
      Q => gpio_word1(25)
    );
\gpio_word1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(26),
      Q => gpio_word1(26)
    );
\gpio_word1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(27),
      Q => gpio_word1(27)
    );
\gpio_word1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(28),
      Q => gpio_word1(28)
    );
\gpio_word1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(29),
      Q => gpio_word1(29)
    );
\gpio_word1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(2),
      Q => gpio_word1(2)
    );
\gpio_word1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(30),
      Q => gpio_word1(30)
    );
\gpio_word1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(31),
      Q => gpio_word1(31)
    );
\gpio_word1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(3),
      Q => gpio_word1(3)
    );
\gpio_word1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(4),
      Q => gpio_word1(4)
    );
\gpio_word1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(5),
      Q => gpio_word1(5)
    );
\gpio_word1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(6),
      Q => gpio_word1(6)
    );
\gpio_word1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(7),
      Q => gpio_word1(7)
    );
\gpio_word1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(8),
      Q => gpio_word1(8)
    );
\gpio_word1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word1_reg[31]_0\(9),
      Q => gpio_word1(9)
    );
\gpio_word2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(0),
      Q => gpio_word2(0)
    );
\gpio_word2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(10),
      Q => gpio_word2(10)
    );
\gpio_word2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(11),
      Q => gpio_word2(11)
    );
\gpio_word2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(12),
      Q => gpio_word2(12)
    );
\gpio_word2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(13),
      Q => gpio_word2(13)
    );
\gpio_word2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(14),
      Q => gpio_word2(14)
    );
\gpio_word2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(15),
      Q => gpio_word2(15)
    );
\gpio_word2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(16),
      Q => gpio_word2(16)
    );
\gpio_word2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(17),
      Q => gpio_word2(17)
    );
\gpio_word2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(18),
      Q => gpio_word2(18)
    );
\gpio_word2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(19),
      Q => gpio_word2(19)
    );
\gpio_word2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(1),
      Q => gpio_word2(1)
    );
\gpio_word2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(20),
      Q => gpio_word2(20)
    );
\gpio_word2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(21),
      Q => gpio_word2(21)
    );
\gpio_word2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(22),
      Q => gpio_word2(22)
    );
\gpio_word2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(23),
      Q => gpio_word2(23)
    );
\gpio_word2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(24),
      Q => gpio_word2(24)
    );
\gpio_word2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(25),
      Q => gpio_word2(25)
    );
\gpio_word2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(26),
      Q => gpio_word2(26)
    );
\gpio_word2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(27),
      Q => gpio_word2(27)
    );
\gpio_word2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(28),
      Q => gpio_word2(28)
    );
\gpio_word2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(29),
      Q => gpio_word2(29)
    );
\gpio_word2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(2),
      Q => gpio_word2(2)
    );
\gpio_word2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(30),
      Q => gpio_word2(30)
    );
\gpio_word2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(31),
      Q => gpio_word2(31)
    );
\gpio_word2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(3),
      Q => gpio_word2(3)
    );
\gpio_word2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(4),
      Q => gpio_word2(4)
    );
\gpio_word2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(5),
      Q => gpio_word2(5)
    );
\gpio_word2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(6),
      Q => gpio_word2(6)
    );
\gpio_word2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(7),
      Q => gpio_word2(7)
    );
\gpio_word2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(8),
      Q => gpio_word2(8)
    );
\gpio_word2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \gpio_word2_reg[31]_0\(9),
      Q => gpio_word2(9)
    );
have_result_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => done,
      Q => \^gpio_status\(6)
    );
\sequence_number[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gpio_status\(8),
      O => \sequence_number[3]_i_2_n_0\
    );
\sequence_number_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[3]_i_1_n_7\,
      Q => \^gpio_status\(8)
    );
\sequence_number_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[11]_i_1_n_5\,
      Q => \^gpio_status\(18)
    );
\sequence_number_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[11]_i_1_n_4\,
      Q => \^gpio_status\(19)
    );
\sequence_number_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_number_reg[7]_i_1_n_0\,
      CO(3) => \sequence_number_reg[11]_i_1_n_0\,
      CO(2) => \sequence_number_reg[11]_i_1_n_1\,
      CO(1) => \sequence_number_reg[11]_i_1_n_2\,
      CO(0) => \sequence_number_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_number_reg[11]_i_1_n_4\,
      O(2) => \sequence_number_reg[11]_i_1_n_5\,
      O(1) => \sequence_number_reg[11]_i_1_n_6\,
      O(0) => \sequence_number_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^gpio_status\(19 downto 16)
    );
\sequence_number_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[15]_i_1_n_7\,
      Q => \^gpio_status\(20)
    );
\sequence_number_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[15]_i_1_n_6\,
      Q => \^gpio_status\(21)
    );
\sequence_number_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[15]_i_1_n_5\,
      Q => \^gpio_status\(22)
    );
\sequence_number_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[15]_i_1_n_4\,
      Q => \^gpio_status\(23)
    );
\sequence_number_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_number_reg[11]_i_1_n_0\,
      CO(3) => \sequence_number_reg[15]_i_1_n_0\,
      CO(2) => \sequence_number_reg[15]_i_1_n_1\,
      CO(1) => \sequence_number_reg[15]_i_1_n_2\,
      CO(0) => \sequence_number_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_number_reg[15]_i_1_n_4\,
      O(2) => \sequence_number_reg[15]_i_1_n_5\,
      O(1) => \sequence_number_reg[15]_i_1_n_6\,
      O(0) => \sequence_number_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^gpio_status\(23 downto 20)
    );
\sequence_number_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[19]_i_1_n_7\,
      Q => \^gpio_status\(24)
    );
\sequence_number_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[19]_i_1_n_6\,
      Q => \^gpio_status\(25)
    );
\sequence_number_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[19]_i_1_n_5\,
      Q => \^gpio_status\(26)
    );
\sequence_number_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[19]_i_1_n_4\,
      Q => \^gpio_status\(27)
    );
\sequence_number_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_number_reg[15]_i_1_n_0\,
      CO(3) => \sequence_number_reg[19]_i_1_n_0\,
      CO(2) => \sequence_number_reg[19]_i_1_n_1\,
      CO(1) => \sequence_number_reg[19]_i_1_n_2\,
      CO(0) => \sequence_number_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_number_reg[19]_i_1_n_4\,
      O(2) => \sequence_number_reg[19]_i_1_n_5\,
      O(1) => \sequence_number_reg[19]_i_1_n_6\,
      O(0) => \sequence_number_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^gpio_status\(27 downto 24)
    );
\sequence_number_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[3]_i_1_n_6\,
      Q => \^gpio_status\(9)
    );
\sequence_number_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[23]_i_1_n_7\,
      Q => \^gpio_status\(28)
    );
\sequence_number_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[23]_i_1_n_6\,
      Q => \^gpio_status\(29)
    );
\sequence_number_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[23]_i_1_n_5\,
      Q => \^gpio_status\(30)
    );
\sequence_number_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[23]_i_1_n_4\,
      Q => \^gpio_status\(31)
    );
\sequence_number_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_number_reg[19]_i_1_n_0\,
      CO(3) => \NLW_sequence_number_reg[23]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sequence_number_reg[23]_i_1_n_1\,
      CO(1) => \sequence_number_reg[23]_i_1_n_2\,
      CO(0) => \sequence_number_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_number_reg[23]_i_1_n_4\,
      O(2) => \sequence_number_reg[23]_i_1_n_5\,
      O(1) => \sequence_number_reg[23]_i_1_n_6\,
      O(0) => \sequence_number_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^gpio_status\(31 downto 28)
    );
\sequence_number_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[3]_i_1_n_5\,
      Q => \^gpio_status\(10)
    );
\sequence_number_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[3]_i_1_n_4\,
      Q => \^gpio_status\(11)
    );
\sequence_number_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sequence_number_reg[3]_i_1_n_0\,
      CO(2) => \sequence_number_reg[3]_i_1_n_1\,
      CO(1) => \sequence_number_reg[3]_i_1_n_2\,
      CO(0) => \sequence_number_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sequence_number_reg[3]_i_1_n_4\,
      O(2) => \sequence_number_reg[3]_i_1_n_5\,
      O(1) => \sequence_number_reg[3]_i_1_n_6\,
      O(0) => \sequence_number_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^gpio_status\(11 downto 9),
      S(0) => \sequence_number[3]_i_2_n_0\
    );
\sequence_number_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[7]_i_1_n_7\,
      Q => \^gpio_status\(12)
    );
\sequence_number_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[7]_i_1_n_6\,
      Q => \^gpio_status\(13)
    );
\sequence_number_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[7]_i_1_n_5\,
      Q => \^gpio_status\(14)
    );
\sequence_number_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[7]_i_1_n_4\,
      Q => \^gpio_status\(15)
    );
\sequence_number_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_number_reg[3]_i_1_n_0\,
      CO(3) => \sequence_number_reg[7]_i_1_n_0\,
      CO(2) => \sequence_number_reg[7]_i_1_n_1\,
      CO(1) => \sequence_number_reg[7]_i_1_n_2\,
      CO(0) => \sequence_number_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_number_reg[7]_i_1_n_4\,
      O(2) => \sequence_number_reg[7]_i_1_n_5\,
      O(1) => \sequence_number_reg[7]_i_1_n_6\,
      O(0) => \sequence_number_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^gpio_status\(15 downto 12)
    );
\sequence_number_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[11]_i_1_n_7\,
      Q => \^gpio_status\(16)
    );
\sequence_number_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => \sequence_number_reg[11]_i_1_n_6\,
      Q => \^gpio_status\(17)
    );
\valid_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(0),
      Q => \^gpio_status\(0)
    );
\valid_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(1),
      Q => \^gpio_status\(1)
    );
\valid_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(2),
      Q => \^gpio_status\(2)
    );
\valid_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(3),
      Q => \^gpio_status\(3)
    );
\valid_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(4),
      Q => \^gpio_status\(4)
    );
\valid_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => done,
      CLR => \gpio_word0[31]_i_1_n_0\,
      D => lag_valid(5),
      Q => \^gpio_status\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_Lag_To_PS_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_Lag_To_PS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_Lag_To_PS_0_0 : entity is "core_Lag_To_PS_0_0,Lag_To_PS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_Lag_To_PS_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_Lag_To_PS_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_Lag_To_PS_0_0 : entity is "Lag_To_PS,Vivado 2018.3";
end core_Lag_To_PS_0_0;

architecture STRUCTURE of core_Lag_To_PS_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.core_Lag_To_PS_0_0_Lag_To_PS
     port map (
      D(31 downto 16) => lag13(15 downto 0),
      D(15 downto 0) => lag12(15 downto 0),
      clk => clk,
      done => done,
      frame_error => frame_error,
      gpio_status(31 downto 0) => gpio_status(31 downto 0),
      gpio_word0(31 downto 0) => gpio_word0(31 downto 0),
      gpio_word1(31 downto 0) => gpio_word1(31 downto 0),
      \gpio_word1_reg[31]_0\(31 downto 16) => lag23(15 downto 0),
      \gpio_word1_reg[31]_0\(15 downto 0) => lag14(15 downto 0),
      gpio_word2(31 downto 0) => gpio_word2(31 downto 0),
      \gpio_word2_reg[31]_0\(31 downto 16) => lag34(15 downto 0),
      \gpio_word2_reg[31]_0\(15 downto 0) => lag24(15 downto 0),
      lag_valid(5 downto 0) => lag_valid(5 downto 0),
      rst => rst
    );
end STRUCTURE;
