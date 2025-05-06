-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 15 16:50:24 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_Register_0_1/instruction_memory_Register_0_1_sim_netlist.vhdl
-- Design      : instruction_memory_Register_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_Register_0_1_Register is
  port (
    reg_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    flush : in STD_LOGIC;
    freeze : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    reg_in : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_Register_0_1_Register : entity is "Register";
end instruction_memory_Register_0_1_Register;

architecture STRUCTURE of instruction_memory_Register_0_1_Register is
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \reg_out[63]_i_1_n_0\ : STD_LOGIC;
  signal \reg_out[63]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_out[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_out[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_out[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_out[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_out[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_out[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_out[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_out[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_out[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_out[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_out[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_out[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_out[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_out[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_out[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_out[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_out[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_out[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_out[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_out[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_out[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_out[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_out[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_out[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_out[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_out[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_out[34]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_out[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_out[36]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_out[37]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_out[38]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_out[39]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_out[40]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_out[41]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_out[42]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_out[43]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_out[44]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_out[45]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_out[46]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_out[47]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_out[48]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_out[49]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_out[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_out[50]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_out[51]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_out[52]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_out[53]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_out[54]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_out[55]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_out[56]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_out[57]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_out[58]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_out[59]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_out[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_out[60]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_out[61]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_out[62]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg_out[63]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg_out[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_out[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_out[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_out[9]_i_1\ : label is "soft_lutpair4";
begin
\reg_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(0),
      I1 => flush,
      O => p_1_in(0)
    );
\reg_out[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(10),
      I1 => flush,
      O => p_1_in(10)
    );
\reg_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(11),
      I1 => flush,
      O => p_1_in(11)
    );
\reg_out[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(12),
      I1 => flush,
      O => p_1_in(12)
    );
\reg_out[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(13),
      I1 => flush,
      O => p_1_in(13)
    );
\reg_out[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(14),
      I1 => flush,
      O => p_1_in(14)
    );
\reg_out[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(15),
      I1 => flush,
      O => p_1_in(15)
    );
\reg_out[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(16),
      I1 => flush,
      O => p_1_in(16)
    );
\reg_out[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(17),
      I1 => flush,
      O => p_1_in(17)
    );
\reg_out[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(18),
      I1 => flush,
      O => p_1_in(18)
    );
\reg_out[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(19),
      I1 => flush,
      O => p_1_in(19)
    );
\reg_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(1),
      I1 => flush,
      O => p_1_in(1)
    );
\reg_out[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(20),
      I1 => flush,
      O => p_1_in(20)
    );
\reg_out[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(21),
      I1 => flush,
      O => p_1_in(21)
    );
\reg_out[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(22),
      I1 => flush,
      O => p_1_in(22)
    );
\reg_out[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(23),
      I1 => flush,
      O => p_1_in(23)
    );
\reg_out[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(24),
      I1 => flush,
      O => p_1_in(24)
    );
\reg_out[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(25),
      I1 => flush,
      O => p_1_in(25)
    );
\reg_out[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(26),
      I1 => flush,
      O => p_1_in(26)
    );
\reg_out[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(27),
      I1 => flush,
      O => p_1_in(27)
    );
\reg_out[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(28),
      I1 => flush,
      O => p_1_in(28)
    );
\reg_out[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(29),
      I1 => flush,
      O => p_1_in(29)
    );
\reg_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(2),
      I1 => flush,
      O => p_1_in(2)
    );
\reg_out[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(30),
      I1 => flush,
      O => p_1_in(30)
    );
\reg_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(31),
      I1 => flush,
      O => p_1_in(31)
    );
\reg_out[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(32),
      I1 => flush,
      O => p_1_in(32)
    );
\reg_out[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(33),
      I1 => flush,
      O => p_1_in(33)
    );
\reg_out[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(34),
      I1 => flush,
      O => p_1_in(34)
    );
\reg_out[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(35),
      I1 => flush,
      O => p_1_in(35)
    );
\reg_out[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(36),
      I1 => flush,
      O => p_1_in(36)
    );
\reg_out[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(37),
      I1 => flush,
      O => p_1_in(37)
    );
\reg_out[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(38),
      I1 => flush,
      O => p_1_in(38)
    );
\reg_out[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(39),
      I1 => flush,
      O => p_1_in(39)
    );
\reg_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(3),
      I1 => flush,
      O => p_1_in(3)
    );
\reg_out[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(40),
      I1 => flush,
      O => p_1_in(40)
    );
\reg_out[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(41),
      I1 => flush,
      O => p_1_in(41)
    );
\reg_out[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(42),
      I1 => flush,
      O => p_1_in(42)
    );
\reg_out[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(43),
      I1 => flush,
      O => p_1_in(43)
    );
\reg_out[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(44),
      I1 => flush,
      O => p_1_in(44)
    );
\reg_out[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(45),
      I1 => flush,
      O => p_1_in(45)
    );
\reg_out[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(46),
      I1 => flush,
      O => p_1_in(46)
    );
\reg_out[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(47),
      I1 => flush,
      O => p_1_in(47)
    );
\reg_out[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(48),
      I1 => flush,
      O => p_1_in(48)
    );
\reg_out[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(49),
      I1 => flush,
      O => p_1_in(49)
    );
\reg_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(4),
      I1 => flush,
      O => p_1_in(4)
    );
\reg_out[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(50),
      I1 => flush,
      O => p_1_in(50)
    );
\reg_out[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(51),
      I1 => flush,
      O => p_1_in(51)
    );
\reg_out[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(52),
      I1 => flush,
      O => p_1_in(52)
    );
\reg_out[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(53),
      I1 => flush,
      O => p_1_in(53)
    );
\reg_out[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(54),
      I1 => flush,
      O => p_1_in(54)
    );
\reg_out[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(55),
      I1 => flush,
      O => p_1_in(55)
    );
\reg_out[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(56),
      I1 => flush,
      O => p_1_in(56)
    );
\reg_out[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(57),
      I1 => flush,
      O => p_1_in(57)
    );
\reg_out[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(58),
      I1 => flush,
      O => p_1_in(58)
    );
\reg_out[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(59),
      I1 => flush,
      O => p_1_in(59)
    );
\reg_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(5),
      I1 => flush,
      O => p_1_in(5)
    );
\reg_out[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(60),
      I1 => flush,
      O => p_1_in(60)
    );
\reg_out[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(61),
      I1 => flush,
      O => p_1_in(61)
    );
\reg_out[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(62),
      I1 => flush,
      O => p_1_in(62)
    );
\reg_out[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => flush,
      I1 => freeze,
      O => \reg_out[63]_i_1_n_0\
    );
\reg_out[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(63),
      I1 => flush,
      O => p_1_in(63)
    );
\reg_out[63]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \reg_out[63]_i_3_n_0\
    );
\reg_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(6),
      I1 => flush,
      O => p_1_in(6)
    );
\reg_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(7),
      I1 => flush,
      O => p_1_in(7)
    );
\reg_out[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(8),
      I1 => flush,
      O => p_1_in(8)
    );
\reg_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_in(9),
      I1 => flush,
      O => p_1_in(9)
    );
\reg_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(0),
      Q => reg_out(0)
    );
\reg_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(10),
      Q => reg_out(10)
    );
\reg_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(11),
      Q => reg_out(11)
    );
\reg_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(12),
      Q => reg_out(12)
    );
\reg_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(13),
      Q => reg_out(13)
    );
\reg_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(14),
      Q => reg_out(14)
    );
\reg_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(15),
      Q => reg_out(15)
    );
\reg_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(16),
      Q => reg_out(16)
    );
\reg_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(17),
      Q => reg_out(17)
    );
\reg_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(18),
      Q => reg_out(18)
    );
\reg_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(19),
      Q => reg_out(19)
    );
\reg_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(1),
      Q => reg_out(1)
    );
\reg_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(20),
      Q => reg_out(20)
    );
\reg_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(21),
      Q => reg_out(21)
    );
\reg_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(22),
      Q => reg_out(22)
    );
\reg_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(23),
      Q => reg_out(23)
    );
\reg_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(24),
      Q => reg_out(24)
    );
\reg_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(25),
      Q => reg_out(25)
    );
\reg_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(26),
      Q => reg_out(26)
    );
\reg_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(27),
      Q => reg_out(27)
    );
\reg_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(28),
      Q => reg_out(28)
    );
\reg_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(29),
      Q => reg_out(29)
    );
\reg_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(2),
      Q => reg_out(2)
    );
\reg_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(30),
      Q => reg_out(30)
    );
\reg_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(31),
      Q => reg_out(31)
    );
\reg_out_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(32),
      Q => reg_out(32)
    );
\reg_out_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(33),
      Q => reg_out(33)
    );
\reg_out_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(34),
      Q => reg_out(34)
    );
\reg_out_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(35),
      Q => reg_out(35)
    );
\reg_out_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(36),
      Q => reg_out(36)
    );
\reg_out_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(37),
      Q => reg_out(37)
    );
\reg_out_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(38),
      Q => reg_out(38)
    );
\reg_out_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(39),
      Q => reg_out(39)
    );
\reg_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(3),
      Q => reg_out(3)
    );
\reg_out_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(40),
      Q => reg_out(40)
    );
\reg_out_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(41),
      Q => reg_out(41)
    );
\reg_out_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(42),
      Q => reg_out(42)
    );
\reg_out_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(43),
      Q => reg_out(43)
    );
\reg_out_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(44),
      Q => reg_out(44)
    );
\reg_out_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(45),
      Q => reg_out(45)
    );
\reg_out_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(46),
      Q => reg_out(46)
    );
\reg_out_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(47),
      Q => reg_out(47)
    );
\reg_out_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(48),
      Q => reg_out(48)
    );
\reg_out_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(49),
      Q => reg_out(49)
    );
\reg_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(4),
      Q => reg_out(4)
    );
\reg_out_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(50),
      Q => reg_out(50)
    );
\reg_out_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(51),
      Q => reg_out(51)
    );
\reg_out_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(52),
      Q => reg_out(52)
    );
\reg_out_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(53),
      Q => reg_out(53)
    );
\reg_out_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(54),
      Q => reg_out(54)
    );
\reg_out_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(55),
      Q => reg_out(55)
    );
\reg_out_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(56),
      Q => reg_out(56)
    );
\reg_out_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(57),
      Q => reg_out(57)
    );
\reg_out_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(58),
      Q => reg_out(58)
    );
\reg_out_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(59),
      Q => reg_out(59)
    );
\reg_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(5),
      Q => reg_out(5)
    );
\reg_out_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(60),
      Q => reg_out(60)
    );
\reg_out_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(61),
      Q => reg_out(61)
    );
\reg_out_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(62),
      Q => reg_out(62)
    );
\reg_out_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(63),
      Q => reg_out(63)
    );
\reg_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(6),
      Q => reg_out(6)
    );
\reg_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(7),
      Q => reg_out(7)
    );
\reg_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(8),
      Q => reg_out(8)
    );
\reg_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \reg_out[63]_i_1_n_0\,
      CLR => \reg_out[63]_i_3_n_0\,
      D => p_1_in(9),
      Q => reg_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_Register_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    flush : in STD_LOGIC;
    freeze : in STD_LOGIC;
    reg_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    reg_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of instruction_memory_Register_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of instruction_memory_Register_0_1 : entity is "instruction_memory_Register_0_1,Register,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of instruction_memory_Register_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of instruction_memory_Register_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of instruction_memory_Register_0_1 : entity is "Register,Vivado 2018.3";
end instruction_memory_Register_0_1;

architecture STRUCTURE of instruction_memory_Register_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.instruction_memory_Register_0_1_Register
     port map (
      clk => clk,
      flush => flush,
      freeze => freeze,
      reg_in(63 downto 0) => reg_in(63 downto 0),
      reg_out(63 downto 0) => reg_out(63 downto 0),
      rst => rst
    );
end STRUCTURE;
