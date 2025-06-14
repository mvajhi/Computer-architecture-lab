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


// IP VLNV: xilinx.com:module_ref:reg_file:1.0
// IP Revision: 1

(* X_CORE_INFO = "reg_file,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "instruction_memory_reg_file_0_0,reg_file,{}" *)
(* CORE_GENERATION_INFO = "instruction_memory_reg_file_0_0,reg_file,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=reg_file,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module instruction_memory_reg_file_0_0 (
  clk,
  rst,
  inst_rn,
  inst_rm,
  inst_dest,
  value_to_dest,
  write_enable,
  rn_value,
  rm_value,
  reg_0,
  reg_1,
  reg_2,
  reg_3,
  reg_4,
  reg_5,
  reg_6,
  reg_7,
  reg_8,
  reg_9,
  reg_10,
  reg_11,
  reg_12,
  reg_13,
  reg_14,
  reg_15
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [3 : 0] inst_rn;
input wire [3 : 0] inst_rm;
input wire [3 : 0] inst_dest;
input wire [31 : 0] value_to_dest;
input wire write_enable;
output wire [31 : 0] rn_value;
output wire [31 : 0] rm_value;
output wire [31 : 0] reg_0;
output wire [31 : 0] reg_1;
output wire [31 : 0] reg_2;
output wire [31 : 0] reg_3;
output wire [31 : 0] reg_4;
output wire [31 : 0] reg_5;
output wire [31 : 0] reg_6;
output wire [31 : 0] reg_7;
output wire [31 : 0] reg_8;
output wire [31 : 0] reg_9;
output wire [31 : 0] reg_10;
output wire [31 : 0] reg_11;
output wire [31 : 0] reg_12;
output wire [31 : 0] reg_13;
output wire [31 : 0] reg_14;
output wire [31 : 0] reg_15;

  reg_file inst (
    .clk(clk),
    .rst(rst),
    .inst_rn(inst_rn),
    .inst_rm(inst_rm),
    .inst_dest(inst_dest),
    .value_to_dest(value_to_dest),
    .write_enable(write_enable),
    .rn_value(rn_value),
    .rm_value(rm_value),
    .reg_0(reg_0),
    .reg_1(reg_1),
    .reg_2(reg_2),
    .reg_3(reg_3),
    .reg_4(reg_4),
    .reg_5(reg_5),
    .reg_6(reg_6),
    .reg_7(reg_7),
    .reg_8(reg_8),
    .reg_9(reg_9),
    .reg_10(reg_10),
    .reg_11(reg_11),
    .reg_12(reg_12),
    .reg_13(reg_13),
    .reg_14(reg_14),
    .reg_15(reg_15)
  );
endmodule
