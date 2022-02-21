EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer_RTC:DS3231M U2
U 1 1 60FF002F
P 7450 2350
F 0 "U2" H 7950 2750 50  0000 C CNN
F 1 "DS3231M" H 7700 2750 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 7450 1750 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 7720 2400 50  0001 C CNN
	1    7450 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 2850 7250 3000
Wire Wire Line
	7250 3000 7000 3000
$Comp
L power:Earth #PWR06
U 1 1 60FF77E5
P 7850 2350
F 0 "#PWR06" H 7850 2100 50  0001 C CNN
F 1 "Earth" H 7850 2200 50  0001 C CNN
F 2 "" H 7850 2350 50  0001 C CNN
F 3 "~" H 7850 2350 50  0001 C CNN
	1    7850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60FF8F89
P 7000 3250
F 0 "R2" H 7070 3296 50  0000 L CNN
F 1 "220" H 7070 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6930 3250 50  0001 C CNN
F 3 "~" H 7000 3250 50  0001 C CNN
F 4 "I" H 7000 3250 50  0001 C CNN "Spice_Primitive"
F 5 "Y" H 7000 3250 50  0001 C CNN "Spice_Netlist_Enabled"
F 6 "dc 3" H 7000 3250 50  0001 C CNN "Spice_Model"
	1    7000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3100 7000 3000
Connection ~ 7000 3000
Wire Wire Line
	7000 3000 6650 3000
Wire Wire Line
	6650 4100 6400 4100
Wire Wire Line
	6650 3000 6650 4100
Wire Wire Line
	6750 3500 6750 4000
Wire Wire Line
	6750 4000 6400 4000
Wire Wire Line
	6550 3400 6550 2450
Wire Wire Line
	6000 2450 6000 2600
$Comp
L Device:R R3
U 1 1 60FFCDA3
P 7350 3250
F 0 "R3" H 7420 3296 50  0000 L CNN
F 1 "220" H 7420 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7280 3250 50  0001 C CNN
F 3 "~" H 7350 3250 50  0001 C CNN
F 4 "I" H 7350 3250 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3" H 7350 3250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7350 3250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3400 6550 3400
$Comp
L power:Earth #PWR01
U 1 1 61006460
P 3800 3050
F 0 "#PWR01" H 3800 2800 50  0001 C CNN
F 1 "Earth" H 3800 2900 50  0001 C CNN
F 2 "" H 3800 3050 50  0001 C CNN
F 3 "~" H 3800 3050 50  0001 C CNN
	1    3800 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2450 6000 2450
Connection ~ 6000 2450
$Comp
L Regulator_Linear:L7805 U1
U 1 1 6100C2F2
P 4500 1700
F 0 "U1" H 4500 1942 50  0000 C CNN
F 1 "L7805" H 4500 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4525 1550 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4500 1650 50  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR02
U 1 1 6100CA98
P 4500 2000
F 0 "#PWR02" H 4500 1750 50  0001 C CNN
F 1 "Earth" H 4500 1850 50  0001 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "~" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1700 4150 1700
Wire Wire Line
	4150 1700 4150 1850
Wire Wire Line
	4500 2000 4400 2000
Wire Wire Line
	4400 2000 4400 2150
Wire Wire Line
	4400 2150 4150 2150
Connection ~ 4500 2000
Wire Wire Line
	4500 2000 4650 2000
Wire Wire Line
	4650 2000 4650 2150
Wire Wire Line
	4650 2150 4900 2150
Wire Wire Line
	4800 1700 4900 1700
Wire Wire Line
	4900 1700 4900 1850
Wire Wire Line
	5700 2250 6600 2250
Wire Wire Line
	6600 2250 6600 3550
Wire Wire Line
	6600 3550 6400 3550
Wire Wire Line
	6400 3550 6400 3600
Wire Wire Line
	5700 1700 6350 1700
Wire Wire Line
	6350 1700 6350 2600
Wire Wire Line
	6350 2600 6100 2600
$Comp
L Device:R R1
U 1 1 6102509E
P 5450 2250
F 0 "R1" H 5520 2296 50  0000 L CNN
F 1 "220" H 5520 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5380 2250 50  0001 C CNN
F 3 "~" H 5450 2250 50  0001 C CNN
F 4 "I" H 5450 2250 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3" H 5450 2250 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5450 2250 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2100 5700 2100
$Comp
L power:Earth #PWR03
U 1 1 61028491
P 5150 2300
F 0 "#PWR03" H 5150 2050 50  0001 C CNN
F 1 "Earth" H 5150 2150 50  0001 C CNN
F 2 "" H 5150 2300 50  0001 C CNN
F 3 "~" H 5150 2300 50  0001 C CNN
	1    5150 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2100 5700 2250
Wire Wire Line
	5450 2300 5450 2400
Wire Wire Line
	4900 1700 5200 1700
Wire Wire Line
	5200 1700 5200 2550
Wire Wire Line
	5200 2550 5800 2550
Wire Wire Line
	5800 2550 5800 2600
Connection ~ 4900 1700
Wire Wire Line
	5150 2300 5300 2300
Wire Wire Line
	5300 2300 5300 2400
Wire Wire Line
	5300 2400 5450 2400
Connection ~ 5450 2400
Wire Wire Line
	6000 2450 6550 2450
Connection ~ 6550 2450
Wire Wire Line
	6550 2450 6750 2450
NoConn ~ 7550 1850
NoConn ~ 7250 1850
NoConn ~ 7650 2850
$Comp
L power:GND #PWR04
U 1 1 610555E4
P 5900 4600
F 0 "#PWR04" H 5900 4350 50  0001 C CNN
F 1 "GND" H 5905 4427 50  0000 C CNN
F 2 "" H 5900 4600 50  0001 C CNN
F 3 "" H 5900 4600 50  0001 C CNN
	1    5900 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 610567D2
P 6000 4600
F 0 "#PWR05" H 6000 4350 50  0001 C CNN
F 1 "GND" H 6005 4427 50  0000 C CNN
F 2 "" H 6000 4600 50  0001 C CNN
F 3 "" H 6000 4600 50  0001 C CNN
	1    6000 4600
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3000
NoConn ~ 5400 3100
NoConn ~ 5400 3200
NoConn ~ 5400 3300
NoConn ~ 5400 3400
NoConn ~ 5400 3500
NoConn ~ 5400 3600
NoConn ~ 5400 3700
NoConn ~ 5400 3800
NoConn ~ 6400 3000
NoConn ~ 6400 3100
NoConn ~ 6400 3400
NoConn ~ 6400 3700
NoConn ~ 6400 3800
NoConn ~ 6400 3900
NoConn ~ 6400 4200
NoConn ~ 6400 4300
$Comp
L power:Earth #PWR07
U 1 1 61073368
P 6750 2350
F 0 "#PWR07" H 6750 2100 50  0001 C CNN
F 1 "Earth" H 6750 2200 50  0001 C CNN
F 2 "" H 6750 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	0    1    1    0   
$EndComp
Connection ~ 6750 2450
Wire Wire Line
	6750 2450 7050 2450
$Comp
L power:Earth #PWR08
U 1 1 610755CA
P 6750 2750
F 0 "#PWR08" H 6750 2500 50  0001 C CNN
F 1 "Earth" H 6750 2600 50  0001 C CNN
F 2 "" H 6750 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 610787AD
P 5900 2000
F 0 "J2" H 5980 1992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5980 1901 50  0000 L CNN
F 2 "malichis_footprints:Battery_Input" H 5900 2000 50  0001 C CNN
F 3 "~" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Connection ~ 5700 2100
Wire Wire Line
	5700 1700 5700 2000
Wire Wire Line
	4150 1500 4150 1700
Connection ~ 4150 1700
$Comp
L power:Earth #PWR09
U 1 1 61084894
P 3950 1400
F 0 "#PWR09" H 3950 1150 50  0001 C CNN
F 1 "Earth" H 3950 1250 50  0001 C CNN
F 2 "" H 3950 1400 50  0001 C CNN
F 3 "~" H 3950 1400 50  0001 C CNN
	1    3950 1400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 610868FF
P 3700 1500
F 0 "J3" H 3728 1476 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3728 1385 50  0000 L CNN
F 2 "malichis_footprints:Battery_Input" H 3700 1500 50  0001 C CNN
F 3 "~" H 3700 1500 50  0001 C CNN
	1    3700 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 1400 3900 1400
$Comp
L Connector:Saif_micro_sd J1
U 1 1 610958CB
P 2900 3250
F 0 "J1" H 2843 2433 50  0000 C CNN
F 1 "Saif_micro_sd" H 2843 2524 50  0000 C CNN
F 2 "malichis_footprints:SD_Module" H 4050 3550 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 2900 3250 50  0001 C CNN
	1    2900 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 61098C2B
P 4150 1100
F 0 "J4" V 4114 912 50  0000 R CNN
F 1 "switch " V 4023 912 50  0000 R CNN
F 2 "malichis_footprints:grounded_switch" H 4150 1100 50  0001 C CNN
F 3 "~" H 4150 1100 50  0001 C CNN
	1    4150 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 1500 4100 1300
Wire Wire Line
	4100 1300 4150 1300
Wire Wire Line
	3900 1500 4100 1500
Wire Wire Line
	4150 1500 4250 1500
Wire Wire Line
	4250 1500 4250 1300
$Comp
L Device:Battery_Cell BT1
U 1 1 612EC238
P 6850 1750
F 0 "BT1" V 6595 1800 50  0000 C CNN
F 1 "Battery_Cell" V 6686 1800 50  0000 C CNN
F 2 "malichis_footprints:battery_holder_10mm" V 6850 1810 50  0001 C CNN
F 3 "~" V 6850 1810 50  0001 C CNN
	1    6850 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 2350 7050 1750
Connection ~ 7050 2350
$Comp
L power:Earth #PWR0101
U 1 1 612F1E3D
P 6750 1750
F 0 "#PWR0101" H 6750 1500 50  0001 C CNN
F 1 "Earth" H 6750 1600 50  0001 C CNN
F 2 "" H 6750 1750 50  0001 C CNN
F 3 "~" H 6750 1750 50  0001 C CNN
	1    6750 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 613195AA
P 4150 2000
F 0 "C1" H 4265 2046 50  0000 L CNN
F 1 "0.1" H 4265 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4188 1850 50  0001 C CNN
F 3 "~" H 4150 2000 50  0001 C CNN
F 4 "I" H 4150 2000 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3" H 4150 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4150 2000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61326F6E
P 4900 2000
F 0 "C2" H 5015 2046 50  0000 L CNN
F 1 "0.33" H 5015 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4938 1850 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
F 4 "I" H 4900 2000 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3" H 4900 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4900 2000 50  0001 C CNN "Spice_Netlist_Enabled"
	1    4900 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 613279DD
P 6750 2600
F 0 "C3" H 6865 2646 50  0000 L CNN
F 1 "0.33" H 6865 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6788 2450 50  0001 C CNN
F 3 "~" H 6750 2600 50  0001 C CNN
F 4 "R" H 6750 2600 50  0001 C CNN "Spice_Primitive"
F 5 "0.33e-6" H 6750 2600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6750 2600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6750 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6132B6CB
P 6900 2350
F 0 "C4" V 7152 2350 50  0000 C CNN
F 1 "0.1" V 7061 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6938 2200 50  0001 C CNN
F 3 "~" H 6900 2350 50  0001 C CNN
F 4 "R" H 6900 2350 50  0001 C CNN "Spice_Primitive"
F 5 "0.1e-6" H 6900 2350 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6900 2350 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6900 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 3150 4750 3150
Wire Wire Line
	4750 3150 4750 4200
Wire Wire Line
	4750 4200 5400 4200
Wire Wire Line
	3800 3250 4100 3250
Wire Wire Line
	4100 3250 4100 4300
Wire Wire Line
	4100 4300 5400 4300
Wire Wire Line
	3800 3350 4250 3350
Wire Wire Line
	4250 3350 4250 4100
Wire Wire Line
	4250 4100 5400 4100
Wire Wire Line
	3800 3450 5000 3450
Wire Wire Line
	5000 3450 5000 4000
Wire Wire Line
	5000 4000 5400 4000
Wire Wire Line
	4350 3550 3800 3550
Wire Wire Line
	4350 2450 4350 3550
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60FEE6B1
P 5900 3600
F 0 "A1" H 5900 2511 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5850 2350 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5900 3600 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5900 3600 50  0001 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3900
Wire Wire Line
	6750 3500 7350 3500
Connection ~ 7000 3400
Wire Wire Line
	7350 3500 7350 3400
Wire Wire Line
	7000 3400 7350 3400
Connection ~ 7350 3400
Wire Wire Line
	7350 3100 7350 2850
Connection ~ 7350 3100
Wire Wire Line
	7000 3100 7350 3100
Connection ~ 7000 3100
$EndSCHEMATC
