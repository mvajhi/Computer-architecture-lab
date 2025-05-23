-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  8 16:58:05 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_debouncer_0_0/instruction_memory_debouncer_0_0_stub.vhdl
-- Design      : instruction_memory_debouncer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory_debouncer_0_0 is
  Port ( 
    SIGNAL_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_I : in STD_LOGIC;
    SIGNAL_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end instruction_memory_debouncer_0_0;

architecture stub of instruction_memory_debouncer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SIGNAL_I[0:0],CLK_I,SIGNAL_O[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "debouncer,Vivado 2018.3";
begin
end;
