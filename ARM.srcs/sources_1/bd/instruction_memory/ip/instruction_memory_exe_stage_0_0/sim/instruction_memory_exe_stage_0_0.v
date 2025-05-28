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


// IP VLNV: xilinx.com:module_ref:exe_stage:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module instruction_memory_exe_stage_0_0 (
  clk,
  exe_cmd,
  mem_r_en,
  mem_w_en,
  carry_in,
  pc,
  val_rn,
  val_rm,
  imm,
  shift_operand,
  signed_imm_24,
  alu_result,
  br_addr,
  status
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [3 : 0] exe_cmd;
input wire mem_r_en;
input wire mem_w_en;
input wire carry_in;
input wire [31 : 0] pc;
input wire [31 : 0] val_rn;
input wire [31 : 0] val_rm;
input wire imm;
input wire [11 : 0] shift_operand;
input wire [23 : 0] signed_imm_24;
output wire [31 : 0] alu_result;
output wire [31 : 0] br_addr;
output wire [3 : 0] status;

  exe_stage inst (
    .clk(clk),
    .exe_cmd(exe_cmd),
    .mem_r_en(mem_r_en),
    .mem_w_en(mem_w_en),
    .carry_in(carry_in),
    .pc(pc),
    .val_rn(val_rn),
    .val_rm(val_rm),
    .imm(imm),
    .shift_operand(shift_operand),
    .signed_imm_24(signed_imm_24),
    .alu_result(alu_result),
    .br_addr(br_addr),
    .status(status)
  );
endmodule
