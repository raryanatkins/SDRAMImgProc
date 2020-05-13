set_global_assignment -entity "div" -library "lib_div" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "div" -library "lib_div" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "div" -library "lib_div" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_div" -name SPD_FILE [file join $::quartus(sip_path) "div.spd"]

set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div_memoryC0_uid146_invTables_lutmem.hex"]
set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div_memoryC0_uid147_invTables_lutmem.hex"]
set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div_memoryC1_uid150_invTables_lutmem.hex"]
set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div_memoryC1_uid151_invTables_lutmem.hex"]
set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div_memoryC2_uid154_invTables_lutmem.hex"]
set_global_assignment -library "lib_div" -name MISC_FILE [file join $::quartus(sip_path) "div_sim/div.vo"]
