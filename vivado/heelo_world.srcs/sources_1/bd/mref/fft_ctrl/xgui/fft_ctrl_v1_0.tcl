# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IFFT_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAM_READ_LATENCY" -parent ${Page_0}


}

proc update_PARAM_VALUE.IFFT_MODE { PARAM_VALUE.IFFT_MODE } {
	# Procedure called to update IFFT_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IFFT_MODE { PARAM_VALUE.IFFT_MODE } {
	# Procedure called to validate IFFT_MODE
	return true
}

proc update_PARAM_VALUE.RAM_READ_LATENCY { PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to update RAM_READ_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_READ_LATENCY { PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to validate RAM_READ_LATENCY
	return true
}


proc update_MODELPARAM_VALUE.RAM_READ_LATENCY { MODELPARAM_VALUE.RAM_READ_LATENCY PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_READ_LATENCY}] ${MODELPARAM_VALUE.RAM_READ_LATENCY}
}

proc update_MODELPARAM_VALUE.IFFT_MODE { MODELPARAM_VALUE.IFFT_MODE PARAM_VALUE.IFFT_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IFFT_MODE}] ${MODELPARAM_VALUE.IFFT_MODE}
}

