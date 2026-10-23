# Read-only inspection of the implemented checkpoint; no FPGA/JTAG operations.
open_checkpoint {D:/FPGA/heelo_world/heelo_world.runs/impl_1/core_wrapper_routed.dcp}
set hub [get_debug_cores -quiet dbg_hub]
puts "CHECK_DEBUG_HUB=$hub"
if {[llength $hub]} {
    puts "CHECK_SCAN_CHAIN=[get_property C_USER_SCAN_CHAIN $hub]"
    puts "CHECK_HUB_CLOCK_HZ=[get_property C_CLK_INPUT_FREQ_HZ $hub]"
}
set hp [get_pins -quiet dbg_hub/clk]
if {[llength $hp]} {
    puts "CHECK_HUB_CLOCK_NET=[get_nets -of_objects $hp]"
    puts "CHECK_HUB_CLOCK_SOURCE=[all_fanin -flat -startpoints_only -to $hp]"
}
set ip [get_pins -quiet core_i/ila_0/inst/clk]
if {[llength $ip]} {
    puts "CHECK_ILA_CLOCK_NET=[get_nets -of_objects $ip]"
    puts "CHECK_ILA_CLOCK_SOURCE=[all_fanin -flat -startpoints_only -to $ip]"
}
close_design
