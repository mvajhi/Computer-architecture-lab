-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 22 17:23:57 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_reg_file_0_0/instruction_memory_reg_file_0_0_stub.vhdl
-- Design      : instruction_memory_reg_file_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory_reg_file_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inst_rn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_rm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inst_dest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    value_to_dest : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable : in STD_LOGIC;
    rn_value : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rm_value : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end instruction_memory_reg_file_0_0;

architecture stub of instruction_memory_reg_file_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,inst_rn[3:0],inst_rm[3:0],inst_dest[3:0],value_to_dest[31:0],write_enable,rn_value[31:0],rm_value[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "reg_file,Vivado 2018.3";
begin
end;
