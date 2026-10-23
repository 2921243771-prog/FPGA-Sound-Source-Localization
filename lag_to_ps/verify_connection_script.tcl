# Test fixture only: never opens the user's original project.
set verify_dir [file normalize [file dirname [info script]]]
set build_dir [file normalize [file join $env(TEMP) "lag_bd_verify_[pid]"]]
file mkdir $build_dir
cd $build_dir
set_param general.maxThreads 1
create_project lag_bd_verify $build_dir -part xc7z020clg400-1 -force
foreach name {PHAT_Norm_Core.v PHAT_Weight.v PHAT_IFFT_Ctrl.v} {
    set file_path [file join [file dirname $verify_dir] phat_ifft $name]
    file copy -force $file_path [file join $build_dir $name]
    add_files [file join $build_dir $name]
}
update_compile_order -fileset sources_1
create_bd_design lag_test
create_bd_cell -type module -reference PHAT_IFFT_Ctrl PHAT_IFFT_Ctrl_0
foreach name {axi_gpio_0 axi_gpio_1} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 $name
}
create_bd_port -dir I -type clk clk50
set_property CONFIG.FREQ_HZ 50000000 [get_bd_ports clk50]
create_bd_port -dir I -type rst rst_n
set_property CONFIG.POLARITY ACTIVE_LOW [get_bd_ports rst_n]
connect_bd_net [get_bd_ports clk50] [get_bd_pins PHAT_IFFT_Ctrl_0/clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk]
connect_bd_net [get_bd_ports rst_n] [get_bd_pins PHAT_IFFT_Ctrl_0/rst] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn]
foreach {name width value} {zero1 1 0 one1 1 1 zero48 48 0} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 $name
    set_property -dict [list CONFIG.CONST_WIDTH $width CONFIG.CONST_VAL $value] [get_bd_cells $name]
}
foreach pin {start m_axis_data_tvalid m_axis_data_tlast} {
    connect_bd_net [get_bd_pins zero1/dout] [get_bd_pins PHAT_IFFT_Ctrl_0/$pin]
}
foreach pin {s_axis_config_tready s_axis_data_tready} {
    connect_bd_net [get_bd_pins one1/dout] [get_bd_pins PHAT_IFFT_Ctrl_0/$pin]
}
foreach pin {spectrum_doutb m_axis_data_tdata} {
    connect_bd_net [get_bd_pins zero48/dout] [get_bd_pins PHAT_IFFT_Ctrl_0/$pin]
}
if {[catch {source [file join $verify_dir connect_bd.tcl]} message]} {
    puts "CONNECTION_SCRIPT_ERROR: $message"
    exit 1
}
foreach name {axi_gpio_0 axi_gpio_1} {
    foreach field {C_GPIO_WIDTH C_GPIO2_WIDTH} {
        if {[get_property CONFIG.$field [get_bd_cells $name]] != 32} {error "GPIO width wrong"}
    }
    foreach field {C_ALL_INPUTS C_ALL_INPUTS_2} {
        if {[get_property CONFIG.$field [get_bd_cells $name]] != 1} {error "GPIO direction wrong"}
    }
}
foreach {sp dp} {
    Lag_To_PS_0/gpio_word0 axi_gpio_0/gpio_io_i
    Lag_To_PS_0/gpio_word1 axi_gpio_0/gpio2_io_i
    Lag_To_PS_0/gpio_word2 axi_gpio_1/gpio_io_i
    Lag_To_PS_0/gpio_status axi_gpio_1/gpio2_io_i
    PHAT_IFFT_Ctrl_0/done Lag_To_PS_0/done
    PHAT_IFFT_Ctrl_0/clk Lag_To_PS_0/clk
    PHAT_IFFT_Ctrl_0/rst Lag_To_PS_0/rst
} {
    if {[get_bd_nets -of_objects [get_bd_pins $sp]] ne [get_bd_nets -of_objects [get_bd_pins $dp]]} {
        error "Connection mismatch $sp $dp"
    }
}
puts "PASS: connection script applied, all four GPIO widths/directions, clock/reset and done links checked in temporary Vivado BD"
close_project
exit
