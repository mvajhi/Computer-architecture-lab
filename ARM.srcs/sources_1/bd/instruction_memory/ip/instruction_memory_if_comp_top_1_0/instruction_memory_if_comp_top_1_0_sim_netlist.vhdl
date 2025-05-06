-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 29 17:26:58 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/instruction_memory_if_comp_top_1_0_sim_netlist.vhdl
-- Design      : instruction_memory_if_comp_top_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_if_comp_top_1_0_adder is
  port (
    adder_res : out STD_LOGIC_VECTOR ( 30 downto 0 );
    pc_to_im : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_if_comp_top_1_0_adder : entity is "adder";
end instruction_memory_if_comp_top_1_0_adder;

architecture STRUCTURE of instruction_memory_if_comp_top_1_0_adder is
  signal \out_carry__0_n_0\ : STD_LOGIC;
  signal \out_carry__0_n_1\ : STD_LOGIC;
  signal \out_carry__0_n_2\ : STD_LOGIC;
  signal \out_carry__0_n_3\ : STD_LOGIC;
  signal \out_carry__1_n_0\ : STD_LOGIC;
  signal \out_carry__1_n_1\ : STD_LOGIC;
  signal \out_carry__1_n_2\ : STD_LOGIC;
  signal \out_carry__1_n_3\ : STD_LOGIC;
  signal \out_carry__2_n_0\ : STD_LOGIC;
  signal \out_carry__2_n_1\ : STD_LOGIC;
  signal \out_carry__2_n_2\ : STD_LOGIC;
  signal \out_carry__2_n_3\ : STD_LOGIC;
  signal \out_carry__3_n_0\ : STD_LOGIC;
  signal \out_carry__3_n_1\ : STD_LOGIC;
  signal \out_carry__3_n_2\ : STD_LOGIC;
  signal \out_carry__3_n_3\ : STD_LOGIC;
  signal \out_carry__4_n_0\ : STD_LOGIC;
  signal \out_carry__4_n_1\ : STD_LOGIC;
  signal \out_carry__4_n_2\ : STD_LOGIC;
  signal \out_carry__4_n_3\ : STD_LOGIC;
  signal \out_carry__5_n_0\ : STD_LOGIC;
  signal \out_carry__5_n_1\ : STD_LOGIC;
  signal \out_carry__5_n_2\ : STD_LOGIC;
  signal \out_carry__5_n_3\ : STD_LOGIC;
  signal \out_carry__6_n_2\ : STD_LOGIC;
  signal \out_carry__6_n_3\ : STD_LOGIC;
  signal out_carry_n_0 : STD_LOGIC;
  signal out_carry_n_1 : STD_LOGIC;
  signal out_carry_n_2 : STD_LOGIC;
  signal out_carry_n_3 : STD_LOGIC;
  signal \NLW_out_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_out_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_carry_n_0,
      CO(2) => out_carry_n_1,
      CO(1) => out_carry_n_2,
      CO(0) => out_carry_n_3,
      CYINIT => pc_to_im(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(3 downto 0),
      S(3 downto 0) => pc_to_im(4 downto 1)
    );
\out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_carry_n_0,
      CO(3) => \out_carry__0_n_0\,
      CO(2) => \out_carry__0_n_1\,
      CO(1) => \out_carry__0_n_2\,
      CO(0) => \out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(7 downto 4),
      S(3 downto 0) => pc_to_im(8 downto 5)
    );
\out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__0_n_0\,
      CO(3) => \out_carry__1_n_0\,
      CO(2) => \out_carry__1_n_1\,
      CO(1) => \out_carry__1_n_2\,
      CO(0) => \out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(11 downto 8),
      S(3 downto 0) => pc_to_im(12 downto 9)
    );
\out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__1_n_0\,
      CO(3) => \out_carry__2_n_0\,
      CO(2) => \out_carry__2_n_1\,
      CO(1) => \out_carry__2_n_2\,
      CO(0) => \out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(15 downto 12),
      S(3 downto 0) => pc_to_im(16 downto 13)
    );
\out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__2_n_0\,
      CO(3) => \out_carry__3_n_0\,
      CO(2) => \out_carry__3_n_1\,
      CO(1) => \out_carry__3_n_2\,
      CO(0) => \out_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(19 downto 16),
      S(3 downto 0) => pc_to_im(20 downto 17)
    );
\out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__3_n_0\,
      CO(3) => \out_carry__4_n_0\,
      CO(2) => \out_carry__4_n_1\,
      CO(1) => \out_carry__4_n_2\,
      CO(0) => \out_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(23 downto 20),
      S(3 downto 0) => pc_to_im(24 downto 21)
    );
\out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__4_n_0\,
      CO(3) => \out_carry__5_n_0\,
      CO(2) => \out_carry__5_n_1\,
      CO(1) => \out_carry__5_n_2\,
      CO(0) => \out_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adder_res(27 downto 24),
      S(3 downto 0) => pc_to_im(28 downto 25)
    );
\out_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__5_n_0\,
      CO(3 downto 2) => \NLW_out_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out_carry__6_n_2\,
      CO(0) => \out_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_out_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => adder_res(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => pc_to_im(31 downto 29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_if_comp_top_1_0_pc_register is
  port (
    pc_to_im : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adder_res : out STD_LOGIC_VECTOR ( 0 to 0 );
    branch_taken : in STD_LOGIC;
    clk : in STD_LOGIC;
    freeze : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_if_comp_top_1_0_pc_register : entity is "pc_register";
end instruction_memory_if_comp_top_1_0_pc_register;

architecture STRUCTURE of instruction_memory_if_comp_top_1_0_pc_register is
  signal p_0_in : STD_LOGIC;
  signal \pc_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[19]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[19]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[19]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[23]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[23]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[27]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[27]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[27]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \pc_out[31]_i_7_n_0\ : STD_LOGIC;
  signal \pc_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \pc_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \pc_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \pc_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \pc_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \pc_out_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \pc_out_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^pc_to_im\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_pc_out_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  pc_to_im(31 downto 0) <= \^pc_to_im\(31 downto 0);
\adder_res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc_to_im\(0),
      O => adder_res(0)
    );
\pc_out[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(11),
      I1 => branch_taken,
      O => \pc_out[11]_i_2_n_0\
    );
\pc_out[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(10),
      I1 => branch_taken,
      O => \pc_out[11]_i_3_n_0\
    );
\pc_out[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(9),
      I1 => branch_taken,
      O => \pc_out[11]_i_4_n_0\
    );
\pc_out[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(8),
      I1 => branch_taken,
      O => \pc_out[11]_i_5_n_0\
    );
\pc_out[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(15),
      I1 => branch_taken,
      O => \pc_out[15]_i_2_n_0\
    );
\pc_out[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(14),
      I1 => branch_taken,
      O => \pc_out[15]_i_3_n_0\
    );
\pc_out[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(13),
      I1 => branch_taken,
      O => \pc_out[15]_i_4_n_0\
    );
\pc_out[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(12),
      I1 => branch_taken,
      O => \pc_out[15]_i_5_n_0\
    );
\pc_out[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(19),
      I1 => branch_taken,
      O => \pc_out[19]_i_2_n_0\
    );
\pc_out[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(18),
      I1 => branch_taken,
      O => \pc_out[19]_i_3_n_0\
    );
\pc_out[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(17),
      I1 => branch_taken,
      O => \pc_out[19]_i_4_n_0\
    );
\pc_out[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(16),
      I1 => branch_taken,
      O => \pc_out[19]_i_5_n_0\
    );
\pc_out[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(23),
      I1 => branch_taken,
      O => \pc_out[23]_i_2_n_0\
    );
\pc_out[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(22),
      I1 => branch_taken,
      O => \pc_out[23]_i_3_n_0\
    );
\pc_out[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(21),
      I1 => branch_taken,
      O => \pc_out[23]_i_4_n_0\
    );
\pc_out[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(20),
      I1 => branch_taken,
      O => \pc_out[23]_i_5_n_0\
    );
\pc_out[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(27),
      I1 => branch_taken,
      O => \pc_out[27]_i_2_n_0\
    );
\pc_out[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(26),
      I1 => branch_taken,
      O => \pc_out[27]_i_3_n_0\
    );
\pc_out[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(25),
      I1 => branch_taken,
      O => \pc_out[27]_i_4_n_0\
    );
\pc_out[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(24),
      I1 => branch_taken,
      O => \pc_out[27]_i_5_n_0\
    );
\pc_out[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freeze,
      O => p_0_in
    );
\pc_out[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \pc_out[31]_i_3_n_0\
    );
\pc_out[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(31),
      I1 => branch_taken,
      O => \pc_out[31]_i_4_n_0\
    );
\pc_out[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(30),
      I1 => branch_taken,
      O => \pc_out[31]_i_5_n_0\
    );
\pc_out[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(29),
      I1 => branch_taken,
      O => \pc_out[31]_i_6_n_0\
    );
\pc_out[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(28),
      I1 => branch_taken,
      O => \pc_out[31]_i_7_n_0\
    );
\pc_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(0),
      I1 => branch_taken,
      O => \pc_out[3]_i_2_n_0\
    );
\pc_out[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(3),
      I1 => branch_taken,
      O => \pc_out[3]_i_3_n_0\
    );
\pc_out[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(2),
      I1 => branch_taken,
      O => \pc_out[3]_i_4_n_0\
    );
\pc_out[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(1),
      I1 => branch_taken,
      O => \pc_out[3]_i_5_n_0\
    );
\pc_out[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc_to_im\(0),
      I1 => branch_taken,
      O => \pc_out[3]_i_6_n_0\
    );
\pc_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(7),
      I1 => branch_taken,
      O => \pc_out[7]_i_2_n_0\
    );
\pc_out[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(6),
      I1 => branch_taken,
      O => \pc_out[7]_i_3_n_0\
    );
\pc_out[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(5),
      I1 => branch_taken,
      O => \pc_out[7]_i_4_n_0\
    );
\pc_out[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_to_im\(4),
      I1 => branch_taken,
      O => \pc_out[7]_i_5_n_0\
    );
\pc_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[3]_i_1_n_7\,
      Q => \^pc_to_im\(0)
    );
\pc_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[11]_i_1_n_5\,
      Q => \^pc_to_im\(10)
    );
\pc_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[11]_i_1_n_4\,
      Q => \^pc_to_im\(11)
    );
\pc_out_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[7]_i_1_n_0\,
      CO(3) => \pc_out_reg[11]_i_1_n_0\,
      CO(2) => \pc_out_reg[11]_i_1_n_1\,
      CO(1) => \pc_out_reg[11]_i_1_n_2\,
      CO(0) => \pc_out_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[11]_i_1_n_4\,
      O(2) => \pc_out_reg[11]_i_1_n_5\,
      O(1) => \pc_out_reg[11]_i_1_n_6\,
      O(0) => \pc_out_reg[11]_i_1_n_7\,
      S(3) => \pc_out[11]_i_2_n_0\,
      S(2) => \pc_out[11]_i_3_n_0\,
      S(1) => \pc_out[11]_i_4_n_0\,
      S(0) => \pc_out[11]_i_5_n_0\
    );
\pc_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[15]_i_1_n_7\,
      Q => \^pc_to_im\(12)
    );
\pc_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[15]_i_1_n_6\,
      Q => \^pc_to_im\(13)
    );
\pc_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[15]_i_1_n_5\,
      Q => \^pc_to_im\(14)
    );
\pc_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[15]_i_1_n_4\,
      Q => \^pc_to_im\(15)
    );
\pc_out_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[11]_i_1_n_0\,
      CO(3) => \pc_out_reg[15]_i_1_n_0\,
      CO(2) => \pc_out_reg[15]_i_1_n_1\,
      CO(1) => \pc_out_reg[15]_i_1_n_2\,
      CO(0) => \pc_out_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[15]_i_1_n_4\,
      O(2) => \pc_out_reg[15]_i_1_n_5\,
      O(1) => \pc_out_reg[15]_i_1_n_6\,
      O(0) => \pc_out_reg[15]_i_1_n_7\,
      S(3) => \pc_out[15]_i_2_n_0\,
      S(2) => \pc_out[15]_i_3_n_0\,
      S(1) => \pc_out[15]_i_4_n_0\,
      S(0) => \pc_out[15]_i_5_n_0\
    );
\pc_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[19]_i_1_n_7\,
      Q => \^pc_to_im\(16)
    );
\pc_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[19]_i_1_n_6\,
      Q => \^pc_to_im\(17)
    );
\pc_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[19]_i_1_n_5\,
      Q => \^pc_to_im\(18)
    );
\pc_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[19]_i_1_n_4\,
      Q => \^pc_to_im\(19)
    );
\pc_out_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[15]_i_1_n_0\,
      CO(3) => \pc_out_reg[19]_i_1_n_0\,
      CO(2) => \pc_out_reg[19]_i_1_n_1\,
      CO(1) => \pc_out_reg[19]_i_1_n_2\,
      CO(0) => \pc_out_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[19]_i_1_n_4\,
      O(2) => \pc_out_reg[19]_i_1_n_5\,
      O(1) => \pc_out_reg[19]_i_1_n_6\,
      O(0) => \pc_out_reg[19]_i_1_n_7\,
      S(3) => \pc_out[19]_i_2_n_0\,
      S(2) => \pc_out[19]_i_3_n_0\,
      S(1) => \pc_out[19]_i_4_n_0\,
      S(0) => \pc_out[19]_i_5_n_0\
    );
\pc_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[3]_i_1_n_6\,
      Q => \^pc_to_im\(1)
    );
\pc_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[23]_i_1_n_7\,
      Q => \^pc_to_im\(20)
    );
\pc_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[23]_i_1_n_6\,
      Q => \^pc_to_im\(21)
    );
\pc_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[23]_i_1_n_5\,
      Q => \^pc_to_im\(22)
    );
\pc_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[23]_i_1_n_4\,
      Q => \^pc_to_im\(23)
    );
\pc_out_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[19]_i_1_n_0\,
      CO(3) => \pc_out_reg[23]_i_1_n_0\,
      CO(2) => \pc_out_reg[23]_i_1_n_1\,
      CO(1) => \pc_out_reg[23]_i_1_n_2\,
      CO(0) => \pc_out_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[23]_i_1_n_4\,
      O(2) => \pc_out_reg[23]_i_1_n_5\,
      O(1) => \pc_out_reg[23]_i_1_n_6\,
      O(0) => \pc_out_reg[23]_i_1_n_7\,
      S(3) => \pc_out[23]_i_2_n_0\,
      S(2) => \pc_out[23]_i_3_n_0\,
      S(1) => \pc_out[23]_i_4_n_0\,
      S(0) => \pc_out[23]_i_5_n_0\
    );
\pc_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[27]_i_1_n_7\,
      Q => \^pc_to_im\(24)
    );
\pc_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[27]_i_1_n_6\,
      Q => \^pc_to_im\(25)
    );
\pc_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[27]_i_1_n_5\,
      Q => \^pc_to_im\(26)
    );
\pc_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[27]_i_1_n_4\,
      Q => \^pc_to_im\(27)
    );
\pc_out_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[23]_i_1_n_0\,
      CO(3) => \pc_out_reg[27]_i_1_n_0\,
      CO(2) => \pc_out_reg[27]_i_1_n_1\,
      CO(1) => \pc_out_reg[27]_i_1_n_2\,
      CO(0) => \pc_out_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[27]_i_1_n_4\,
      O(2) => \pc_out_reg[27]_i_1_n_5\,
      O(1) => \pc_out_reg[27]_i_1_n_6\,
      O(0) => \pc_out_reg[27]_i_1_n_7\,
      S(3) => \pc_out[27]_i_2_n_0\,
      S(2) => \pc_out[27]_i_3_n_0\,
      S(1) => \pc_out[27]_i_4_n_0\,
      S(0) => \pc_out[27]_i_5_n_0\
    );
\pc_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[31]_i_2_n_7\,
      Q => \^pc_to_im\(28)
    );
\pc_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[31]_i_2_n_6\,
      Q => \^pc_to_im\(29)
    );
\pc_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[3]_i_1_n_5\,
      Q => \^pc_to_im\(2)
    );
\pc_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[31]_i_2_n_5\,
      Q => \^pc_to_im\(30)
    );
\pc_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[31]_i_2_n_4\,
      Q => \^pc_to_im\(31)
    );
\pc_out_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[27]_i_1_n_0\,
      CO(3) => \NLW_pc_out_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \pc_out_reg[31]_i_2_n_1\,
      CO(1) => \pc_out_reg[31]_i_2_n_2\,
      CO(0) => \pc_out_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[31]_i_2_n_4\,
      O(2) => \pc_out_reg[31]_i_2_n_5\,
      O(1) => \pc_out_reg[31]_i_2_n_6\,
      O(0) => \pc_out_reg[31]_i_2_n_7\,
      S(3) => \pc_out[31]_i_4_n_0\,
      S(2) => \pc_out[31]_i_5_n_0\,
      S(1) => \pc_out[31]_i_6_n_0\,
      S(0) => \pc_out[31]_i_7_n_0\
    );
\pc_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[3]_i_1_n_4\,
      Q => \^pc_to_im\(3)
    );
\pc_out_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_out_reg[3]_i_1_n_0\,
      CO(2) => \pc_out_reg[3]_i_1_n_1\,
      CO(1) => \pc_out_reg[3]_i_1_n_2\,
      CO(0) => \pc_out_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pc_out[3]_i_2_n_0\,
      O(3) => \pc_out_reg[3]_i_1_n_4\,
      O(2) => \pc_out_reg[3]_i_1_n_5\,
      O(1) => \pc_out_reg[3]_i_1_n_6\,
      O(0) => \pc_out_reg[3]_i_1_n_7\,
      S(3) => \pc_out[3]_i_3_n_0\,
      S(2) => \pc_out[3]_i_4_n_0\,
      S(1) => \pc_out[3]_i_5_n_0\,
      S(0) => \pc_out[3]_i_6_n_0\
    );
\pc_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[7]_i_1_n_7\,
      Q => \^pc_to_im\(4)
    );
\pc_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[7]_i_1_n_6\,
      Q => \^pc_to_im\(5)
    );
\pc_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[7]_i_1_n_5\,
      Q => \^pc_to_im\(6)
    );
\pc_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[7]_i_1_n_4\,
      Q => \^pc_to_im\(7)
    );
\pc_out_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out_reg[3]_i_1_n_0\,
      CO(3) => \pc_out_reg[7]_i_1_n_0\,
      CO(2) => \pc_out_reg[7]_i_1_n_1\,
      CO(1) => \pc_out_reg[7]_i_1_n_2\,
      CO(0) => \pc_out_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_out_reg[7]_i_1_n_4\,
      O(2) => \pc_out_reg[7]_i_1_n_5\,
      O(1) => \pc_out_reg[7]_i_1_n_6\,
      O(0) => \pc_out_reg[7]_i_1_n_7\,
      S(3) => \pc_out[7]_i_2_n_0\,
      S(2) => \pc_out[7]_i_3_n_0\,
      S(1) => \pc_out[7]_i_4_n_0\,
      S(0) => \pc_out[7]_i_5_n_0\
    );
\pc_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[11]_i_1_n_7\,
      Q => \^pc_to_im\(8)
    );
\pc_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => \pc_out[31]_i_3_n_0\,
      D => \pc_out_reg[11]_i_1_n_6\,
      Q => \^pc_to_im\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_if_comp_top_1_0_if_comp_top is
  port (
    pc_to_im : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adder_res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_taken : in STD_LOGIC;
    clk : in STD_LOGIC;
    freeze : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of instruction_memory_if_comp_top_1_0_if_comp_top : entity is "if_comp_top";
end instruction_memory_if_comp_top_1_0_if_comp_top;

architecture STRUCTURE of instruction_memory_if_comp_top_1_0_if_comp_top is
  signal \^pc_to_im\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  pc_to_im(31 downto 0) <= \^pc_to_im\(31 downto 0);
pc_adder: entity work.instruction_memory_if_comp_top_1_0_adder
     port map (
      adder_res(30 downto 0) => adder_res(31 downto 1),
      pc_to_im(31 downto 0) => \^pc_to_im\(31 downto 0)
    );
pcreg: entity work.instruction_memory_if_comp_top_1_0_pc_register
     port map (
      adder_res(0) => adder_res(0),
      branch_taken => branch_taken,
      clk => clk,
      freeze => freeze,
      pc_to_im(31 downto 0) => \^pc_to_im\(31 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity instruction_memory_if_comp_top_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC;
    branch_taken : in STD_LOGIC;
    branch_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adder_res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_to_im : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of instruction_memory_if_comp_top_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of instruction_memory_if_comp_top_1_0 : entity is "instruction_memory_if_comp_top_1_0,if_comp_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of instruction_memory_if_comp_top_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of instruction_memory_if_comp_top_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of instruction_memory_if_comp_top_1_0 : entity is "if_comp_top,Vivado 2018.3";
end instruction_memory_if_comp_top_1_0;

architecture STRUCTURE of instruction_memory_if_comp_top_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.instruction_memory_if_comp_top_1_0_if_comp_top
     port map (
      adder_res(31 downto 0) => adder_res(31 downto 0),
      branch_taken => branch_taken,
      clk => clk,
      freeze => freeze,
      pc_to_im(31 downto 0) => pc_to_im(31 downto 0),
      rst => rst
    );
end STRUCTURE;
