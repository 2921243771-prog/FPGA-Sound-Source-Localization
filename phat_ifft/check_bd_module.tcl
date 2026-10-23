set source_dir [file normalize [file dirname [info script]]]
set build_dir [file normalize [file join $env(TEMP) "phat_bd_[pid]"]]
file mkdir $build_dir
cd $build_dir
set_param general.maxThreads 1
create_project phat_bd_check $build_dir -part xc7z020clg400-1 -force
foreach name {PHAT_Norm_Core.v PHAT_Weight.v PHAT_IFFT_Ctrl.v FFT_IFFT_Mux.v} {
    file copy -force [file join $source_dir $name] [file join $build_dir $name]
    add_files [file join $build_dir $name]
}
update_compile_order -fileset sources_1
create_bd_design bd_test
set failed 0
foreach name {PHAT_IFFT_Ctrl FFT_IFFT_Mux} {
    if {[catch {create_bd_cell -type module -reference $name ${name}_0} message]} {
        puts "BD_MODULE_FAIL $name: $message"
        set failed 1
    } else {
        puts "BD_MODULE_PASS $name"
    }
}
save_bd_design
set fp [open [file join $source_dir bd_module_result.txt] w]
puts $fp "Vivado 2018.3 module-reference creation. Failure flag=$failed"
puts $fp "Build directory: $build_dir"
close $fp
close_project
exit $failed
