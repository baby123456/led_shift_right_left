#-------------------------------------------------
# pblock_inst_shift_left 
#            for pr instance inst_shift_left
#-------------------------------------------------
create_pblock pblock_inst_shift_left
add_cells_to_pblock [get_pblocks pblock_inst_shift_left] [get_cells -quiet [list inst_shift_left]]
resize_pblock [get_pblocks pblock_inst_shift_left] -add {SLICE_X2Y65:SLICE_X16Y112}
resize_pblock [get_pblocks pblock_inst_shift_left] -add {DSP48E2_X0Y26:DSP48E2_X0Y43}
resize_pblock [get_pblocks pblock_inst_shift_left] -add {RAMB18_X0Y26:RAMB18_X1Y43}
resize_pblock [get_pblocks pblock_inst_shift_left] -add {RAMB36_X0Y13:RAMB36_X1Y21}

#-------------------------------------------------
# pblock_inst_shift_right
#            for pr instance inst_shift_right 
#-------------------------------------------------
create_pblock pblock_inst_shift_right
add_cells_to_pblock [get_pblocks pblock_inst_shift_right] [get_cells -quiet [list inst_shift_right]]
resize_pblock [get_pblocks pblock_inst_shift_right] -add {SLICE_X2Y124:SLICE_X13Y165}
resize_pblock [get_pblocks pblock_inst_shift_right] -add {DSP48E2_X0Y50:DSP48E2_X0Y65}
resize_pblock [get_pblocks pblock_inst_shift_right] -add {RAMB18_X0Y50:RAMB18_X1Y65}
resize_pblock [get_pblocks pblock_inst_shift_right] -add {RAMB36_X0Y25:RAMB36_X1Y32}