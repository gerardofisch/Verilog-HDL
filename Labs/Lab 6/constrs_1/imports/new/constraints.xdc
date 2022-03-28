set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells *]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets reset_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCAN_OUT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SEG_OUT1[0]}]
set_property PACKAGE_PIN C1 [get_ports {SCAN_OUT[6]}]
set_property PACKAGE_PIN C1 [get_ports {SCAN_OUT[5]}]
set_property PACKAGE_PIN H1 [get_ports {SCAN_OUT[4]}]
set_property PACKAGE_PIN G1 [get_ports {SCAN_OUT[3]}]
set_property PACKAGE_PIN F1 [get_ports {SCAN_OUT[2]}]
set_property PACKAGE_PIN E1 [get_ports {SCAN_OUT[1]}]
set_property PACKAGE_PIN G6 [get_ports {SCAN_OUT[0]}]
set_property PACKAGE_PIN D5 [get_ports {SEG_OUT2[7]}]
set_property PACKAGE_PIN B2 [get_ports {SEG_OUT2[6]}]
set_property PACKAGE_PIN B3 [get_ports {SEG_OUT2[5]}]
set_property PACKAGE_PIN A1 [get_ports {SEG_OUT2[4]}]
set_property PACKAGE_PIN B1 [get_ports {SEG_OUT2[3]}]
set_property PACKAGE_PIN A3 [get_ports {SEG_OUT2[2]}]
set_property PACKAGE_PIN B4 [get_ports {SEG_OUT2[0]}]
set_property PACKAGE_PIN A4 [get_ports {SEG_OUT2[1]}]
set_property PACKAGE_PIN D4 [get_ports {SEG_OUT1[0]}]
set_property PACKAGE_PIN E3 [get_ports {SEG_OUT1[1]}]
set_property PACKAGE_PIN D3 [get_ports {SEG_OUT1[2]}]
set_property PACKAGE_PIN F4 [get_ports {SEG_OUT1[3]}]
set_property PACKAGE_PIN F3 [get_ports {SEG_OUT1[4]}]
set_property PACKAGE_PIN E2 [get_ports {SEG_OUT1[5]}]
set_property PACKAGE_PIN D2 [get_ports {SEG_OUT1[6]}]
set_property PACKAGE_PIN H2 [get_ports {SEG_OUT1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports btn1]
set_property IOSTANDARD LVCMOS33 [get_ports btn2]
set_property IOSTANDARD LVCMOS33 [get_ports btn3]
set_property IOSTANDARD LVCMOS33 [get_ports switch]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN P5 [get_ports switch]
set_property PACKAGE_PIN P17 [get_ports clock]
set_property PACKAGE_PIN R17 [get_ports reset]

set_property IOSTANDARD LVCMOS33 [get_ports {new_value[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {new_value[0]}]
set_property PACKAGE_PIN P4 [get_ports {new_value[6]}]
set_property PACKAGE_PIN P3 [get_ports {new_value[5]}]
set_property PACKAGE_PIN P2 [get_ports {new_value[4]}]
set_property PACKAGE_PIN R1 [get_ports {new_value[0]}]
set_property PACKAGE_PIN M4 [get_ports {new_value[2]}]
set_property PACKAGE_PIN N4 [get_ports {new_value[1]}]
set_property PACKAGE_PIN R2 [get_ports {new_value[3]}]
set_property PACKAGE_PIN R11 [get_ports btn1]
set_property PACKAGE_PIN R15 [get_ports btn2]
set_property PACKAGE_PIN V1 [get_ports btn3]
