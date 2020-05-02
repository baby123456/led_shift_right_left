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
