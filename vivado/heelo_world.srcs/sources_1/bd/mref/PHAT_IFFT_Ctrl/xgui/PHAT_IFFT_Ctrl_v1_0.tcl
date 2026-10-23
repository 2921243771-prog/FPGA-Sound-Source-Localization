# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BAND_HIGH_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BAND_LOW_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_LAG_DIAG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_LAG_SIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_MAG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_PEAK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAM_READ_LATENCY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLE_RATE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BAND_HIGH_HZ { PARAM_VALUE.BAND_HIGH_HZ } {
	# Procedure called to update BAND_HIGH_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAND_HIGH_HZ { PARAM_VALUE.BAND_HIGH_HZ } {
	# Procedure called to validate BAND_HIGH_HZ
	return true
}

proc update_PARAM_VALUE.BAND_LOW_HZ { PARAM_VALUE.BAND_LOW_HZ } {
	# Procedure called to update BAND_LOW_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BAND_LOW_HZ { PARAM_VALUE.BAND_LOW_HZ } {
	# Procedure called to validate BAND_LOW_HZ
	return true
}

proc update_PARAM_VALUE.MAX_LAG_DIAG { PARAM_VALUE.MAX_LAG_DIAG } {
	# Procedure called to update MAX_LAG_DIAG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_LAG_DIAG { PARAM_VALUE.MAX_LAG_DIAG } {
	# Procedure called to validate MAX_LAG_DIAG
	return true
}

proc update_PARAM_VALUE.MAX_LAG_SIDE { PARAM_VALUE.MAX_LAG_SIDE } {
	# Procedure called to update MAX_LAG_SIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_LAG_SIDE { PARAM_VALUE.MAX_LAG_SIDE } {
	# Procedure called to validate MAX_LAG_SIDE
	return true
}

proc update_PARAM_VALUE.MIN_MAG { PARAM_VALUE.MIN_MAG } {
	# Procedure called to update MIN_MAG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_MAG { PARAM_VALUE.MIN_MAG } {
	# Procedure called to validate MIN_MAG
	return true
}

proc update_PARAM_VALUE.MIN_PEAK { PARAM_VALUE.MIN_PEAK } {
	# Procedure called to update MIN_PEAK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_PEAK { PARAM_VALUE.MIN_PEAK } {
	# Procedure called to validate MIN_PEAK
	return true
}

proc update_PARAM_VALUE.RAM_READ_LATENCY { PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to update RAM_READ_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_READ_LATENCY { PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to validate RAM_READ_LATENCY
	return true
}

proc update_PARAM_VALUE.SAMPLE_RATE { PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to update SAMPLE_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLE_RATE { PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to validate SAMPLE_RATE
	return true
}


proc update_MODELPARAM_VALUE.RAM_READ_LATENCY { MODELPARAM_VALUE.RAM_READ_LATENCY PARAM_VALUE.RAM_READ_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_READ_LATENCY}] ${MODELPARAM_VALUE.RAM_READ_LATENCY}
}

proc update_MODELPARAM_VALUE.SAMPLE_RATE { MODELPARAM_VALUE.SAMPLE_RATE PARAM_VALUE.SAMPLE_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLE_RATE}] ${MODELPARAM_VALUE.SAMPLE_RATE}
}

proc update_MODELPARAM_VALUE.BAND_LOW_HZ { MODELPARAM_VALUE.BAND_LOW_HZ PARAM_VALUE.BAND_LOW_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAND_LOW_HZ}] ${MODELPARAM_VALUE.BAND_LOW_HZ}
}

proc update_MODELPARAM_VALUE.BAND_HIGH_HZ { MODELPARAM_VALUE.BAND_HIGH_HZ PARAM_VALUE.BAND_HIGH_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BAND_HIGH_HZ}] ${MODELPARAM_VALUE.BAND_HIGH_HZ}
}

proc update_MODELPARAM_VALUE.MAX_LAG_SIDE { MODELPARAM_VALUE.MAX_LAG_SIDE PARAM_VALUE.MAX_LAG_SIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_LAG_SIDE}] ${MODELPARAM_VALUE.MAX_LAG_SIDE}
}

proc update_MODELPARAM_VALUE.MAX_LAG_DIAG { MODELPARAM_VALUE.MAX_LAG_DIAG PARAM_VALUE.MAX_LAG_DIAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_LAG_DIAG}] ${MODELPARAM_VALUE.MAX_LAG_DIAG}
}

proc update_MODELPARAM_VALUE.MIN_MAG { MODELPARAM_VALUE.MIN_MAG PARAM_VALUE.MIN_MAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_MAG}] ${MODELPARAM_VALUE.MIN_MAG}
}

proc update_MODELPARAM_VALUE.MIN_PEAK { MODELPARAM_VALUE.MIN_PEAK PARAM_VALUE.MIN_PEAK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_PEAK}] ${MODELPARAM_VALUE.MIN_PEAK}
}

