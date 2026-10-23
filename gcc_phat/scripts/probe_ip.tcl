create_project gcc_probe [file join [pwd] project] -part xc7z020clg400-1 -force
create_ip -name xfft -vendor xilinx.com -library ip -version 9.1 -module_name gcc_fft_ip
set_property -dict [list \
    CONFIG.transform_length {4096} \
    CONFIG.implementation_options {radix_4_burst_io} \
    CONFIG.data_format {fixed_point} \
    CONFIG.input_width {24} \
    CONFIG.phase_factor_width {24} \
    CONFIG.scaling_options {block_floating_point} \
    CONFIG.output_ordering {natural_order} \
    CONFIG.throttle_scheme {nonrealtime} \
    CONFIG.aresetn {true} \
    CONFIG.target_clock_frequency {100}] [get_ips gcc_fft_ip]
generate_target all [get_ips gcc_fft_ip]
puts "GCC_IP_PROBE_OK"
close_project
