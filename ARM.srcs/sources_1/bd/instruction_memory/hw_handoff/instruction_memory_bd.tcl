
################################################################
# This is a generated script based on design: instruction_memory
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source instruction_memory_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
<<<<<<< HEAD
# Register, Register, Register, Register, debouncer, if_comp_top, instruction_decode_components, reg_file
=======
# Register, Register, Register, Register, if_comp_top
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name instruction_memory

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
<<<<<<< HEAD
  set clk [ create_bd_port -dir I clk ]
  set hazard [ create_bd_port -dir I hazard ]
  set rst [ create_bd_port -dir I -from 0 -to 0 rst ]
  set status [ create_bd_port -dir I -from 3 -to 0 status ]
=======
  set branch_address [ create_bd_port -dir I -from 31 -to 0 branch_address ]
  set branch_taken [ create_bd_port -dir I branch_taken ]
  set clk [ create_bd_port -dir I clk ]
  set flush [ create_bd_port -dir I flush ]
  set freeze [ create_bd_port -dir I freeze ]
  set reg_out [ create_bd_port -dir O -from 63 -to 0 reg_out ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $rst
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6

  # Create instance: Register_1, and set properties
  set block_name Register
  set block_cell_name Register_1
  if { [catch {set Register_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.size {64} \
 ] $Register_1

  # Create instance: Register_2, and set properties
  set block_name Register
  set block_cell_name Register_2
  if { [catch {set Register_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.size {64} \
 ] $Register_2

  # Create instance: Register_3, and set properties
  set block_name Register
  set block_cell_name Register_3
  if { [catch {set Register_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.size {64} \
 ] $Register_3

  # Create instance: Register_4, and set properties
  set block_name Register
  set block_cell_name Register_4
  if { [catch {set Register_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.size {64} \
 ] $Register_4

<<<<<<< HEAD
  # Create instance: debouncer_0, and set properties
  set block_name debouncer
  set block_cell_name debouncer_0
  if { [catch {set debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debouncer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dist_mem_gen_0, and set properties
  set dist_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.coefficient_file {c:/Users/Ali/Downloads/output.coe} \
   CONFIG.data_width {32} \
   CONFIG.default_data_radix {2} \
   CONFIG.depth {8192} \
   CONFIG.memory_type {rom} \
 ] $dist_mem_gen_0

  # Create instance: if_comp_top_1, and set properties
  set block_name if_comp_top
  set block_cell_name if_comp_top_1
  if { [catch {set if_comp_top_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $if_comp_top_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {1024} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE1_TYPE {1} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_TYPE {1} \
   CONFIG.C_PROBE2_WIDTH {64} \
   CONFIG.C_PROBE3_TYPE {1} \
   CONFIG.C_PROBE3_WIDTH {64} \
   CONFIG.C_PROBE4_TYPE {1} \
   CONFIG.C_PROBE4_WIDTH {64} \
   CONFIG.C_PROBE5_TYPE {1} \
   CONFIG.C_PROBE5_WIDTH {64} \
 ] $ila_0

  # Create instance: instruction_decode_c_0, and set properties
  set block_name instruction_decode_components
  set block_cell_name instruction_decode_c_0
  if { [catch {set instruction_decode_c_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $instruction_decode_c_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_file_0, and set properties
  set block_name reg_file
  set block_cell_name reg_file_0
  if { [catch {set reg_file_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_file_0 eq "" } {
=======
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Additional_Inputs_for_Power_Estimation {false} \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../new/output.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: if_comp_top_0, and set properties
  set block_name if_comp_top
  set block_cell_name if_comp_top_0
  if { [catch {set if_comp_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $if_comp_top_0 eq "" } {
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {32} \
 ] $xlconcat_0

<<<<<<< HEAD
  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN10_WIDTH {32} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {12} \
   CONFIG.IN13_WIDTH {24} \
   CONFIG.IN14_WIDTH {4} \
   CONFIG.IN15_WIDTH {32} \
   CONFIG.IN16_WIDTH {32} \
   CONFIG.IN1_WIDTH {4} \
   CONFIG.IN2_WIDTH {4} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {4} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {17} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_4

=======
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {13} \
 ] $xlslice_0

  # Create port connections
<<<<<<< HEAD
  connect_bd_net -net Net [get_bd_ports clk] [get_bd_pins Register_1/clk] [get_bd_pins Register_2/clk] [get_bd_pins Register_3/clk] [get_bd_pins Register_4/clk] [get_bd_pins debouncer_0/CLK_I] [get_bd_pins if_comp_top_1/clk] [get_bd_pins ila_0/clk] [get_bd_pins reg_file_0/clk]
  connect_bd_net -net Net2 [get_bd_pins Register_1/flush] [get_bd_pins Register_2/flush] [get_bd_pins Register_3/flush] [get_bd_pins Register_4/flush] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net Register_1_reg_out [get_bd_pins Register_1/reg_out] [get_bd_pins instruction_decode_c_0/if_in]
  connect_bd_net -net Register_2_reg_out [get_bd_pins Register_2/reg_out] [get_bd_pins Register_3/reg_in] [get_bd_pins ila_0/probe3]
  connect_bd_net -net Register_3_reg_out [get_bd_pins Register_3/reg_out] [get_bd_pins Register_4/reg_in] [get_bd_pins ila_0/probe4]
  connect_bd_net -net Register_4_reg_out [get_bd_pins Register_4/reg_out] [get_bd_pins ila_0/probe5]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins dist_mem_gen_0/spo] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net freeze_1 [get_bd_pins Register_1/freeze] [get_bd_pins Register_2/freeze] [get_bd_pins Register_3/freeze] [get_bd_pins Register_4/freeze] [get_bd_pins if_comp_top_1/freeze] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net if_comp_top_1_adder_res [get_bd_pins if_comp_top_1/adder_res] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net if_comp_top_1_pc_to_im [get_bd_pins if_comp_top_1/pc_to_im] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net instruction_decode_c_0_b [get_bd_pins instruction_decode_c_0/b] [get_bd_pins xlconcat_1/In8]
  connect_bd_net -net instruction_decode_c_0_dest [get_bd_pins instruction_decode_c_0/dest] [get_bd_pins xlconcat_1/In14]
  connect_bd_net -net instruction_decode_c_0_exe_cmd [get_bd_pins instruction_decode_c_0/exe_cmd] [get_bd_pins xlconcat_1/In7]
  connect_bd_net -net instruction_decode_c_0_imm [get_bd_pins instruction_decode_c_0/imm] [get_bd_pins xlconcat_1/In11]
  connect_bd_net -net instruction_decode_c_0_mem_r_en [get_bd_pins instruction_decode_c_0/mem_r_en] [get_bd_pins xlconcat_1/In5]
  connect_bd_net -net instruction_decode_c_0_mem_w_en [get_bd_pins instruction_decode_c_0/mem_w_en] [get_bd_pins xlconcat_1/In6]
  connect_bd_net -net instruction_decode_c_0_mux_reg [get_bd_pins instruction_decode_c_0/mux_reg] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net instruction_decode_c_0_pc_out [get_bd_pins instruction_decode_c_0/pc_out] [get_bd_pins xlconcat_1/In10]
  connect_bd_net -net instruction_decode_c_0_r1 [get_bd_pins instruction_decode_c_0/r1] [get_bd_pins reg_file_0/inst_rn]
  connect_bd_net -net instruction_decode_c_0_r2 [get_bd_pins instruction_decode_c_0/r2] [get_bd_pins reg_file_0/inst_rm]
  connect_bd_net -net instruction_decode_c_0_rm [get_bd_pins instruction_decode_c_0/rm] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net instruction_decode_c_0_rn [get_bd_pins instruction_decode_c_0/rn] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net instruction_decode_c_0_s_out [get_bd_pins instruction_decode_c_0/s_out] [get_bd_pins xlconcat_1/In9]
  connect_bd_net -net instruction_decode_c_0_shift_op [get_bd_pins instruction_decode_c_0/shift_op] [get_bd_pins xlconcat_1/In12]
  connect_bd_net -net instruction_decode_c_0_signed_imm [get_bd_pins instruction_decode_c_0/signed_imm] [get_bd_pins xlconcat_1/In13]
  connect_bd_net -net instruction_decode_c_0_two_src [get_bd_pins instruction_decode_c_0/two_src] [get_bd_pins xlconcat_1/In3]
  connect_bd_net -net instruction_decode_c_0_wb_en [get_bd_pins instruction_decode_c_0/wb_en] [get_bd_pins xlconcat_1/In4]
  connect_bd_net -net reg_file_0_rm_value [get_bd_pins reg_file_0/rm_value] [get_bd_pins xlconcat_1/In16]
  connect_bd_net -net reg_file_0_rn_value [get_bd_pins reg_file_0/rn_value] [get_bd_pins xlconcat_1/In15]
  connect_bd_net -net rst_1 [get_bd_pins Register_1/rst] [get_bd_pins Register_2/rst] [get_bd_pins Register_3/rst] [get_bd_pins Register_4/rst] [get_bd_pins debouncer_0/SIGNAL_O] [get_bd_pins if_comp_top_1/rst] [get_bd_pins ila_0/probe0] [get_bd_pins reg_file_0/rst]
  connect_bd_net -net rst_2 [get_bd_ports rst] [get_bd_pins debouncer_0/SIGNAL_I]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Register_1/reg_in] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Register_2/reg_in] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins if_comp_top_1/branch_taken] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins if_comp_top_1/branch_address] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins reg_file_0/write_enable] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins dist_mem_gen_0/a] [get_bd_pins xlslice_0/Dout]
=======
  connect_bd_net -net Net [get_bd_ports clk] [get_bd_pins Register_1/clk] [get_bd_pins Register_2/clk] [get_bd_pins Register_3/clk] [get_bd_pins Register_4/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins if_comp_top_0/clk]
  connect_bd_net -net Net2 [get_bd_ports flush] [get_bd_pins Register_1/flush] [get_bd_pins Register_2/flush] [get_bd_pins Register_3/flush] [get_bd_pins Register_4/flush]
  connect_bd_net -net Register_1_reg_out [get_bd_pins Register_1/reg_out] [get_bd_pins Register_2/reg_in]
  connect_bd_net -net Register_2_reg_out [get_bd_pins Register_2/reg_out] [get_bd_pins Register_3/reg_in]
  connect_bd_net -net Register_3_reg_out [get_bd_pins Register_3/reg_out] [get_bd_pins Register_4/reg_in]
  connect_bd_net -net Register_4_reg_out [get_bd_ports reg_out] [get_bd_pins Register_4/reg_out]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net branch_address_1 [get_bd_ports branch_address] [get_bd_pins if_comp_top_0/branch_address]
  connect_bd_net -net branch_taken_1 [get_bd_ports branch_taken] [get_bd_pins if_comp_top_0/branch_taken]
  connect_bd_net -net freeze_1 [get_bd_ports freeze] [get_bd_pins Register_1/freeze] [get_bd_pins Register_2/freeze] [get_bd_pins Register_3/freeze] [get_bd_pins Register_4/freeze] [get_bd_pins if_comp_top_0/freeze]
  connect_bd_net -net if_comp_top_0_adder_res [get_bd_pins if_comp_top_0/adder_res] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net if_comp_top_0_pc_to_im [get_bd_pins if_comp_top_0/pc_to_im] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins Register_1/rst] [get_bd_pins Register_2/rst] [get_bd_pins Register_3/rst] [get_bd_pins Register_4/rst] [get_bd_pins if_comp_top_0/rst]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Register_1/reg_in] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins xlslice_0/Dout]
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


