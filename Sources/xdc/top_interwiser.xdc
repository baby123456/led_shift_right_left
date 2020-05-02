create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports {clk}]

#-------------------------------------------------
# pblock_inst_shift_left 
#            for pr instance inst_shift_left
#-------------------------------------------------
create_pblock pblock_inst_shift_l
add_cells_to_pblock [get_pblocks pblock_inst_shift_l] [get_cells -quiet [list inst_shift_l]]
resize_pblock [get_pblocks pblock_inst_shift_l] -add {SLICE_X2Y65:SLICE_X16Y112}
resize_pblock [get_pblocks pblock_inst_shift_l] -add {DSP48E2_X0Y26:DSP48E2_X0Y43}
resize_pblock [get_pblocks pblock_inst_shift_l] -add {RAMB18_X0Y26:RAMB18_X1Y43}
resize_pblock [get_pblocks pblock_inst_shift_l] -add {RAMB36_X0Y13:RAMB36_X1Y21}

#-------------------------------------------------
# pblock_inst_shift_right
#            for pr instance inst_shift_right 
#-------------------------------------------------
create_pblock pblock_inst_shift_r
add_cells_to_pblock [get_pblocks pblock_inst_shift_r] [get_cells -quiet [list inst_shift_r]]
resize_pblock [get_pblocks pblock_inst_shift_r] -add {SLICE_X2Y124:SLICE_X13Y165}
resize_pblock [get_pblocks pblock_inst_shift_r] -add {DSP48E2_X0Y50:DSP48E2_X0Y65}
resize_pblock [get_pblocks pblock_inst_shift_r] -add {RAMB18_X0Y50:RAMB18_X1Y65}
resize_pblock [get_pblocks pblock_inst_shift_r] -add {RAMB36_X0Y25:RAMB36_X1Y32}

#CLK 
set_property PACKAGE_PIN F9 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]

#SW7
set_property PACKAGE_PIN E10 [get_ports rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_n]

#pin assignment for LEDS
#led0
set_property PACKAGE_PIN H10 [get_ports {shift_low_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_low_out[0]}]
#led1
set_property PACKAGE_PIN H9 [get_ports {shift_low_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_low_out[1]}]
#led2
set_property PACKAGE_PIN G10 [get_ports {shift_low_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_low_out[2]}]
#led3
set_property PACKAGE_PIN F10 [get_ports {shift_low_out[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_low_out[3]}]
#led4
set_property PACKAGE_PIN H11 [get_ports {shift_high_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_high_out[0]}]
#led5
set_property PACKAGE_PIN G11 [get_ports {shift_high_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_high_out[1]}]
#led6
set_property PACKAGE_PIN G12 [get_ports {shift_high_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_high_out[2]}]
#led7
set_property PACKAGE_PIN F12 [get_ports {shift_high_out[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {shift_high_out[3]}]
