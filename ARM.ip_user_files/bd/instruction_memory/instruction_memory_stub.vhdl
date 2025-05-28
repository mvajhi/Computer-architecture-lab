-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 28 13:45:47 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/instruction_memory_stub.vhdl
-- Design      : instruction_memory
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory is
  Port ( 
    clk : in STD_LOGIC;
    hazard : in STD_LOGIC;
    rst : in STD_LOGIC_VECTOR ( 0 to 0 );
    status : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end instruction_memory;

architecture stub of instruction_memory is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,hazard,rst[0:0],status[3:0]";
begin
end;
