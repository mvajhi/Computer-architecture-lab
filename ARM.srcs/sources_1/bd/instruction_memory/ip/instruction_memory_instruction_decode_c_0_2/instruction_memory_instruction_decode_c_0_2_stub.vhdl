-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May  6 15:39:37 2025
-- Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/instruction_memory_instruction_decode_c_0_2_stub.vhdl
-- Design      : instruction_memory_instruction_decode_c_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_memory_instruction_decode_c_0_2 is
  Port ( 
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

end instruction_memory_instruction_decode_c_0_2;

architecture stub of instruction_memory_instruction_decode_c_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "if_in[63:0],status[3:0],hazard,rn[3:0],rm[3:0],mux_reg[3:0],two_src,wb_en,mem_r_en,mem_w_en,exe_cmd[3:0],b,s_out,pc_out[31:0],r1[3:0],r2[3:0],imm,shift_op[11:0],signed_imm[23:0],dest[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "instruction_decode_components,Vivado 2018.3";
begin
end;
