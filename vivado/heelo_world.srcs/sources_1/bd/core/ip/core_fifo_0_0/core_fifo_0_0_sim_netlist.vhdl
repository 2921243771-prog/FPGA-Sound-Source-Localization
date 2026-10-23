-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 21:23:55 2026
-- Host        : DESKTOP-28D233E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/FPGA/heelo_world/heelo_world.srcs/sources_1/bd/core/ip/core_fifo_0_0/core_fifo_0_0_sim_netlist.vhdl
-- Design      : core_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_fifo_0_0_fifo is
  port (
    fifo_reset : out STD_LOGIC;
    fifo_wr_en : out STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    read_toggle : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    sample_valid : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    Ram_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_empty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of core_fifo_0_0_fifo : entity is "fifo";
end core_fifo_0_0_fifo;

architecture STRUCTURE of core_fifo_0_0_fifo is
  signal \^fifo_reset\ : STD_LOGIC;
  signal read_toggle_d : STD_LOGIC;
begin
  fifo_reset <= \^fifo_reset\;
\fifo_rd_en__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => fifo_empty,
      I1 => rst,
      I2 => read_toggle,
      I3 => read_toggle_d,
      O => fifo_rd_en
    );
fifo_reset_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^fifo_reset\
    );
\fifo_wr_en__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => sample_valid,
      I1 => fifo_full,
      I2 => Ram_en,
      I3 => rst,
      O => fifo_wr_en
    );
read_toggle_d_reg: unisim.vcomponents.FDCE
     port map (
      C => rd_clk,
      CE => '1',
      CLR => \^fifo_reset\,
      D => read_toggle,
      Q => read_toggle_d
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity core_fifo_0_0 is
  port (
    rst : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    sample_valid : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 95 downto 0 );
    Ram_en : in STD_LOGIC;
    read_toggle : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 95 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_rd_en : out STD_LOGIC;
    mic1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mic4 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    read_valid : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    fifo_reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of core_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of core_fifo_0_0 : entity is "core_fifo_0_0,fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of core_fifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of core_fifo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of core_fifo_0_0 : entity is "fifo,Vivado 2018.3";
end core_fifo_0_0;

architecture STRUCTURE of core_fifo_0_0 is
  signal \^data1\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data2\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data3\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^data4\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^fifo_dout\ : STD_LOGIC_VECTOR ( 95 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_reset : signal is "xilinx.com:signal:reset:1.0 fifo_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_reset : signal is "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rd_clk : signal is "xilinx.com:signal:clock:1.0 rd_clk CLK";
  attribute X_INTERFACE_PARAMETER of rd_clk : signal is "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN core_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^data1\(23 downto 0) <= data1(23 downto 0);
  \^data2\(23 downto 0) <= data2(23 downto 0);
  \^data3\(23 downto 0) <= data3(23 downto 0);
  \^data4\(23 downto 0) <= data4(23 downto 0);
  \^fifo_dout\(95 downto 0) <= fifo_dout(95 downto 0);
  fifo_din(95 downto 72) <= \^data4\(23 downto 0);
  fifo_din(71 downto 48) <= \^data3\(23 downto 0);
  fifo_din(47 downto 24) <= \^data2\(23 downto 0);
  fifo_din(23 downto 0) <= \^data1\(23 downto 0);
  mic1(23 downto 0) <= \^fifo_dout\(23 downto 0);
  mic2(23 downto 0) <= \^fifo_dout\(47 downto 24);
  mic3(23 downto 0) <= \^fifo_dout\(71 downto 48);
  mic4(23 downto 0) <= \^fifo_dout\(95 downto 72);
inst: entity work.core_fifo_0_0_fifo
     port map (
      Ram_en => Ram_en,
      fifo_empty => fifo_empty,
      fifo_full => fifo_full,
      fifo_rd_en => fifo_rd_en,
      fifo_reset => fifo_reset,
      fifo_wr_en => fifo_wr_en,
      rd_clk => rd_clk,
      read_toggle => read_toggle,
      rst => rst,
      sample_valid => sample_valid
    );
read_valid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst,
      I1 => fifo_empty,
      O => read_valid
    );
end STRUCTURE;
