# Run in an ASCII-only, short build directory containing rtl/, sim/, vectors/.
# A probe project may already be present from probe_ip.tcl.
if {[file exists project/gcc_probe.xpr]} {
    open_project project/gcc_probe.xpr
} else {
    source scripts/create_project.tcl
}
add_files -norecurse [glob rtl/*.v]
add_files -fileset sim_1 -norecurse [glob sim/*.sv]
add_files -norecurse [glob vectors/*.mem]
set_property top gcc_phat_4mic [current_fileset]
set_property top tb_units [get_filesets sim_1]
set_property xsim.simulate.runtime all [get_filesets sim_1]
set_property xsim.elaborate.debug_level off [get_filesets sim_1]
update_compile_order -fileset sources_1
file mkdir reports
file copy -force vectors/reference_results.json reports/reference_results.json
proc check_sim_log {marker destination} {
    set filename [file join [pwd] project gcc_probe.sim sim_1 behav xsim simulate.log]
    set stream [open $filename r]
    set contents [read $stream]
    close $stream
    file copy -force $filename $destination
    if {[string first $marker $contents] < 0 || [string first "Fatal:" $contents] >= 0} {
        error "Simulation failed; see $destination"
    }
}
launch_simulation -simset sim_1 -mode behavioral
close_sim
check_sim_log "PASS: in-flight arithmetic reset" reports/units.log
set_property top tb_gcc_phat_4mic [get_filesets sim_1]
launch_simulation -simset sim_1 -mode behavioral
close_sim
check_sim_log "PASS: 10 complete 4-mic frames" reports/integration.log
file copy -force project/gcc_probe.sim/sim_1/behav/xsim/rtl_results.csv reports/rtl_results.csv
puts "GCC_SIMULATION_FINISHED"
close_project
