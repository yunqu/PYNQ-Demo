##Buttons
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {pb_input[0]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {pb_input[1]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {pb_input[2]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {pb_input[3]}]

##LEDs
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {LED[3]}]

##Arduino shield digital io ar_shield
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {ar_shield[0]}];  #io0
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {ar_shield[1]}];  #io1
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {ar_shield[2]}];  #io2
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {ar_shield[3]}];  #io3
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {ar_shield[4]}];  #io4

set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {ar_shield[5]}];  #io5
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {ar_shield[6]}];  #io6
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {ar_shield[7]}];  #io7
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {ar_shield[8]}];  #io8
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {ar_shield[9]}];  #io9

set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {ar_shield[10]}];  #io10
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {ar_shield[11]}];  #io11
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {ar_shield[12]}];  #io12
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {ar_shield[13]}];  #io13

##ChipKit io signals on upper inner right row header 
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {ar_shield[14]}];  #io26
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {ar_shield[15]}];  #io27
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports {ar_shield[16]}];  #io28
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {ar_shield[17]}];  #io29
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {ar_shield[18]}];  #io30
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {ar_shield[19]}];  #io31
set_property PULLUP true [get_ports {ar_shield[*]}]

##ChipKit io signals on upper inner left row header 
set_property -dict { PACKAGE_PIN W10 IOSTANDARD LVCMOS33 } [get_ports { seeed_gpio_tri_io[0] }]; #io34, STATUS
set_property -dict { PACKAGE_PIN W6  IOSTANDARD LVCMOS33 } [get_ports { seeed_gpio_tri_io[1] }]; #io35, Board Check
set_property -dict { PACKAGE_PIN Y6  IOSTANDARD LVCMOS33 } [get_ports { seeed_gpio_tri_io[2] }]; #io36, PWR
set_property -dict { PACKAGE_PIN Y7  IOSTANDARD LVCMOS33 } [get_ports { seeed_gpio_tri_io[3] }]; #io37, Buzzer

##pmod Header JA
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[1]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[0]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {pmodJA[3]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {pmodJA[2]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[5]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[4]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[7]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[6]}]
set_property PULLUP true [get_ports {pmodJA[2]}]
set_property PULLUP true [get_ports {pmodJA[3]}]
set_property PULLUP true [get_ports {pmodJA[6]}]
set_property PULLUP true [get_ports {pmodJA[7]}]

##pmod Header JB
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {pmodJB[1]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {pmodJB[0]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {pmodJB[3]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {pmodJB[2]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {pmodJB[5]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {pmodJB[4]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {pmodJB[7]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {pmodJB[6]}]
set_property PULLUP true [get_ports {pmodJB[2]}]
set_property PULLUP true [get_ports {pmodJB[3]}]
set_property PULLUP true [get_ports {pmodJB[6]}]
set_property PULLUP true [get_ports {pmodJB[7]}]

##pg_clk on Arduino SDA (2nd left most pin of the top-row of header
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports pg_clk]
# set_property PULLUP true [get_ports pg_clk]
##pg_scl on Arduino SCL (left most pin of the top-row of header
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports scl[0]]
set_property PULLUP true [get_ports {scl[0]}]
set_property -dict { PACKAGE_PIN Y8 IOSTANDARD LVCMOS33 } [get_ports { scl[1] }]; #IO_L14N_T2_SRCC_13 Sch=ck_io[39]
set_property PULLUP true [get_ports {scl[1]}]
set_property -dict { PACKAGE_PIN W9 IOSTANDARD LVCMOS33 } [get_ports { scl[2] }]; #IO_L16N_T2_13 Sch=ck_io[40]
set_property PULLUP true [get_ports {scl[2]}]
set_property -dict { PACKAGE_PIN Y9 IOSTANDARD LVCMOS33 } [get_ports { pg_bit30 }]; #IO_L14P_T2_SRCC_13 Sch=ck_io[41]
set_property PULLUP true [get_ports pg_bit30]
