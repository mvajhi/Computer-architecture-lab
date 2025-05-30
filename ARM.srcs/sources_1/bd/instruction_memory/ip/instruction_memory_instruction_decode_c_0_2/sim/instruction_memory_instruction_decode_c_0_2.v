// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:instruction_decode_components:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module instruction_memory_instruction_decode_c_0_2 (
  if_out,
  status,
  hazard,
  rn,
  rm,
  mux_reg,
  two_src,
  wb_en,
  mem_r_en,
  mem_w_en,
  exe_cmd,
  b,
  s_out,
  pc_out,
  r1,
  r2,
  imm,
  shift_op,
  signed_imm,
  dest,
  carry_in
);

input wire [63 : 0] if_out;
input wire [3 : 0] status;
input wire hazard;
output wire [3 : 0] rn;
output wire [3 : 0] rm;
output wire [3 : 0] mux_reg;
output wire two_src;
output wire wb_en;
output wire mem_r_en;
output wire mem_w_en;
output wire [3 : 0] exe_cmd;
output wire b;
output wire s_out;
output wire [31 : 0] pc_out;
output wire [3 : 0] r1;
output wire [3 : 0] r2;
output wire imm;
output wire [11 : 0] shift_op;
output wire [23 : 0] signed_imm;
output wire [3 : 0] dest;
output wire carry_in;

  instruction_decode_components inst (
    .if_out(if_out),
    .status(status),
    .hazard(hazard),
    .rn(rn),
    .rm(rm),
    .mux_reg(mux_reg),
    .two_src(two_src),
    .wb_en(wb_en),
    .mem_r_en(mem_r_en),
    .mem_w_en(mem_w_en),
    .exe_cmd(exe_cmd),
    .b(b),
    .s_out(s_out),
    .pc_out(pc_out),
    .r1(r1),
    .r2(r2),
    .imm(imm),
    .shift_op(shift_op),
    .signed_imm(signed_imm),
    .dest(dest),
    .carry_in(carry_in)
  );
endmodule
