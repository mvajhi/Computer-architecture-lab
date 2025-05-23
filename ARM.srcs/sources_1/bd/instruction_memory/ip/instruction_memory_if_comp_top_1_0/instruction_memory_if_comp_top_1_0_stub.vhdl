-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 29 17:26:58 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/instruction_memory_if_comp_top_1_0_stub.vhdl
-- Design      : instruction_memory_if_comp_top_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory_if_comp_top_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC;
    branch_taken : in STD_LOGIC;
    branch_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    adder_res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_to_im : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end instruction_memory_if_comp_top_1_0;

architecture stub of instruction_memory_if_comp_top_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,freeze,branch_taken,branch_address[31:0],adder_res[31:0],pc_to_im[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "if_comp_top,Vivado 2018.3";
begin
end;
