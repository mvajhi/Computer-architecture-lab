-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May  6 15:39:37 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/instruction_memory_instruction_decode_c_0_2_sim_netlist.vhdl
-- Design      : instruction_memory_instruction_decode_c_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_instruction_decode_c_0_2_condition_check is
  port (
    out_cc : out STD_LOGIC;
    two_src : out STD_LOGIC;
    mem_r_en : out STD_LOGIC;
    mux_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_w_en : out STD_LOGIC;
    s_out : out STD_LOGIC;
    b : out STD_LOGIC;
    wb_en : out STD_LOGIC;
    hazard : in STD_LOGIC;
    if_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    status : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_instruction_decode_c_0_2_condition_check : entity is "condition_check";
end instruction_memory_instruction_decode_c_0_2_condition_check;

architecture STRUCTURE of instruction_memory_instruction_decode_c_0_2_condition_check is
  signal condition_out_reg_i_1_n_0 : STD_LOGIC;
  signal condition_out_reg_i_2_n_0 : STD_LOGIC;
  signal condition_out_reg_i_3_n_0 : STD_LOGIC;
  signal condition_out_reg_i_4_n_0 : STD_LOGIC;
  signal condition_out_reg_i_5_n_0 : STD_LOGIC;
  signal condition_out_reg_i_6_n_0 : STD_LOGIC;
  signal condition_out_reg_i_7_n_0 : STD_LOGIC;
  signal condition_out_reg_i_8_n_0 : STD_LOGIC;
  signal \^out_cc\ : STD_LOGIC;
  signal \r2[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of b_INST_0 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of condition_out_reg : label is "LD";
  attribute SOFT_HLUTNM of mem_r_en_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mem_w_en_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r2[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_out_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wb_en_INST_0 : label is "soft_lutpair1";
begin
  out_cc <= \^out_cc\;
b_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => if_in(10),
      I1 => if_in(11),
      I2 => \^out_cc\,
      I3 => hazard,
      O => b
    );
condition_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => condition_out_reg_i_1_n_0,
      G => condition_out_reg_i_2_n_0,
      GE => '1',
      Q => \^out_cc\
    );
condition_out_reg_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => condition_out_reg_i_3_n_0,
      I1 => condition_out_reg_i_4_n_0,
      O => condition_out_reg_i_1_n_0,
      S => if_in(15)
    );
condition_out_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => if_in(14),
      I1 => if_in(12),
      I2 => if_in(13),
      I3 => if_in(15),
      O => condition_out_reg_i_2_n_0
    );
condition_out_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => condition_out_reg_i_5_n_0,
      I1 => condition_out_reg_i_6_n_0,
      O => condition_out_reg_i_3_n_0,
      S => if_in(14)
    );
condition_out_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => condition_out_reg_i_7_n_0,
      I1 => condition_out_reg_i_8_n_0,
      O => condition_out_reg_i_4_n_0,
      S => if_in(14)
    );
condition_out_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B78"
    )
        port map (
      I0 => status(1),
      I1 => if_in(13),
      I2 => if_in(12),
      I3 => status(2),
      O => condition_out_reg_i_5_n_0
    );
condition_out_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B78"
    )
        port map (
      I0 => status(0),
      I1 => if_in(13),
      I2 => if_in(12),
      I3 => status(3),
      O => condition_out_reg_i_6_n_0
    );
condition_out_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60906F90609F6090"
    )
        port map (
      I0 => status(0),
      I1 => status(3),
      I2 => if_in(13),
      I3 => if_in(12),
      I4 => status(1),
      I5 => status(2),
      O => condition_out_reg_i_7_n_0
    );
condition_out_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBE41"
    )
        port map (
      I0 => status(2),
      I1 => status(3),
      I2 => status(0),
      I3 => if_in(12),
      I4 => if_in(13),
      O => condition_out_reg_i_8_n_0
    );
mem_r_en_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => if_in(8),
      I1 => if_in(10),
      I2 => if_in(11),
      I3 => \^out_cc\,
      I4 => hazard,
      O => mem_r_en
    );
mem_w_en_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => if_in(8),
      I1 => if_in(10),
      I2 => if_in(11),
      I3 => \^out_cc\,
      I4 => hazard,
      O => mem_w_en
    );
\r2[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => if_in(4),
      I1 => if_in(8),
      I2 => if_in(10),
      I3 => if_in(11),
      I4 => \r2[3]_INST_0_i_1_n_0\,
      I5 => if_in(0),
      O => mux_reg(0)
    );
\r2[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => if_in(5),
      I1 => if_in(8),
      I2 => if_in(10),
      I3 => if_in(11),
      I4 => \r2[3]_INST_0_i_1_n_0\,
      I5 => if_in(1),
      O => mux_reg(1)
    );
\r2[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => if_in(6),
      I1 => if_in(8),
      I2 => if_in(10),
      I3 => if_in(11),
      I4 => \r2[3]_INST_0_i_1_n_0\,
      I5 => if_in(2),
      O => mux_reg(2)
    );
\r2[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => if_in(7),
      I1 => if_in(8),
      I2 => if_in(10),
      I3 => if_in(11),
      I4 => \r2[3]_INST_0_i_1_n_0\,
      I5 => if_in(3),
      O => mux_reg(3)
    );
\r2[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => hazard,
      I1 => \^out_cc\,
      O => \r2[3]_INST_0_i_1_n_0\
    );
s_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => if_in(8),
      I1 => \^out_cc\,
      I2 => hazard,
      O => s_out
    );
two_src_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000000FFFFFFFF"
    )
        port map (
      I0 => hazard,
      I1 => \^out_cc\,
      I2 => if_in(11),
      I3 => if_in(10),
      I4 => if_in(8),
      I5 => if_in(9),
      O => two_src
    );
wb_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => if_in(10),
      I1 => if_in(11),
      I2 => \^out_cc\,
      I3 => hazard,
      O => wb_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_instruction_decode_c_0_2_control_unit is
  port (
    exe_cmd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    if_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    out_cc : in STD_LOGIC;
    hazard : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_instruction_decode_c_0_2_control_unit : entity is "control_unit";
end instruction_memory_instruction_decode_c_0_2_control_unit;

architecture STRUCTURE of instruction_memory_instruction_decode_c_0_2_control_unit is
  signal \cu_out_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \cu_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cu_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cu_out_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal out_cu : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal p_1_out : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \cu_out_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cu_out_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \cu_out_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \cu_out_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \cu_out_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \cu_out_reg[4]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \cu_out_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \cu_out_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \exe_cmd[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \exe_cmd[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \exe_cmd[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \exe_cmd[3]_INST_0\ : label is "soft_lutpair6";
begin
\cu_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \cu_out_reg[2]_i_1_n_0\,
      G => p_1_out(5),
      GE => '1',
      Q => out_cu(2)
    );
\cu_out_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6E0"
    )
        port map (
      I0 => if_in(1),
      I1 => if_in(3),
      I2 => if_in(0),
      I3 => if_in(2),
      O => \cu_out_reg[2]_i_1_n_0\
    );
\cu_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \cu_out_reg[3]_i_1_n_0\,
      G => p_1_out(5),
      GE => '1',
      Q => out_cu(3)
    );
\cu_out_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => if_in(3),
      I1 => if_in(2),
      I2 => if_in(0),
      I3 => if_in(1),
      O => \cu_out_reg[3]_i_1_n_0\
    );
\cu_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \cu_out_reg[4]_i_1_n_0\,
      G => p_1_out(5),
      GE => '1',
      Q => out_cu(4)
    );
\cu_out_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => if_in(1),
      I1 => if_in(3),
      I2 => if_in(2),
      I3 => if_in(0),
      O => \cu_out_reg[4]_i_1_n_0\
    );
\cu_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \cu_out_reg[5]_i_1_n_0\,
      G => p_1_out(5),
      GE => '1',
      Q => out_cu(5)
    );
\cu_out_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => if_in(1),
      I1 => if_in(3),
      I2 => if_in(2),
      I3 => if_in(0),
      O => \cu_out_reg[5]_i_1_n_0\
    );
\cu_out_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001010111110111"
    )
        port map (
      I0 => if_in(4),
      I1 => if_in(5),
      I2 => if_in(0),
      I3 => if_in(3),
      I4 => if_in(2),
      I5 => if_in(1),
      O => p_1_out(5)
    );
\exe_cmd[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => out_cu(2),
      I1 => out_cc,
      I2 => hazard,
      O => exe_cmd(0)
    );
\exe_cmd[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => out_cu(3),
      I1 => out_cc,
      I2 => hazard,
      O => exe_cmd(1)
    );
\exe_cmd[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => out_cu(4),
      I1 => out_cc,
      I2 => hazard,
      O => exe_cmd(2)
    );
\exe_cmd[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => out_cu(5),
      I1 => out_cc,
      I2 => hazard,
      O => exe_cmd(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_instruction_decode_c_0_2_instruction_decode_components is
  port (
    two_src : out STD_LOGIC;
    mem_r_en : out STD_LOGIC;
    mux_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_w_en : out STD_LOGIC;
    s_out : out STD_LOGIC;
    b : out STD_LOGIC;
    exe_cmd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_en : out STD_LOGIC;
    if_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    status : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hazard : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_instruction_decode_c_0_2_instruction_decode_components : entity is "instruction_decode_components";
end instruction_memory_instruction_decode_c_0_2_instruction_decode_components;

architecture STRUCTURE of instruction_memory_instruction_decode_c_0_2_instruction_decode_components is
  signal out_cc : STD_LOGIC;
begin
cc: entity work.instruction_memory_instruction_decode_c_0_2_condition_check
     port map (
      b => b,
      hazard => hazard,
      if_in(15 downto 9) => if_in(19 downto 13),
      if_in(8 downto 0) => if_in(8 downto 0),
      mem_r_en => mem_r_en,
      mem_w_en => mem_w_en,
      mux_reg(3 downto 0) => mux_reg(3 downto 0),
      out_cc => out_cc,
      s_out => s_out,
      status(3 downto 0) => status(3 downto 0),
      two_src => two_src,
      wb_en => wb_en
    );
cu: entity work.instruction_memory_instruction_decode_c_0_2_control_unit
     port map (
      exe_cmd(3 downto 0) => exe_cmd(3 downto 0),
      hazard => hazard,
      if_in(5 downto 4) => if_in(15 downto 14),
      if_in(3 downto 0) => if_in(12 downto 9),
      out_cc => out_cc
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_instruction_decode_c_0_2 is
  port (
    if_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    status : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hazard : in STD_LOGIC;
    rn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    two_src : out STD_LOGIC;
    wb_en : out STD_LOGIC;
    mem_r_en : out STD_LOGIC;
    mem_w_en : out STD_LOGIC;
    exe_cmd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC;
    s_out : out STD_LOGIC;
    pc_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    r2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    imm : out STD_LOGIC;
    shift_op : out STD_LOGIC_VECTOR ( 11 downto 0 );
    signed_imm : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of instruction_memory_instruction_decode_c_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of instruction_memory_instruction_decode_c_0_2 : entity is "instruction_memory_instruction_decode_c_0_2,instruction_decode_components,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of instruction_memory_instruction_decode_c_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of instruction_memory_instruction_decode_c_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of instruction_memory_instruction_decode_c_0_2 : entity is "instruction_decode_components,Vivado 2018.3";
end instruction_memory_instruction_decode_c_0_2;

architecture STRUCTURE of instruction_memory_instruction_decode_c_0_2 is
  signal \^if_in\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^mux_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^if_in\(63 downto 0) <= if_in(63 downto 0);
  dest(3 downto 0) <= \^if_in\(15 downto 12);
  imm <= \^if_in\(25);
  mux_reg(3 downto 0) <= \^mux_reg\(3 downto 0);
  pc_out(31 downto 0) <= \^if_in\(63 downto 32);
  r1(3 downto 0) <= \^if_in\(19 downto 16);
  r2(3 downto 0) <= \^mux_reg\(3 downto 0);
  rm(3 downto 0) <= \^if_in\(3 downto 0);
  rn(3 downto 0) <= \^if_in\(19 downto 16);
  shift_op(11 downto 0) <= \^if_in\(11 downto 0);
  signed_imm(23 downto 0) <= \^if_in\(23 downto 0);
inst: entity work.instruction_memory_instruction_decode_c_0_2_instruction_decode_components
     port map (
      b => b,
      exe_cmd(3 downto 0) => exe_cmd(3 downto 0),
      hazard => hazard,
      if_in(19 downto 8) => \^if_in\(31 downto 20),
      if_in(7 downto 4) => \^if_in\(15 downto 12),
      if_in(3 downto 0) => \^if_in\(3 downto 0),
      mem_r_en => mem_r_en,
      mem_w_en => mem_w_en,
      mux_reg(3 downto 0) => \^mux_reg\(3 downto 0),
      s_out => s_out,
      status(3 downto 0) => status(3 downto 0),
      two_src => two_src,
      wb_en => wb_en
    );
end STRUCTURE;
