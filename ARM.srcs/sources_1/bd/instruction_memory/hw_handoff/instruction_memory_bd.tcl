
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
# Register, Register, Register, Register, debouncer, exe_splittre, exe_stage, forward_unit_detection, hazard_detection_unit, if_comp_top, instruction_decode_components, memory, ms_splittre, mux, reg_file, status_reg, wbs_splittre

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
  set clk [ create_bd_port -dir I clk ]
  set rst [ create_bd_port -dir I -from 0 -to 0 rst ]

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
   CONFIG.size {160} \
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
   CONFIG.size {71} \
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
   CONFIG.size {70} \
 ] $Register_4

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

  # Create instance: dist_mem_gen_1, and set properties
  set dist_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {single_port_ram} \
 ] $dist_mem_gen_1

  # Create instance: exe_splittre_0, and set properties
  set block_name exe_splittre
  set block_cell_name exe_splittre_0
  if { [catch {set exe_splittre_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $exe_splittre_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: exe_stage_0, and set properties
  set block_name exe_stage
  set block_cell_name exe_stage_0
  if { [catch {set exe_stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $exe_stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: forward_unit_detecti_0, and set properties
  set block_name forward_unit_detection
  set block_cell_name forward_unit_detecti_0
  if { [catch {set forward_unit_detecti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $forward_unit_detecti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hazard_detection_unit_0, and set properties
  set block_name hazard_detection_unit
  set block_cell_name hazard_detection_unit_0
  if { [catch {set hazard_detection_unit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hazard_detection_unit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
   CONFIG.C_NUM_OF_PROBES {7} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE10_WIDTH {1} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE12_WIDTH {1} \
   CONFIG.C_PROBE13_WIDTH {1} \
   CONFIG.C_PROBE14_WIDTH {1} \
   CONFIG.C_PROBE15_WIDTH {1} \
   CONFIG.C_PROBE16_WIDTH {1} \
   CONFIG.C_PROBE1_TYPE {1} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_TYPE {1} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_TYPE {1} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_TYPE {1} \
   CONFIG.C_PROBE4_WIDTH {32} \
   CONFIG.C_PROBE5_TYPE {1} \
   CONFIG.C_PROBE5_WIDTH {32} \
   CONFIG.C_PROBE6_TYPE {1} \
   CONFIG.C_PROBE6_WIDTH {32} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE7_WIDTH {1} \
   CONFIG.C_PROBE8_WIDTH {1} \
   CONFIG.C_PROBE9_WIDTH {1} \
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
  
  # Create instance: memory_0, and set properties
  set block_name memory
  set block_cell_name memory_0
  if { [catch {set memory_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $memory_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ms_splittre_0, and set properties
  set block_name ms_splittre
  set block_cell_name ms_splittre_0
  if { [catch {set ms_splittre_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ms_splittre_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mux_0, and set properties
  set block_name mux
  set block_cell_name mux_0
  if { [catch {set mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_0 eq "" } {
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
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: status_reg_0, and set properties
  set block_name status_reg
  set block_cell_name status_reg_0
  if { [catch {set status_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $status_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_PROBE_OUT0_INIT_VAL {0x1} \
 ] $vio_0

  # Create instance: wbs_splittre_0, and set properties
  set block_name wbs_splittre
  set block_cell_name wbs_splittre_0
  if { [catch {set wbs_splittre_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wbs_splittre_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {32} \
 ] $xlconcat_0

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
   CONFIG.IN17_WIDTH {1} \
   CONFIG.IN1_WIDTH {4} \
   CONFIG.IN2_WIDTH {4} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {4} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {18} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN3_WIDTH {32} \
   CONFIG.IN4_WIDTH {32} \
   CONFIG.IN5_WIDTH {4} \
   CONFIG.IN6_WIDTH {4} \
   CONFIG.NUM_PORTS {6} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.IN2_WIDTH {32} \
   CONFIG.IN3_WIDTH {32} \
   CONFIG.IN4_WIDTH {4} \
   CONFIG.IN5_WIDTH {4} \
   CONFIG.IN6_WIDTH {4} \
   CONFIG.NUM_PORTS {5} \
 ] $xlconcat_3

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

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {13} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net Net [get_bd_ports clk] [get_bd_pins Register_1/clk] [get_bd_pins Register_2/clk] [get_bd_pins Register_3/clk] [get_bd_pins Register_4/clk] [get_bd_pins debouncer_0/CLK_I] [get_bd_pins dist_mem_gen_1/clk] [get_bd_pins exe_stage_0/clk] [get_bd_pins if_comp_top_1/clk] [get_bd_pins ila_0/clk] [get_bd_pins reg_file_0/clk] [get_bd_pins status_reg_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net Register_1_reg_out [get_bd_pins Register_1/reg_out] [get_bd_pins instruction_decode_c_0/if_out]
  connect_bd_net -net Register_2_reg_out [get_bd_pins Register_2/reg_out] [get_bd_pins exe_splittre_0/reg_input]
  connect_bd_net -net Register_3_reg_out [get_bd_pins Register_3/reg_out] [get_bd_pins ms_splittre_0/reg_input]
  connect_bd_net -net Register_4_reg_out [get_bd_pins Register_4/reg_out] [get_bd_pins wbs_splittre_0/reg_input]
  connect_bd_net -net debouncer_0_SIGNAL_O [get_bd_pins Register_1/rst] [get_bd_pins Register_2/rst] [get_bd_pins Register_3/rst] [get_bd_pins Register_4/rst] [get_bd_pins debouncer_0/SIGNAL_O] [get_bd_pins if_comp_top_1/rst] [get_bd_pins ila_0/probe0] [get_bd_pins reg_file_0/rst] [get_bd_pins status_reg_0/rst]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins dist_mem_gen_0/spo] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net dist_mem_gen_1_spo [get_bd_pins dist_mem_gen_1/spo] [get_bd_pins xlconcat_3/In3]
  connect_bd_net -net exe_splittre_0_b [get_bd_pins Register_1/flush] [get_bd_pins Register_2/flush] [get_bd_pins exe_splittre_0/b] [get_bd_pins if_comp_top_1/branch_taken]
  connect_bd_net -net exe_splittre_0_carry_in [get_bd_pins exe_splittre_0/carry_in] [get_bd_pins exe_stage_0/carry_in]
  connect_bd_net -net exe_splittre_0_dest [get_bd_pins exe_splittre_0/dest] [get_bd_pins hazard_detection_unit_0/exe_dest] [get_bd_pins xlconcat_2/In5]
  connect_bd_net -net exe_splittre_0_exe_cmd [get_bd_pins exe_splittre_0/exe_cmd] [get_bd_pins exe_stage_0/exe_cmd]
  connect_bd_net -net exe_splittre_0_imm [get_bd_pins exe_splittre_0/imm] [get_bd_pins exe_stage_0/imm]
  connect_bd_net -net exe_splittre_0_mem_r_en [get_bd_pins exe_splittre_0/mem_r_en] [get_bd_pins exe_stage_0/mem_r_en] [get_bd_pins hazard_detection_unit_0/exe_mem_r_en] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net exe_splittre_0_mem_w_en [get_bd_pins exe_splittre_0/mem_w_en] [get_bd_pins exe_stage_0/mem_w_en] [get_bd_pins xlconcat_2/In2]
  connect_bd_net -net exe_splittre_0_pc_out [get_bd_pins exe_splittre_0/pc_out] [get_bd_pins exe_stage_0/pc]
  connect_bd_net -net exe_splittre_0_rm [get_bd_pins exe_splittre_0/rm] [get_bd_pins forward_unit_detecti_0/src2_exe]
  connect_bd_net -net exe_splittre_0_rm_value [get_bd_pins exe_splittre_0/rm_value] [get_bd_pins exe_stage_0/val_rm] [get_bd_pins xlconcat_2/In4]
  connect_bd_net -net exe_splittre_0_rn [get_bd_pins exe_splittre_0/rn] [get_bd_pins forward_unit_detecti_0/src1_exe]
  connect_bd_net -net exe_splittre_0_rn_value [get_bd_pins exe_splittre_0/rn_value] [get_bd_pins exe_stage_0/val_rn]
  connect_bd_net -net exe_splittre_0_s_out [get_bd_pins exe_splittre_0/s_out] [get_bd_pins status_reg_0/s]
  connect_bd_net -net exe_splittre_0_shift_op [get_bd_pins exe_splittre_0/shift_op] [get_bd_pins exe_stage_0/shift_operand]
  connect_bd_net -net exe_splittre_0_signed_imm [get_bd_pins exe_splittre_0/signed_imm] [get_bd_pins exe_stage_0/signed_imm_24]
  connect_bd_net -net exe_splittre_0_wb_en [get_bd_pins exe_splittre_0/wb_en] [get_bd_pins hazard_detection_unit_0/exe_wb_en] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net exe_stage_0_alu_result [get_bd_pins exe_stage_0/alu_result] [get_bd_pins xlconcat_2/In3]
  connect_bd_net -net exe_stage_0_br_addr [get_bd_pins exe_stage_0/br_addr] [get_bd_pins if_comp_top_1/branch_address]
  connect_bd_net -net exe_stage_0_status [get_bd_pins exe_stage_0/status] [get_bd_pins status_reg_0/reg_in]
  connect_bd_net -net forward_unit_detecti_0_sel_src1 [get_bd_pins exe_stage_0/sel_src1] [get_bd_pins forward_unit_detecti_0/sel_src1]
  connect_bd_net -net forward_unit_detecti_0_sel_src2 [get_bd_pins exe_stage_0/sel_src2] [get_bd_pins forward_unit_detecti_0/sel_src2]
  connect_bd_net -net hazard_detection_unit_0_hazard_detected [get_bd_pins Register_1/freeze] [get_bd_pins hazard_detection_unit_0/hazard_detected] [get_bd_pins if_comp_top_1/freeze] [get_bd_pins instruction_decode_c_0/hazard]
  connect_bd_net -net if_comp_top_1_adder_res [get_bd_pins if_comp_top_1/adder_res] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net if_comp_top_1_pc_to_im [get_bd_pins if_comp_top_1/pc_to_im] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net instruction_decode_c_0_b [get_bd_pins instruction_decode_c_0/b] [get_bd_pins xlconcat_1/In8]
  connect_bd_net -net instruction_decode_c_0_carry_in [get_bd_pins instruction_decode_c_0/carry_in] [get_bd_pins xlconcat_1/In17]
  connect_bd_net -net instruction_decode_c_0_dest [get_bd_pins instruction_decode_c_0/dest] [get_bd_pins xlconcat_1/In14]
  connect_bd_net -net instruction_decode_c_0_exe_cmd [get_bd_pins instruction_decode_c_0/exe_cmd] [get_bd_pins xlconcat_1/In7]
  connect_bd_net -net instruction_decode_c_0_imm [get_bd_pins instruction_decode_c_0/imm] [get_bd_pins xlconcat_1/In11]
  connect_bd_net -net instruction_decode_c_0_mem_r_en [get_bd_pins instruction_decode_c_0/mem_r_en] [get_bd_pins xlconcat_1/In5]
  connect_bd_net -net instruction_decode_c_0_mem_w_en [get_bd_pins instruction_decode_c_0/mem_w_en] [get_bd_pins xlconcat_1/In6]
  connect_bd_net -net instruction_decode_c_0_mux_reg [get_bd_pins instruction_decode_c_0/mux_reg] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net instruction_decode_c_0_pc_out [get_bd_pins instruction_decode_c_0/pc_out] [get_bd_pins xlconcat_1/In10]
  connect_bd_net -net instruction_decode_c_0_r1 [get_bd_pins instruction_decode_c_0/r1] [get_bd_pins reg_file_0/inst_rn]
  connect_bd_net -net instruction_decode_c_0_r2 [get_bd_pins instruction_decode_c_0/r2] [get_bd_pins reg_file_0/inst_rm]
  connect_bd_net -net instruction_decode_c_0_rm [get_bd_pins hazard_detection_unit_0/src2] [get_bd_pins instruction_decode_c_0/rm] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net instruction_decode_c_0_rn [get_bd_pins hazard_detection_unit_0/src1] [get_bd_pins instruction_decode_c_0/rn] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net instruction_decode_c_0_s_out [get_bd_pins instruction_decode_c_0/s_out] [get_bd_pins xlconcat_1/In9]
  connect_bd_net -net instruction_decode_c_0_shift_op [get_bd_pins instruction_decode_c_0/shift_op] [get_bd_pins xlconcat_1/In12]
  connect_bd_net -net instruction_decode_c_0_signed_imm [get_bd_pins instruction_decode_c_0/signed_imm] [get_bd_pins xlconcat_1/In13]
  connect_bd_net -net instruction_decode_c_0_two_src [get_bd_pins hazard_detection_unit_0/two_src] [get_bd_pins instruction_decode_c_0/two_src] [get_bd_pins xlconcat_1/In3]
  connect_bd_net -net instruction_decode_c_0_wb_en [get_bd_pins instruction_decode_c_0/wb_en] [get_bd_pins xlconcat_1/In4]
  connect_bd_net -net memory_0_mem_addr_out [get_bd_pins dist_mem_gen_1/a] [get_bd_pins memory_0/mem_addr_out]
  connect_bd_net -net ms_splittre_0_alu_res [get_bd_pins exe_stage_0/val_forward_mem] [get_bd_pins memory_0/address] [get_bd_pins ms_splittre_0/alu_res] [get_bd_pins xlconcat_3/In2]
  connect_bd_net -net ms_splittre_0_dest [get_bd_pins forward_unit_detecti_0/mem_dest] [get_bd_pins hazard_detection_unit_0/mem_dest] [get_bd_pins ms_splittre_0/dest] [get_bd_pins xlconcat_3/In4]
  connect_bd_net -net ms_splittre_0_mem_r_en [get_bd_pins ms_splittre_0/mem_r_en] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net ms_splittre_0_mem_w_en [get_bd_pins dist_mem_gen_1/we] [get_bd_pins ms_splittre_0/mem_w_en]
  connect_bd_net -net ms_splittre_0_rm_value [get_bd_pins dist_mem_gen_1/d] [get_bd_pins ms_splittre_0/rm_value]
  connect_bd_net -net ms_splittre_0_wb_en [get_bd_pins forward_unit_detecti_0/mem_wb_en] [get_bd_pins hazard_detection_unit_0/mem_wb_en] [get_bd_pins ms_splittre_0/wb_en] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net mux_0_wb_out [get_bd_pins exe_stage_0/val_forward_wb] [get_bd_pins mux_0/wb_out] [get_bd_pins reg_file_0/value_to_dest]
  connect_bd_net -net reg_file_0_reg_0 [get_bd_pins ila_0/probe1] [get_bd_pins reg_file_0/reg_0]
  connect_bd_net -net reg_file_0_reg_1 [get_bd_pins ila_0/probe2] [get_bd_pins reg_file_0/reg_1]
  connect_bd_net -net reg_file_0_reg_2 [get_bd_pins ila_0/probe3] [get_bd_pins reg_file_0/reg_2]
  connect_bd_net -net reg_file_0_reg_3 [get_bd_pins ila_0/probe4] [get_bd_pins reg_file_0/reg_3]
  connect_bd_net -net reg_file_0_reg_4 [get_bd_pins ila_0/probe5] [get_bd_pins reg_file_0/reg_4]
  connect_bd_net -net reg_file_0_reg_5 [get_bd_pins ila_0/probe6] [get_bd_pins reg_file_0/reg_5]
  connect_bd_net -net reg_file_0_rm_value [get_bd_pins reg_file_0/rm_value] [get_bd_pins xlconcat_1/In16]
  connect_bd_net -net reg_file_0_rn_value [get_bd_pins reg_file_0/rn_value] [get_bd_pins xlconcat_1/In15]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins debouncer_0/SIGNAL_I]
  connect_bd_net -net status_reg_0_reg_out [get_bd_pins instruction_decode_c_0/status] [get_bd_pins status_reg_0/reg_out]
  connect_bd_net -net wbs_splittre_0_alu_res [get_bd_pins mux_0/alu_out] [get_bd_pins wbs_splittre_0/alu_res]
  connect_bd_net -net wbs_splittre_0_dest [get_bd_pins forward_unit_detecti_0/wb_dest] [get_bd_pins reg_file_0/inst_dest] [get_bd_pins wbs_splittre_0/dest]
  connect_bd_net -net wbs_splittre_0_dm_out [get_bd_pins mux_0/dm_out] [get_bd_pins wbs_splittre_0/dm_out]
  connect_bd_net -net wbs_splittre_0_mem_r_en [get_bd_pins mux_0/enabler] [get_bd_pins wbs_splittre_0/mem_r_en]
  connect_bd_net -net wbs_splittre_0_wb_en [get_bd_pins forward_unit_detecti_0/wb_wb_en] [get_bd_pins reg_file_0/write_enable] [get_bd_pins wbs_splittre_0/wb_en]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Register_1/reg_in] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Register_2/reg_in] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins Register_3/reg_in] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins Register_4/reg_in] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Register_3/flush] [get_bd_pins Register_3/freeze] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins Register_4/flush] [get_bd_pins Register_4/freeze] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins forward_unit_detecti_0/fw_en] [get_bd_pins hazard_detection_unit_0/fw_en] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins Register_2/freeze] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins dist_mem_gen_0/a] [get_bd_pins xlslice_0/Dout]

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


