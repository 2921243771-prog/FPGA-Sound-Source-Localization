# Execute after simulate.tcl in the same build directory.
if {[file exists project/gcc_probe.xpr]} {
    open_project project/gcc_probe.xpr
} else {
    source scripts/create_project.tcl
    add_files -norecurse [glob rtl/*.v]
    add_files -norecurse vectors/hann_2048.mem
}
set_property top gcc_phat_4mic [current_fileset]
update_compile_order -fileset sources_1
file copy -force vectors/hann_2048.mem hann_2048.mem
if {[llength [get_runs -quiet gcc_fft_ip_synth_1]] == 0} {
    create_ip_run [get_ips gcc_fft_ip]
}
launch_runs gcc_fft_ip_synth_1 -jobs 2
wait_on_run gcc_fft_ip_synth_1
if {[get_property PROGRESS [get_runs gcc_fft_ip_synth_1]] ne "100%"} {
    error "FFT IP synthesis failed"
}
synth_design -top gcc_phat_4mic -part xc7z020clg400-1 -mode out_of_context
if {[llength [get_cells -quiet -hier -filter {IS_BLACKBOX == 1}]] != 0} {
    error "Synthesis still contains a black box"
}
create_clock -name algorithm_clk -period 10.000 [get_ports clk]
file mkdir reports
report_utilization -hierarchical -file reports/utilization_synth.rpt
report_timing_summary -file reports/timing_synth.rpt
write_checkpoint -force reports/gcc_phat_synth.dcp
opt_design
place_design
route_design
report_utilization -file reports/utilization_routed.rpt
report_timing_summary -file reports/timing_routed.rpt
write_checkpoint -force reports/gcc_phat_routed.dcp
puts "GCC_SYNTHESIS_AND_ROUTE_FINISHED"
close_project
