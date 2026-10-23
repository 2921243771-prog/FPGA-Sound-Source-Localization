
################################################################
# This is a generated script based on design: core
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
# source core_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# FFT_IFFT_Mux, FFT_Receive_Store, I2S_drive, Lag_To_PS, PHAT_IFFT_Ctrl, Write_Ctrl, fft_ctrl, fifo

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name core

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
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set SCK_0 [ create_bd_port -dir O SCK_0 ]
  set SD1_0 [ create_bd_port -dir I SD1_0 ]
  set SD_0 [ create_bd_port -dir I SD_0 ]
  set WS_0 [ create_bd_port -dir O WS_0 ]
  set clk_in1_0 [ create_bd_port -dir I -type clk clk_in1_0 ]
  set sample_valid_0 [ create_bd_port -dir O sample_valid_0 ]

  # Create instance: FFT_IFFT_Mux_0, and set properties
  set block_name FFT_IFFT_Mux
  set block_cell_name FFT_IFFT_Mux_0
  if { [catch {set FFT_IFFT_Mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FFT_IFFT_Mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FFT_Receive_Store_0, and set properties
  set block_name FFT_Receive_Store
  set block_cell_name FFT_Receive_Store_0
  if { [catch {set FFT_Receive_Store_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FFT_Receive_Store_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: I2S_drive_0, and set properties
  set block_name I2S_drive
  set block_cell_name I2S_drive_0
  if { [catch {set I2S_drive_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $I2S_drive_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Lag_To_PS_0, and set properties
  set block_name Lag_To_PS
  set block_cell_name Lag_To_PS_0
  if { [catch {set Lag_To_PS_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Lag_To_PS_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PHAT_IFFT_Ctrl_0, and set properties
  set block_name PHAT_IFFT_Ctrl
  set block_cell_name PHAT_IFFT_Ctrl_0
  if { [catch {set PHAT_IFFT_Ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PHAT_IFFT_Ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Write_Ctrl_0, and set properties
  set block_name Write_Ctrl
  set block_cell_name Write_Ctrl_0
  if { [catch {set Write_Ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Write_Ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {96} \
   CONFIG.Read_Width_B {24} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {96} \
   CONFIG.Write_Width_B {24} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {48} \
   CONFIG.Read_Width_B {48} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {16384} \
   CONFIG.Write_Width_A {48} \
   CONFIG.Write_Width_B {48} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {299.507} \
   CONFIG.CLKOUT1_PHASE_ERROR {189.550} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {11.2896} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {31.625} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {93.375} \
   CONFIG.MMCM_DIVCLK_DIVIDE {3} \
 ] $clk_wiz_0

  # Create instance: fft_ctrl_0, and set properties
  set block_name fft_ctrl
  set block_cell_name fft_ctrl_0
  if { [catch {set fft_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fft_ctrl_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_0, and set properties
  set block_name fifo
  set block_cell_name fifo_0
  if { [catch {set fifo_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {11} \
   CONFIG.Empty_Threshold_Assert_Value {4} \
   CONFIG.Empty_Threshold_Negate_Value {5} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {2047} \
   CONFIG.Full_Threshold_Negate_Value {2046} \
   CONFIG.Input_Data_Width {96} \
   CONFIG.Input_Depth {2048} \
   CONFIG.Output_Data_Width {96} \
   CONFIG.Output_Depth {2048} \
   CONFIG.Performance_Options {First_Word_Fall_Through} \
   CONFIG.Read_Data_Count_Width {11} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_0

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {4096} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {26} \
   CONFIG.C_PROBE16_WIDTH {14} \
   CONFIG.C_PROBE22_WIDTH {3} \
   CONFIG.C_PROBE23_WIDTH {16} \
   CONFIG.C_PROBE24_WIDTH {6} \
   CONFIG.C_PROBE3_WIDTH {48} \
   CONFIG.C_PROBE7_WIDTH {2} \
   CONFIG.C_PROBE8_WIDTH {48} \
 ] $ila_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {50000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_GPIO {0} \
   CONFIG.PCW_EN_I2C0 {0} \
   CONFIG.PCW_EN_QSPI {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {<Select>} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1600.000} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART 0#UART 0#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#rx#tx#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {<Select>} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
 ] $vio_0

  # Create instance: xfft_0, and set properties
  set xfft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {radix_4_burst_io} \
   CONFIG.input_width {24} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {0} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {24} \
   CONFIG.rounding_modes {convergent_rounding} \
   CONFIG.scaling_options {block_floating_point} \
   CONFIG.target_clock_frequency {50} \
   CONFIG.transform_length {4096} \
 ] $xfft_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {48} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net FFT_IFFT_Mux_0_core_config_tdata [get_bd_pins FFT_IFFT_Mux_0/core_config_tdata] [get_bd_pins xfft_0/s_axis_config_tdata]
  connect_bd_net -net FFT_IFFT_Mux_0_core_config_tvalid [get_bd_pins FFT_IFFT_Mux_0/core_config_tvalid] [get_bd_pins xfft_0/s_axis_config_tvalid]
  connect_bd_net -net FFT_IFFT_Mux_0_core_data_tdata [get_bd_pins FFT_IFFT_Mux_0/core_data_tdata] [get_bd_pins ila_0/probe3] [get_bd_pins xfft_0/s_axis_data_tdata]
  connect_bd_net -net FFT_IFFT_Mux_0_core_data_tlast [get_bd_pins FFT_IFFT_Mux_0/core_data_tlast] [get_bd_pins ila_0/probe2] [get_bd_pins xfft_0/s_axis_data_tlast]
  connect_bd_net -net FFT_IFFT_Mux_0_core_data_tvalid [get_bd_pins FFT_IFFT_Mux_0/core_data_tvalid] [get_bd_pins ila_0/probe4] [get_bd_pins xfft_0/s_axis_data_tvalid]
  connect_bd_net -net FFT_IFFT_Mux_0_core_result_tready [get_bd_pins FFT_IFFT_Mux_0/core_result_tready] [get_bd_pins ila_0/probe11] [get_bd_pins xfft_0/m_axis_data_tready]
  connect_bd_net -net FFT_IFFT_Mux_0_forward_config_tready [get_bd_pins FFT_IFFT_Mux_0/forward_config_tready] [get_bd_pins fft_ctrl_0/s_axis_config_tready] [get_bd_pins ila_0/probe5]
  connect_bd_net -net FFT_IFFT_Mux_0_forward_data_tready [get_bd_pins FFT_IFFT_Mux_0/forward_data_tready] [get_bd_pins fft_ctrl_0/s_axis_data_tready]
  connect_bd_net -net FFT_IFFT_Mux_0_forward_result_tdata [get_bd_pins FFT_IFFT_Mux_0/forward_result_tdata] [get_bd_pins FFT_Receive_Store_0/m_axis_data_tdata]
  connect_bd_net -net FFT_IFFT_Mux_0_forward_result_tlast [get_bd_pins FFT_IFFT_Mux_0/forward_result_tlast] [get_bd_pins FFT_Receive_Store_0/m_axis_data_tlast]
  connect_bd_net -net FFT_IFFT_Mux_0_forward_result_tvalid [get_bd_pins FFT_IFFT_Mux_0/forward_result_tvalid] [get_bd_pins FFT_Receive_Store_0/m_axis_data_tvalid]
  connect_bd_net -net FFT_IFFT_Mux_0_inverse_config_tready [get_bd_pins FFT_IFFT_Mux_0/inverse_config_tready] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_config_tready]
  connect_bd_net -net FFT_IFFT_Mux_0_inverse_data_tready [get_bd_pins FFT_IFFT_Mux_0/inverse_data_tready] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_data_tready]
  connect_bd_net -net FFT_IFFT_Mux_0_inverse_result_tdata [get_bd_pins FFT_IFFT_Mux_0/inverse_result_tdata] [get_bd_pins PHAT_IFFT_Ctrl_0/m_axis_data_tdata]
  connect_bd_net -net FFT_IFFT_Mux_0_inverse_result_tlast [get_bd_pins FFT_IFFT_Mux_0/inverse_result_tlast] [get_bd_pins PHAT_IFFT_Ctrl_0/m_axis_data_tlast]
  connect_bd_net -net FFT_IFFT_Mux_0_inverse_result_tvalid [get_bd_pins FFT_IFFT_Mux_0/inverse_result_tvalid] [get_bd_pins PHAT_IFFT_Ctrl_0/m_axis_data_tvalid]
  connect_bd_net -net FFT_Receive_Store_0_all_channels_ready [get_bd_pins FFT_Receive_Store_0/all_channels_ready] [get_bd_pins PHAT_IFFT_Ctrl_0/start] [get_bd_pins ila_0/probe13]
  connect_bd_net -net FFT_Receive_Store_0_frame_done [get_bd_pins FFT_Receive_Store_0/frame_done] [get_bd_pins fft_ctrl_0/fft_frame_done] [get_bd_pins ila_0/probe12]
  connect_bd_net -net FFT_Receive_Store_0_m_axis_data_tready [get_bd_pins FFT_IFFT_Mux_0/forward_result_tready] [get_bd_pins FFT_Receive_Store_0/m_axis_data_tready]
  connect_bd_net -net FFT_Receive_Store_0_ram_addra [get_bd_pins FFT_Receive_Store_0/ram_addra] [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins ila_0/probe16]
  connect_bd_net -net FFT_Receive_Store_0_ram_dina [get_bd_pins FFT_Receive_Store_0/ram_dina] [get_bd_pins blk_mem_gen_1/dina]
  connect_bd_net -net FFT_Receive_Store_0_ram_ena [get_bd_pins FFT_Receive_Store_0/ram_ena] [get_bd_pins blk_mem_gen_1/ena]
  connect_bd_net -net FFT_Receive_Store_0_ram_wea [get_bd_pins FFT_Receive_Store_0/ram_wea] [get_bd_pins blk_mem_gen_1/wea]
  connect_bd_net -net FFT_Receive_Store_0_tlast_error [get_bd_pins FFT_Receive_Store_0/tlast_error] [get_bd_pins ila_0/probe14]
  connect_bd_net -net I2S_drive_0_SCK [get_bd_ports SCK_0] [get_bd_pins I2S_drive_0/SCK]
  connect_bd_net -net I2S_drive_0_WS [get_bd_ports WS_0] [get_bd_pins I2S_drive_0/WS]
  connect_bd_net -net I2S_drive_0_data1 [get_bd_pins I2S_drive_0/data1] [get_bd_pins fifo_0/data1]
  connect_bd_net -net I2S_drive_0_data2 [get_bd_pins I2S_drive_0/data2] [get_bd_pins fifo_0/data2]
  connect_bd_net -net I2S_drive_0_data3 [get_bd_pins I2S_drive_0/data3] [get_bd_pins fifo_0/data3]
  connect_bd_net -net I2S_drive_0_data4 [get_bd_pins I2S_drive_0/data4] [get_bd_pins fifo_0/data4]
  connect_bd_net -net I2S_drive_0_sample_valid [get_bd_ports sample_valid_0] [get_bd_pins I2S_drive_0/sample_valid] [get_bd_pins fifo_0/sample_valid]
  connect_bd_net -net Lag_To_PS_0_gpio_status [get_bd_pins Lag_To_PS_0/gpio_status] [get_bd_pins axi_gpio_1/gpio2_io_i]
  connect_bd_net -net Lag_To_PS_0_gpio_word0 [get_bd_pins Lag_To_PS_0/gpio_word0] [get_bd_pins axi_gpio_0/gpio_io_i]
  connect_bd_net -net Lag_To_PS_0_gpio_word1 [get_bd_pins Lag_To_PS_0/gpio_word1] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net Lag_To_PS_0_gpio_word2 [get_bd_pins Lag_To_PS_0/gpio_word2] [get_bd_pins axi_gpio_1/gpio_io_i]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_busy [get_bd_pins FFT_IFFT_Mux_0/select_ifft] [get_bd_pins PHAT_IFFT_Ctrl_0/busy] [get_bd_pins ila_0/probe19]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_done [get_bd_pins Lag_To_PS_0/done] [get_bd_pins PHAT_IFFT_Ctrl_0/done] [get_bd_pins ila_0/probe20]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_frame_error [get_bd_pins Lag_To_PS_0/frame_error] [get_bd_pins PHAT_IFFT_Ctrl_0/frame_error] [get_bd_pins ila_0/probe25]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag12 [get_bd_pins Lag_To_PS_0/lag12] [get_bd_pins PHAT_IFFT_Ctrl_0/lag12]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag13 [get_bd_pins Lag_To_PS_0/lag13] [get_bd_pins PHAT_IFFT_Ctrl_0/lag13]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag14 [get_bd_pins Lag_To_PS_0/lag14] [get_bd_pins PHAT_IFFT_Ctrl_0/lag14]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag23 [get_bd_pins Lag_To_PS_0/lag23] [get_bd_pins PHAT_IFFT_Ctrl_0/lag23]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag24 [get_bd_pins Lag_To_PS_0/lag24] [get_bd_pins PHAT_IFFT_Ctrl_0/lag24]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag34 [get_bd_pins Lag_To_PS_0/lag34] [get_bd_pins PHAT_IFFT_Ctrl_0/lag34]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_lag_valid [get_bd_pins Lag_To_PS_0/lag_valid] [get_bd_pins PHAT_IFFT_Ctrl_0/lag_valid] [get_bd_pins ila_0/probe24]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_m_axis_data_tready [get_bd_pins FFT_IFFT_Mux_0/inverse_result_tready] [get_bd_pins PHAT_IFFT_Ctrl_0/m_axis_data_tready]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_pair_done [get_bd_pins PHAT_IFFT_Ctrl_0/pair_done] [get_bd_pins ila_0/probe21]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_pair_index [get_bd_pins PHAT_IFFT_Ctrl_0/pair_index] [get_bd_pins ila_0/probe22]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_pair_lag [get_bd_pins PHAT_IFFT_Ctrl_0/pair_lag] [get_bd_pins ila_0/probe23]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_s_axis_config_tdata [get_bd_pins FFT_IFFT_Mux_0/inverse_config_tdata] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_config_tdata]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_s_axis_config_tvalid [get_bd_pins FFT_IFFT_Mux_0/inverse_config_tvalid] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_config_tvalid]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_s_axis_data_tdata [get_bd_pins FFT_IFFT_Mux_0/inverse_data_tdata] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_data_tdata]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_s_axis_data_tlast [get_bd_pins FFT_IFFT_Mux_0/inverse_data_tlast] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_data_tlast]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_s_axis_data_tvalid [get_bd_pins FFT_IFFT_Mux_0/inverse_data_tvalid] [get_bd_pins PHAT_IFFT_Ctrl_0/s_axis_data_tvalid]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_spectrum_addrb [get_bd_pins PHAT_IFFT_Ctrl_0/spectrum_addrb] [get_bd_pins blk_mem_gen_1/addrb]
  connect_bd_net -net PHAT_IFFT_Ctrl_0_spectrum_enb [get_bd_pins PHAT_IFFT_Ctrl_0/spectrum_enb] [get_bd_pins blk_mem_gen_1/enb]
  connect_bd_net -net SD1_0_1 [get_bd_ports SD1_0] [get_bd_pins I2S_drive_0/SD1]
  connect_bd_net -net SD_0_1 [get_bd_ports SD_0] [get_bd_pins I2S_drive_0/SD]
  connect_bd_net -net Write_Ctrl_0_Ram_en [get_bd_pins Write_Ctrl_0/Ram_en] [get_bd_pins fifo_0/Ram_en]
  connect_bd_net -net Write_Ctrl_0_Ram_ready [get_bd_pins Write_Ctrl_0/Ram_ready] [get_bd_pins fft_ctrl_0/Ram_ready] [get_bd_pins ila_0/probe0]
  connect_bd_net -net Write_Ctrl_0_Write_addra [get_bd_pins Write_Ctrl_0/Write_addra] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net Write_Ctrl_0_data [get_bd_pins Write_Ctrl_0/data] [get_bd_pins blk_mem_gen_0/dina]
  connect_bd_net -net Write_Ctrl_0_ena [get_bd_pins Write_Ctrl_0/ena] [get_bd_pins blk_mem_gen_0/ena]
  connect_bd_net -net Write_Ctrl_0_read_toggle [get_bd_pins Write_Ctrl_0/read_toggle] [get_bd_pins fifo_0/read_toggle]
  connect_bd_net -net Write_Ctrl_0_wna [get_bd_pins Write_Ctrl_0/wna] [get_bd_pins blk_mem_gen_0/wea]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins fft_ctrl_0/data]
  connect_bd_net -net blk_mem_gen_1_doutb [get_bd_pins PHAT_IFFT_Ctrl_0/spectrum_doutb] [get_bd_pins blk_mem_gen_1/doutb]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports clk_in1_0] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins I2S_drive_0/MMCM_CLOCK] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins fifo_generator_0/wr_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins I2S_drive_0/locked] [get_bd_pins clk_wiz_0/locked]
  connect_bd_net -net fft_ctrl_0_addrb [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins fft_ctrl_0/addrb]
  connect_bd_net -net fft_ctrl_0_batch_done [get_bd_pins fft_ctrl_0/batch_done] [get_bd_pins ila_0/probe15]
  connect_bd_net -net fft_ctrl_0_channel_sel [get_bd_pins FFT_Receive_Store_0/channel_sel] [get_bd_pins fft_ctrl_0/channel_sel] [get_bd_pins ila_0/probe7]
  connect_bd_net -net fft_ctrl_0_enb [get_bd_pins blk_mem_gen_0/enb] [get_bd_pins fft_ctrl_0/enb]
  connect_bd_net -net fft_ctrl_0_fft_rx_start [get_bd_pins FFT_Receive_Store_0/start] [get_bd_pins fft_ctrl_0/fft_rx_start] [get_bd_pins ila_0/probe1]
  connect_bd_net -net fft_ctrl_0_s_axis_config_tdata [get_bd_pins FFT_IFFT_Mux_0/forward_config_tdata] [get_bd_pins fft_ctrl_0/s_axis_config_tdata]
  connect_bd_net -net fft_ctrl_0_s_axis_config_tvalid [get_bd_pins FFT_IFFT_Mux_0/forward_config_tvalid] [get_bd_pins fft_ctrl_0/s_axis_config_tvalid] [get_bd_pins ila_0/probe6]
  connect_bd_net -net fft_ctrl_0_s_axis_data_tlast [get_bd_pins FFT_IFFT_Mux_0/forward_data_tlast] [get_bd_pins fft_ctrl_0/s_axis_data_tlast]
  connect_bd_net -net fft_ctrl_0_s_axis_data_tvalid [get_bd_pins FFT_IFFT_Mux_0/forward_data_tvalid] [get_bd_pins fft_ctrl_0/s_axis_data_tvalid]
  connect_bd_net -net fft_ctrl_0_tdata [get_bd_pins FFT_IFFT_Mux_0/forward_data_tdata] [get_bd_pins fft_ctrl_0/tdata]
  connect_bd_net -net fifo_0_fifo_din [get_bd_pins fifo_0/fifo_din] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net fifo_0_fifo_rd_en [get_bd_pins fifo_0/fifo_rd_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net fifo_0_fifo_reset [get_bd_pins fifo_0/fifo_reset] [get_bd_pins fifo_generator_0/rst]
  connect_bd_net -net fifo_0_fifo_wr_en [get_bd_pins fifo_0/fifo_wr_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net fifo_0_mic1 [get_bd_pins Write_Ctrl_0/data1] [get_bd_pins fifo_0/mic1]
  connect_bd_net -net fifo_0_mic2 [get_bd_pins Write_Ctrl_0/data2] [get_bd_pins fifo_0/mic2]
  connect_bd_net -net fifo_0_mic3 [get_bd_pins Write_Ctrl_0/data3] [get_bd_pins fifo_0/mic3]
  connect_bd_net -net fifo_0_mic4 [get_bd_pins Write_Ctrl_0/data4] [get_bd_pins fifo_0/mic4]
  connect_bd_net -net fifo_0_read_valid [get_bd_pins fifo_0/read_valid]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_0/fifo_dout] [get_bd_pins fifo_generator_0/dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_0/fifo_empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins Write_Ctrl_0/fifo_full] [get_bd_pins fifo_0/fifo_full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins FFT_Receive_Store_0/clk] [get_bd_pins Lag_To_PS_0/clk] [get_bd_pins PHAT_IFFT_Ctrl_0/clk] [get_bd_pins Write_Ctrl_0/clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_1/clkb] [get_bd_pins fft_ctrl_0/clk] [get_bd_pins fifo_0/rd_clk] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins ila_0/clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk] [get_bd_pins vio_0/clk] [get_bd_pins xfft_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins FFT_Receive_Store_0/rst] [get_bd_pins I2S_drive_0/rst] [get_bd_pins Lag_To_PS_0/rst] [get_bd_pins PHAT_IFFT_Ctrl_0/rst] [get_bd_pins Write_Ctrl_0/rst] [get_bd_pins fft_ctrl_0/rst] [get_bd_pins fifo_0/rst] [get_bd_pins vio_0/probe_out0] [get_bd_pins xfft_0/aresetn]
  connect_bd_net -net xfft_0_event_tlast_missing [get_bd_pins ila_0/probe17] [get_bd_pins xfft_0/event_tlast_missing]
  connect_bd_net -net xfft_0_event_tlast_unexpected [get_bd_pins ila_0/probe18] [get_bd_pins xfft_0/event_tlast_unexpected]
  connect_bd_net -net xfft_0_m_axis_data_tdata [get_bd_pins FFT_IFFT_Mux_0/core_result_tdata] [get_bd_pins ila_0/probe8] [get_bd_pins xfft_0/m_axis_data_tdata]
  connect_bd_net -net xfft_0_m_axis_data_tlast [get_bd_pins FFT_IFFT_Mux_0/core_result_tlast] [get_bd_pins ila_0/probe10] [get_bd_pins xfft_0/m_axis_data_tlast]
  connect_bd_net -net xfft_0_m_axis_data_tvalid [get_bd_pins FFT_IFFT_Mux_0/core_result_tvalid] [get_bd_pins ila_0/probe9] [get_bd_pins xfft_0/m_axis_data_tvalid]
  connect_bd_net -net xfft_0_s_axis_config_tready [get_bd_pins FFT_IFFT_Mux_0/core_config_tready] [get_bd_pins xfft_0/s_axis_config_tready]
  connect_bd_net -net xfft_0_s_axis_data_tready [get_bd_pins FFT_IFFT_Mux_0/core_data_tready] [get_bd_pins xfft_0/s_axis_data_tready]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xfft_0/m_axis_status_tready] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins fft_ctrl_0/ifft_data] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg


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


