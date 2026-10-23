set source_dir [file normalize [file dirname [info script]]]
set build_dir [file normalize [file join $env(TEMP) "phat_synth_[pid]"]]
file mkdir $build_dir
set_param general.maxThreads 1
cd $build_dir
create_project phat_check $build_dir -part xc7z020clg400-1 -force
foreach name {PHAT_Norm_Core.v PHAT_Weight.v PHAT_IFFT_Ctrl.v} {
    file copy -force [file join $source_dir $name] [file join $build_dir $name]
    read_verilog [file join $build_dir $name]
}
synth_design -top PHAT_IFFT_Ctrl -part xc7z020clg400-1 -mode out_of_context
create_clock -period 20.000 -name algorithm_clk [get_ports clk]
set_false_path -from [get_ports rst]
opt_design
place_design
route_design
report_utilization -file [file join $source_dir utilization.txt]
report_timing_summary -file [file join $source_dir timing_summary.txt]
set paths [get_timing_paths -max_paths 1 -nworst 1]
set slack [get_property SLACK $paths]
puts "PHAT_OOC_50MHZ_WNS=$slack"
set fp [open [file join $source_dir synthesis_result.txt] w]
puts $fp "Part: xc7z020clg400-1"
puts $fp "Target clock period: 20 ns (50 MHz)"
puts $fp "Internal placed/routed worst setup slack (ns): $slack"
puts $fp "This checks the PHAT controller only. External FFT/RAM IP, complete-design timing and board behavior are excluded."
close $fp
close_project
