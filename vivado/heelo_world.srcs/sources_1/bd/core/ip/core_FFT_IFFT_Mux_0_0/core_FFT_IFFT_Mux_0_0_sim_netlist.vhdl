-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Oct 21 16:28:26 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_FFT_IFFT_Mux_0_0/core_FFT_IFFT_Mux_0_0_sim_netlist.vhdl
-- Design      : core_FFT_IFFT_Mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux is
  port (
    core_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    core_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    inverse_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    forward_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    select_ifft : in STD_LOGIC;
    inverse_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    forward_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux : entity is "FFT_IFFT_Mux";
end core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux;

architecture STRUCTURE of core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \core_config_tdata[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \core_config_tdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \core_config_tdata[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \core_config_tdata[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \core_config_tdata[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \core_config_tdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \core_config_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \core_config_tdata[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \core_data_tdata[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \core_data_tdata[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \core_data_tdata[11]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \core_data_tdata[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \core_data_tdata[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \core_data_tdata[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \core_data_tdata[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \core_data_tdata[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \core_data_tdata[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \core_data_tdata[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \core_data_tdata[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \core_data_tdata[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \core_data_tdata[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \core_data_tdata[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \core_data_tdata[22]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \core_data_tdata[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \core_data_tdata[24]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \core_data_tdata[25]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \core_data_tdata[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \core_data_tdata[27]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \core_data_tdata[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \core_data_tdata[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \core_data_tdata[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \core_data_tdata[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \core_data_tdata[31]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \core_data_tdata[32]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \core_data_tdata[33]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \core_data_tdata[34]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \core_data_tdata[35]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \core_data_tdata[36]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \core_data_tdata[37]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \core_data_tdata[38]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \core_data_tdata[39]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \core_data_tdata[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \core_data_tdata[40]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \core_data_tdata[41]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \core_data_tdata[42]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \core_data_tdata[43]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \core_data_tdata[44]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \core_data_tdata[45]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \core_data_tdata[46]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \core_data_tdata[47]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \core_data_tdata[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \core_data_tdata[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \core_data_tdata[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \core_data_tdata[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \core_data_tdata[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \core_data_tdata[9]_INST_0\ : label is "soft_lutpair8";
begin
\core_config_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(0),
      I1 => forward_config_tdata(0),
      I2 => select_ifft,
      O => core_config_tdata(0)
    );
\core_config_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(1),
      I1 => forward_config_tdata(1),
      I2 => select_ifft,
      O => core_config_tdata(1)
    );
\core_config_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(2),
      I1 => forward_config_tdata(2),
      I2 => select_ifft,
      O => core_config_tdata(2)
    );
\core_config_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(3),
      I1 => forward_config_tdata(3),
      I2 => select_ifft,
      O => core_config_tdata(3)
    );
\core_config_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(4),
      I1 => forward_config_tdata(4),
      I2 => select_ifft,
      O => core_config_tdata(4)
    );
\core_config_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(5),
      I1 => forward_config_tdata(5),
      I2 => select_ifft,
      O => core_config_tdata(5)
    );
\core_config_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(6),
      I1 => forward_config_tdata(6),
      I2 => select_ifft,
      O => core_config_tdata(6)
    );
\core_config_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_config_tdata(7),
      I1 => forward_config_tdata(7),
      I2 => select_ifft,
      O => core_config_tdata(7)
    );
\core_data_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(0),
      I1 => forward_data_tdata(0),
      I2 => select_ifft,
      O => core_data_tdata(0)
    );
\core_data_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(10),
      I1 => forward_data_tdata(10),
      I2 => select_ifft,
      O => core_data_tdata(10)
    );
\core_data_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(11),
      I1 => forward_data_tdata(11),
      I2 => select_ifft,
      O => core_data_tdata(11)
    );
\core_data_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(12),
      I1 => forward_data_tdata(12),
      I2 => select_ifft,
      O => core_data_tdata(12)
    );
\core_data_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(13),
      I1 => forward_data_tdata(13),
      I2 => select_ifft,
      O => core_data_tdata(13)
    );
\core_data_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(14),
      I1 => forward_data_tdata(14),
      I2 => select_ifft,
      O => core_data_tdata(14)
    );
\core_data_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(15),
      I1 => forward_data_tdata(15),
      I2 => select_ifft,
      O => core_data_tdata(15)
    );
\core_data_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(16),
      I1 => forward_data_tdata(16),
      I2 => select_ifft,
      O => core_data_tdata(16)
    );
\core_data_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(17),
      I1 => forward_data_tdata(17),
      I2 => select_ifft,
      O => core_data_tdata(17)
    );
\core_data_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(18),
      I1 => forward_data_tdata(18),
      I2 => select_ifft,
      O => core_data_tdata(18)
    );
\core_data_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(19),
      I1 => forward_data_tdata(19),
      I2 => select_ifft,
      O => core_data_tdata(19)
    );
\core_data_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(1),
      I1 => forward_data_tdata(1),
      I2 => select_ifft,
      O => core_data_tdata(1)
    );
\core_data_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(20),
      I1 => forward_data_tdata(20),
      I2 => select_ifft,
      O => core_data_tdata(20)
    );
\core_data_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(21),
      I1 => forward_data_tdata(21),
      I2 => select_ifft,
      O => core_data_tdata(21)
    );
\core_data_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(22),
      I1 => forward_data_tdata(22),
      I2 => select_ifft,
      O => core_data_tdata(22)
    );
\core_data_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(23),
      I1 => forward_data_tdata(23),
      I2 => select_ifft,
      O => core_data_tdata(23)
    );
\core_data_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(24),
      I1 => forward_data_tdata(24),
      I2 => select_ifft,
      O => core_data_tdata(24)
    );
\core_data_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(25),
      I1 => forward_data_tdata(25),
      I2 => select_ifft,
      O => core_data_tdata(25)
    );
\core_data_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(26),
      I1 => forward_data_tdata(26),
      I2 => select_ifft,
      O => core_data_tdata(26)
    );
\core_data_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(27),
      I1 => forward_data_tdata(27),
      I2 => select_ifft,
      O => core_data_tdata(27)
    );
\core_data_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(28),
      I1 => forward_data_tdata(28),
      I2 => select_ifft,
      O => core_data_tdata(28)
    );
\core_data_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(29),
      I1 => forward_data_tdata(29),
      I2 => select_ifft,
      O => core_data_tdata(29)
    );
\core_data_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(2),
      I1 => forward_data_tdata(2),
      I2 => select_ifft,
      O => core_data_tdata(2)
    );
\core_data_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(30),
      I1 => forward_data_tdata(30),
      I2 => select_ifft,
      O => core_data_tdata(30)
    );
\core_data_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(31),
      I1 => forward_data_tdata(31),
      I2 => select_ifft,
      O => core_data_tdata(31)
    );
\core_data_tdata[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(32),
      I1 => forward_data_tdata(32),
      I2 => select_ifft,
      O => core_data_tdata(32)
    );
\core_data_tdata[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(33),
      I1 => forward_data_tdata(33),
      I2 => select_ifft,
      O => core_data_tdata(33)
    );
\core_data_tdata[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(34),
      I1 => forward_data_tdata(34),
      I2 => select_ifft,
      O => core_data_tdata(34)
    );
\core_data_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(35),
      I1 => forward_data_tdata(35),
      I2 => select_ifft,
      O => core_data_tdata(35)
    );
\core_data_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(36),
      I1 => forward_data_tdata(36),
      I2 => select_ifft,
      O => core_data_tdata(36)
    );
\core_data_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(37),
      I1 => forward_data_tdata(37),
      I2 => select_ifft,
      O => core_data_tdata(37)
    );
\core_data_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(38),
      I1 => forward_data_tdata(38),
      I2 => select_ifft,
      O => core_data_tdata(38)
    );
\core_data_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(39),
      I1 => forward_data_tdata(39),
      I2 => select_ifft,
      O => core_data_tdata(39)
    );
\core_data_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(3),
      I1 => forward_data_tdata(3),
      I2 => select_ifft,
      O => core_data_tdata(3)
    );
\core_data_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(40),
      I1 => forward_data_tdata(40),
      I2 => select_ifft,
      O => core_data_tdata(40)
    );
\core_data_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(41),
      I1 => forward_data_tdata(41),
      I2 => select_ifft,
      O => core_data_tdata(41)
    );
\core_data_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(42),
      I1 => forward_data_tdata(42),
      I2 => select_ifft,
      O => core_data_tdata(42)
    );
\core_data_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(43),
      I1 => forward_data_tdata(43),
      I2 => select_ifft,
      O => core_data_tdata(43)
    );
\core_data_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(44),
      I1 => forward_data_tdata(44),
      I2 => select_ifft,
      O => core_data_tdata(44)
    );
\core_data_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(45),
      I1 => forward_data_tdata(45),
      I2 => select_ifft,
      O => core_data_tdata(45)
    );
\core_data_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(46),
      I1 => forward_data_tdata(46),
      I2 => select_ifft,
      O => core_data_tdata(46)
    );
\core_data_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(47),
      I1 => forward_data_tdata(47),
      I2 => select_ifft,
      O => core_data_tdata(47)
    );
\core_data_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(4),
      I1 => forward_data_tdata(4),
      I2 => select_ifft,
      O => core_data_tdata(4)
    );
\core_data_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(5),
      I1 => forward_data_tdata(5),
      I2 => select_ifft,
      O => core_data_tdata(5)
    );
\core_data_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(6),
      I1 => forward_data_tdata(6),
      I2 => select_ifft,
      O => core_data_tdata(6)
    );
\core_data_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(7),
      I1 => forward_data_tdata(7),
      I2 => select_ifft,
      O => core_data_tdata(7)
    );
\core_data_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(8),
      I1 => forward_data_tdata(8),
      I2 => select_ifft,
      O => core_data_tdata(8)
    );
\core_data_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inverse_data_tdata(9),
      I1 => forward_data_tdata(9),
      I2 => select_ifft,
      O => core_data_tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_FFT_IFFT_Mux_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_FFT_IFFT_Mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_FFT_IFFT_Mux_0_0 : entity is "core_FFT_IFFT_Mux_0_0,FFT_IFFT_Mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_FFT_IFFT_Mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_FFT_IFFT_Mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_FFT_IFFT_Mux_0_0 : entity is "FFT_IFFT_Mux,Vivado 2018.3";
end core_FFT_IFFT_Mux_0_0;

architecture STRUCTURE of core_FFT_IFFT_Mux_0_0 is
  signal \^core_result_tdata\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \^core_result_tlast\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of core_config_tready : signal is "xilinx.com:interface:axis:1.0 core_config TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of core_config_tready : signal is "XIL_INTERFACENAME core_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of core_config_tvalid : signal is "xilinx.com:interface:axis:1.0 core_config TVALID";
  attribute X_INTERFACE_INFO of core_data_tlast : signal is "xilinx.com:interface:axis:1.0 core_data TLAST";
  attribute X_INTERFACE_INFO of core_data_tready : signal is "xilinx.com:interface:axis:1.0 core_data TREADY";
  attribute X_INTERFACE_PARAMETER of core_data_tready : signal is "XIL_INTERFACENAME core_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of core_data_tvalid : signal is "xilinx.com:interface:axis:1.0 core_data TVALID";
  attribute X_INTERFACE_INFO of core_result_tlast : signal is "xilinx.com:interface:axis:1.0 core_result TLAST";
  attribute X_INTERFACE_INFO of core_result_tready : signal is "xilinx.com:interface:axis:1.0 core_result TREADY";
  attribute X_INTERFACE_PARAMETER of core_result_tready : signal is "XIL_INTERFACENAME core_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of core_result_tvalid : signal is "xilinx.com:interface:axis:1.0 core_result TVALID";
  attribute X_INTERFACE_INFO of forward_config_tready : signal is "xilinx.com:interface:axis:1.0 forward_config TREADY";
  attribute X_INTERFACE_PARAMETER of forward_config_tready : signal is "XIL_INTERFACENAME forward_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of forward_config_tvalid : signal is "xilinx.com:interface:axis:1.0 forward_config TVALID";
  attribute X_INTERFACE_INFO of forward_data_tlast : signal is "xilinx.com:interface:axis:1.0 forward_data TLAST";
  attribute X_INTERFACE_INFO of forward_data_tready : signal is "xilinx.com:interface:axis:1.0 forward_data TREADY";
  attribute X_INTERFACE_PARAMETER of forward_data_tready : signal is "XIL_INTERFACENAME forward_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of forward_data_tvalid : signal is "xilinx.com:interface:axis:1.0 forward_data TVALID";
  attribute X_INTERFACE_INFO of forward_result_tlast : signal is "xilinx.com:interface:axis:1.0 forward_result TLAST";
  attribute X_INTERFACE_INFO of forward_result_tready : signal is "xilinx.com:interface:axis:1.0 forward_result TREADY";
  attribute X_INTERFACE_PARAMETER of forward_result_tready : signal is "XIL_INTERFACENAME forward_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of forward_result_tvalid : signal is "xilinx.com:interface:axis:1.0 forward_result TVALID";
  attribute X_INTERFACE_INFO of inverse_config_tready : signal is "xilinx.com:interface:axis:1.0 inverse_config TREADY";
  attribute X_INTERFACE_PARAMETER of inverse_config_tready : signal is "XIL_INTERFACENAME inverse_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inverse_config_tvalid : signal is "xilinx.com:interface:axis:1.0 inverse_config TVALID";
  attribute X_INTERFACE_INFO of inverse_data_tlast : signal is "xilinx.com:interface:axis:1.0 inverse_data TLAST";
  attribute X_INTERFACE_INFO of inverse_data_tready : signal is "xilinx.com:interface:axis:1.0 inverse_data TREADY";
  attribute X_INTERFACE_PARAMETER of inverse_data_tready : signal is "XIL_INTERFACENAME inverse_data, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inverse_data_tvalid : signal is "xilinx.com:interface:axis:1.0 inverse_data TVALID";
  attribute X_INTERFACE_INFO of inverse_result_tlast : signal is "xilinx.com:interface:axis:1.0 inverse_result TLAST";
  attribute X_INTERFACE_INFO of inverse_result_tready : signal is "xilinx.com:interface:axis:1.0 inverse_result TREADY";
  attribute X_INTERFACE_PARAMETER of inverse_result_tready : signal is "XIL_INTERFACENAME inverse_result, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inverse_result_tvalid : signal is "xilinx.com:interface:axis:1.0 inverse_result TVALID";
  attribute X_INTERFACE_INFO of core_config_tdata : signal is "xilinx.com:interface:axis:1.0 core_config TDATA";
  attribute X_INTERFACE_INFO of core_data_tdata : signal is "xilinx.com:interface:axis:1.0 core_data TDATA";
  attribute X_INTERFACE_INFO of core_result_tdata : signal is "xilinx.com:interface:axis:1.0 core_result TDATA";
  attribute X_INTERFACE_INFO of forward_config_tdata : signal is "xilinx.com:interface:axis:1.0 forward_config TDATA";
  attribute X_INTERFACE_INFO of forward_data_tdata : signal is "xilinx.com:interface:axis:1.0 forward_data TDATA";
  attribute X_INTERFACE_INFO of forward_result_tdata : signal is "xilinx.com:interface:axis:1.0 forward_result TDATA";
  attribute X_INTERFACE_INFO of inverse_config_tdata : signal is "xilinx.com:interface:axis:1.0 inverse_config TDATA";
  attribute X_INTERFACE_INFO of inverse_data_tdata : signal is "xilinx.com:interface:axis:1.0 inverse_data TDATA";
  attribute X_INTERFACE_INFO of inverse_result_tdata : signal is "xilinx.com:interface:axis:1.0 inverse_result TDATA";
begin
  \^core_result_tdata\(47 downto 0) <= core_result_tdata(47 downto 0);
  \^core_result_tlast\ <= core_result_tlast;
  forward_result_tdata(47 downto 0) <= \^core_result_tdata\(47 downto 0);
  forward_result_tlast <= \^core_result_tlast\;
  inverse_result_tdata(47 downto 0) <= \^core_result_tdata\(47 downto 0);
  inverse_result_tlast <= \^core_result_tlast\;
core_config_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inverse_config_tvalid,
      I1 => select_ifft,
      I2 => forward_config_tvalid,
      O => core_config_tvalid
    );
core_data_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inverse_data_tlast,
      I1 => select_ifft,
      I2 => forward_data_tlast,
      O => core_data_tlast
    );
core_data_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inverse_data_tvalid,
      I1 => select_ifft,
      I2 => forward_data_tvalid,
      O => core_data_tvalid
    );
core_result_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inverse_result_tready,
      I1 => select_ifft,
      I2 => forward_result_tready,
      O => core_result_tready
    );
forward_config_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => core_config_tready,
      I1 => select_ifft,
      O => forward_config_tready
    );
forward_data_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => core_data_tready,
      I1 => select_ifft,
      O => forward_data_tready
    );
forward_result_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => core_result_tvalid,
      I1 => select_ifft,
      O => forward_result_tvalid
    );
inst: entity work.core_FFT_IFFT_Mux_0_0_FFT_IFFT_Mux
     port map (
      core_config_tdata(7 downto 0) => core_config_tdata(7 downto 0),
      core_data_tdata(47 downto 0) => core_data_tdata(47 downto 0),
      forward_config_tdata(7 downto 0) => forward_config_tdata(7 downto 0),
      forward_data_tdata(47 downto 0) => forward_data_tdata(47 downto 0),
      inverse_config_tdata(7 downto 0) => inverse_config_tdata(7 downto 0),
      inverse_data_tdata(47 downto 0) => inverse_data_tdata(47 downto 0),
      select_ifft => select_ifft
    );
inverse_config_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_ifft,
      I1 => core_config_tready,
      O => inverse_config_tready
    );
inverse_data_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_ifft,
      I1 => core_data_tready,
      O => inverse_data_tready
    );
inverse_result_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => select_ifft,
      I1 => core_result_tvalid,
      O => inverse_result_tvalid
    );
end STRUCTURE;
