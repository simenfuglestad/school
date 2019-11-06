onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ram32x8_sf_vhd_tst/address
add wave -noupdate /ram32x8_sf_vhd_tst/clk
add wave -noupdate /ram32x8_sf_vhd_tst/data_in
add wave -noupdate -expand /ram32x8_sf_vhd_tst/data_out
add wave -noupdate /ram32x8_sf_vhd_tst/WR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61184604 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {250609664 ps}
