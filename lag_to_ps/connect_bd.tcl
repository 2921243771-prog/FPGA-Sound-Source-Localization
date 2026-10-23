# Run INSIDE the current Vivado GUI Tcl Console with the core BD open:
# source {C:/Users/Administrator/Desktop/FPGA声源/lag_to_ps/connect_bd.tcl}
# Reuses the two existing AXI GPIO cores. Does not generate/program bitstream.
set lag_script_dir [file normalize [file dirname [info script]]]
set lag_rtl [file join $lag_script_dir Lag_To_PS.v]
if {[current_bd_design -quiet] eq ""} { error "Open the existing core Block Design first." }
foreach name {axi_gpio_0 axi_gpio_1 PHAT_IFFT_Ctrl_0} {
    if {[llength [get_bd_cells -quiet $name]] != 1} {error "Required BD cell missing: $name"}
}
foreach name {clk rst done lag12 lag13 lag14 lag23 lag24 lag34 lag_valid frame_error} {
    if {[llength [get_bd_pins -quiet PHAT_IFFT_Ctrl_0/$name]] != 1} {
        error "Missing PHAT pin: $name"
    }
}
if {![file exists $lag_rtl]} {error "Missing RTL: $lag_rtl"}
save_bd_design
set lag_bd_path [get_property FILE_NAME [current_bd_design]]
if {![file exists $lag_bd_path]} {
    set lag_bd_files [get_files -quiet -all "*/[file tail $lag_bd_path]"]
    if {[llength $lag_bd_files] != 1} {error "Cannot resolve current BD file for backup: $lag_bd_path"}
    set lag_bd_path [get_property NAME [lindex $lag_bd_files 0]]
}
set lag_backup_dir [file join $lag_script_dir backups]
file mkdir $lag_backup_dir
set lag_backup [file join $lag_backup_dir "[file rootname [file tail $lag_bd_path]]_before_lag_[clock format [clock seconds] -format %Y%m%d_%H%M%S].bd"]
file copy -force $lag_bd_path $lag_backup
puts "Original BD saved to: $lag_backup"

if {[llength [get_files -quiet $lag_rtl]] == 0} {add_files -norecurse $lag_rtl}
update_compile_order -fileset sources_1
if {[llength [get_bd_cells -quiet Lag_To_PS_0]] == 0} {
    create_bd_cell -type module -reference Lag_To_PS Lag_To_PS_0
}
foreach name {axi_gpio_0 axi_gpio_1} {
    set_property -dict [list CONFIG.C_IS_DUAL 1 CONFIG.C_GPIO_WIDTH 32 \
        CONFIG.C_GPIO2_WIDTH 32 CONFIG.C_ALL_INPUTS 1 CONFIG.C_ALL_INPUTS_2 1 \
        CONFIG.C_ALL_OUTPUTS 0 CONFIG.C_ALL_OUTPUTS_2 0] [get_bd_cells $name]
}

# Disconnect only a destination pin, preserving other branches (ILA, RAM etc.).
proc lag_link_pin {source destination} {
    set sp [get_bd_pins $source]
    set dp [get_bd_pins $destination]
    set sn [get_bd_nets -quiet -of_objects $sp]
    set dn [get_bd_nets -quiet -of_objects $dp]
    if {[llength $sn] && $sn eq $dn} {return}
    if {[llength $dn]} {disconnect_bd_net [lindex $dn 0] $dp}
    if {[llength $sn]} {
        connect_bd_net -net [lindex $sn 0] $dp
    } else {connect_bd_net $sp $dp}
}
foreach name {clk rst done lag12 lag13 lag14 lag23 lag24 lag34 lag_valid frame_error} {
    lag_link_pin PHAT_IFFT_Ctrl_0/$name Lag_To_PS_0/$name
}
lag_link_pin Lag_To_PS_0/gpio_word0 axi_gpio_0/gpio_io_i
lag_link_pin Lag_To_PS_0/gpio_word1 axi_gpio_0/gpio2_io_i
lag_link_pin Lag_To_PS_0/gpio_word2 axi_gpio_1/gpio_io_i
lag_link_pin Lag_To_PS_0/gpio_status axi_gpio_1/gpio2_io_i
validate_bd_design
save_bd_design
puts "LAG GPIO connection complete. Generate bitstream; export hardware with bitstream; update SDK BSP before using main.c."
