-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 15 16:50:25 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_Register_2_0/instruction_memory_Register_2_0_stub.vhdl
-- Design      : instruction_memory_Register_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory_Register_2_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    flush : in STD_LOGIC;
    freeze : in STD_LOGIC;
    reg_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    reg_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end instruction_memory_Register_2_0;

architecture stub of instruction_memory_Register_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,flush,freeze,reg_in[63:0],reg_out[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Register,Vivado 2018.3";
begin
end;
