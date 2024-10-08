" Vim syntax file
" Language:     QSF - Quartus Settings File
" Maintainer:   John-Philip Taylor - jpt13653903@gmail.com
" Last Change:  Sat Nov 25 10:44:00 2017
" Credits:      based on TCL Vim syntax file
" Version:  0.1

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the TCL syntax to start with
runtime! syntax/tcl.vim

syn keyword qsfConstraints
  \ set_global_assignment
  \ set_instance_assignment
  \ set_location_assignment

syn keyword qsfProperty
  \ ALLOW_POWER_UP_DONT_CARE
  \ CONFIGURATION_VCCIO_LEVEL
  \ CRC_ERROR_OPEN_DRAIN
  \ CURRENT_STRENGTH_NEW
  \ DEVICE
  \ ECO_REGENERATE_REPORT
  \ ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS
  \ ENABLE_INIT_DONE_OUTPUT
  \ FAMILY
  \ FITTER_EFFORT
  \ FLOW_ENABLE_IO_ASSIGNMENT_ANALYSIS
  \ FORCE_CONFIGURATION_VCCIO
  \ FORM_DDR_CLUSTERING_CLIQUE
  \ GENERATE_RBF_FILE
  \ GLOBAL_SIGNAL
  \ INPUT_TERMINATION
  \ IO_STANDARD
  \ IOBANK_VCCIO
  \ LAST_QUARTUS_VERSION
  \ MAX_CORE_JUNCTION_TEMP
  \ MAX_FANOUT
  \ MIN_CORE_JUNCTION_TEMP
  \ NUM_PARALLEL_PROCESSORS
  \ ON_CHIP_BITSTREAM_DECOMPRESSION
  \ OPTIMIZATION_TECHNIQUE
  \ OPTIMIZE_HOLD_TIMING
  \ OPTIMIZE_MULTI_CORNER_TIMING
  \ ORIGINAL_QUARTUS_VERSION
  \ OUTPUT_TERMINATION
  \ PACKAGE_SKEW_COMPENSATION
  \ PARTITION_COLOR
  \ PARTITION_FITTER_PRESERVATION_LEVEL
  \ PARTITION_HIERARCHY
  \ PARTITION_NETLIST_TYPE
  \ PHYSICAL_SYNTHESIS_COMBO_LOGIC
  \ PHYSICAL_SYNTHESIS_EFFORT
  \ PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION
  \ PHYSICAL_SYNTHESIS_REGISTER_RETIMING
  \ PLL_COMPENSATION_MODE
  \ POWER_BOARD_THERMAL_MODEL
  \ POWER_HSSI_VCCHIP_LEFT
  \ POWER_HSSI_VCCHIP_RIGHT
  \ POWER_PRESET_COOLING_SOLUTION
  \ PRE_FLOW_SCRIPT_FILE
  \ PROJECT_CREATION_TIME_DATE
  \ PROJECT_OUTPUT_DIRECTORY
  \ QIP_FILE
  \ QSYS_FILE
  \ RESERVE_DATA0_AFTER_CONFIGURATION
  \ SDC_FILE
  \ SMART_RECOMPILE
  \ SOURCE_FILE
  \ STRATIX_DEVICE_IO_STANDARD
  \ STRATIXV_CONFIGURATION_SCHEME
  \ SYNTH_TIMING_DRIVEN_SYNTHESIS
  \ SYSTEMVERILOG_FILE
  \ TERMINATION_CONTROL_BLOCK
  \ TOP_LEVEL_ENTITY
  \ UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE
  \ UNIPHY_TEMP_VER_CODE
  \ USE_CONFIGURATION_DEVICE
  \ USE_DLL_FREQUENCY_FOR_DQS_DELAY_CHAIN
  \ VCCA_L_USER_VOLTAGE
  \ VCCA_R_USER_VOLTAGE
  \ VCCR_L_USER_VOLTAGE
  \ VCCR_R_USER_VOLTAGE
  \ VCCT_L_USER_VOLTAGE
  \ VCCT_R_USER_VOLTAGE
  \ VERILOG_FILE
  \ VERILOG_INPUT_VERSION
  \ VERILOG_SHOW_LMF_MAPPING_MESSAGES
  \ VHDL_FILE
  \ VHDL_INPUT_VERSION
  \ VHDL_SHOW_LMF_MAPPING_MESSAGES
  \ XCVR_IO_PIN_TERMINATION
  \ XCVR_REFCLK_PIN_TERMINATION
  \ XCVR_RX_EQ_BW_SEL
  \ XCVR_VCCA_VOLTAGE
  \ XCVR_VCCR_VCCT_VOLTAGE

syn keyword qsfConstant
  \ ALL
  \ DIFFERENTIAL
  \ DIRECT
  \ LVDS
  \ NORMAL
  \ OFF
  \ ON
  \ PLACEMENT_AND_ROUTING
  \ POST_FIT
  \ SPEED
  \ SYSTEMVERILOG_2005
  \ VHDL_1993

syn keyword qsfSearch
  \ get_ports
  \ get_registers
  \ get_clocks
  \ get_pins

syn match qsfPin    "\<PIN_\(\a\|\d\)\+\>"
syn match qsfFlags  " -\(\a\|_\)\+\>"
syn match qsfNumber "\<\d\(\d\|_\|\.\)*\a*\>"

" Define the default highlighting.
hi def link qsfConstraints Operator
hi def link qsfPin         Type
hi def link qsfProperty    Type
hi def link qsfFlags       Special
hi def link qsfConstant    Constant
hi def link qsfNumber      Constant
hi def link qsfSearch      Operator

let b:current_syntax = "qsf"

