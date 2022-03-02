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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6205BC37
P 5500 4000
F 0 "A1" V 5600 3850 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 5500 3900 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5500 4000 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L RainGauge_PCB-rescue:Electrode_TH-Schematics U4
U 1 1 6205DB53
P 7700 2900
F 0 "U4" V 7475 3037 50  0000 C CNN
F 1 "Electrode_TH" V 7566 3037 50  0000 C CNN
F 2 "Project-lib:electrode" H 7700 2900 50  0001 C CNN
F 3 "" H 7700 2900 50  0001 C CNN
	1    7700 2900
	0    1    1    0   
$EndComp
$Comp
L RainGauge_PCB-rescue:SD_Card-Schematics U2
U 1 1 6205E3A1
P 4250 4900
F 0 "U2" H 3900 5050 50  0000 R CNN
F 1 "SD_Card" H 3900 5150 50  0000 R CNN
F 2 "Project-lib:SD_card" H 4250 4900 50  0001 C CNN
F 3 "" H 4250 4900 50  0001 C CNN
	1    4250 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:R 4.7k1
U 1 1 620605D5
P 3500 3650
F 0 "4.7k1" H 3250 3700 50  0000 L CNN
F 1 "R" H 3350 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3430 3650 50  0001 C CNN
F 3 "~" H 3500 3650 50  0001 C CNN
	1    3500 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R 10k1
U 1 1 62060AD0
P 3500 3400
F 0 "10k1" H 3600 3450 50  0000 L CNN
F 1 "R" H 3570 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 3430 3400 50  0001 C CNN
F 3 "~" H 3500 3400 50  0001 C CNN
	1    3500 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R 3M1
U 1 1 62060D30
P 7050 4150
F 0 "3M1" H 7120 4196 50  0000 L CNN
F 1 "R" H 7120 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 6980 4150 50  0001 C CNN
F 3 "~" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R 4.7k2
U 1 1 620610FA
P 4600 2150
F 0 "4.7k2" H 4670 2196 50  0000 L CNN
F 1 "R" H 4670 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric_Pad0.64x0.40mm_HandSolder" V 4530 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6206211D
P 6350 2100
F 0 "#PWR0101" H 6350 1850 50  0001 C CNN
F 1 "GND" H 6355 1927 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
$Comp
L RainGauge_PCB-rescue:EG1218-dk_Slide-Switches S1
U 1 1 62063322
P 6250 2300
F 0 "S1" V 6204 2444 50  0000 L CNN
F 1 "EG1218" V 6295 2444 50  0000 L CNN
F 2 "digikey-footprints:Switch_Slide_11.6x4mm_EG1218" H 6450 2500 50  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6450 2600 60  0001 L CNN
F 4 "EG1903-ND" H 6450 2700 60  0001 L CNN "Digi-Key_PN"
F 5 "EG1218" H 6450 2800 60  0001 L CNN "MPN"
F 6 "Switches" H 6450 2900 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6450 3000 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6450 3100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/EG1218/EG1903-ND/101726" H 6450 3200 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE SPDT 200MA 30V" H 6450 3300 60  0001 L CNN "Description"
F 11 "E-Switch" H 6450 3400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6450 3500 60  0001 L CNN "Status"
	1    6250 2300
	0    1    1    0   
$EndComp
$Comp
L RainGauge_PCB-rescue:Battery_Leads-Schematics U3
U 1 1 62067DF3
P 6300 1900
F 0 "U3" H 6478 1913 50  0000 L CNN
F 1 "Battery_Leads" H 6478 1822 50  0000 L CNN
F 2 "Project-lib:battery_leads" H 6300 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0001 C CNN
	1    6300 1900
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS3231M U1
U 1 1 62068A2D
P 3900 2650
F 0 "U1" H 4200 2300 50  0000 C CNN
F 1 "DS3231M" H 3600 2300 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 3900 2050 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 4170 2700 50  0001 C CNN
	1    3900 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 620732FA
P 6350 2500
F 0 "#PWR0102" H 6350 2250 50  0001 C CNN
F 1 "GND" H 6355 2327 50  0000 C CNN
F 2 "" H 6350 2500 50  0001 C CNN
F 3 "" H 6350 2500 50  0001 C CNN
	1    6350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 62073943
P 4500 4800
F 0 "#PWR0103" H 4500 4550 50  0001 C CNN
F 1 "GND" H 4505 4627 50  0000 C CNN
F 2 "" H 4500 4800 50  0001 C CNN
F 3 "" H 4500 4800 50  0001 C CNN
	1    4500 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 6207284C
P 4900 2100
F 0 "C1" H 5015 2146 50  0000 L CNN
F 1 "C" H 5015 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 4938 1950 50  0001 C CNN
F 3 "~" H 4900 2100 50  0001 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2750 3350 2750
Wire Wire Line
	3350 2750 3350 1750
Wire Wire Line
	3350 1750 4600 1750
Wire Wire Line
	5600 1750 5600 3000
Wire Wire Line
	5000 3600 4600 3600
Connection ~ 4600 1750
Wire Wire Line
	4600 1750 5600 1750
Wire Wire Line
	4600 1750 4600 1900
Wire Wire Line
	4000 2150 4000 2100
Wire Wire Line
	4000 2100 4350 2100
Wire Wire Line
	4350 2100 4350 2350
Wire Wire Line
	4350 2350 4600 2350
Connection ~ 4600 2350
Wire Wire Line
	4600 2350 4600 3600
Wire Wire Line
	4600 2300 4600 2350
Wire Wire Line
	4600 1900 4900 1900
Wire Wire Line
	4900 1900 4900 1950
Connection ~ 4600 1900
Wire Wire Line
	4600 1900 4600 2000
Wire Wire Line
	4900 2250 4900 2350
$Comp
L power:GND #PWR0104
U 1 1 62089C83
P 4900 2350
F 0 "#PWR0104" H 4900 2100 50  0001 C CNN
F 1 "GND" H 4905 2177 50  0000 C CNN
F 2 "" H 4900 2350 50  0001 C CNN
F 3 "" H 4900 2350 50  0001 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3150 3700 3650
Wire Wire Line
	3700 5300 6250 5300
Wire Wire Line
	6250 5300 6250 4500
Wire Wire Line
	6250 4500 6000 4500
Wire Wire Line
	3800 3150 3800 3400
Wire Wire Line
	3800 5200 6150 5200
Wire Wire Line
	6150 5200 6150 4400
Wire Wire Line
	6150 4400 6000 4400
Wire Wire Line
	3350 2750 3350 3400
Connection ~ 3350 2750
Connection ~ 3800 3400
Wire Wire Line
	3800 3400 3800 5200
Wire Wire Line
	3350 3400 3350 3650
Connection ~ 3350 3400
Connection ~ 3700 3650
Wire Wire Line
	3700 3650 3700 5300
Wire Wire Line
	3650 3650 3700 3650
Wire Wire Line
	3650 3400 3800 3400
Wire Wire Line
	4100 4800 4100 3800
Wire Wire Line
	4100 3800 5000 3800
Wire Wire Line
	3350 3650 3350 4650
Wire Wire Line
	3350 4650 4000 4650
Wire Wire Line
	4000 4650 4000 4800
Connection ~ 3350 3650
Wire Wire Line
	4300 4800 4300 4500
Wire Wire Line
	4300 4500 4700 4500
Wire Wire Line
	4700 4500 4700 4700
Wire Wire Line
	4700 4700 5000 4700
Wire Wire Line
	4400 4800 4400 4450
Wire Wire Line
	4400 4450 4750 4450
Wire Wire Line
	4750 4450 4750 4600
Wire Wire Line
	4750 4600 5000 4600
Wire Wire Line
	4200 4800 4200 4400
Wire Wire Line
	4200 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4500
Wire Wire Line
	4800 4500 5000 4500
$Comp
L power:GND #PWR0105
U 1 1 62094AFE
P 5500 5000
F 0 "#PWR0105" H 5500 4750 50  0001 C CNN
F 1 "GND" H 5505 4827 50  0000 C CNN
F 2 "" H 5500 5000 50  0001 C CNN
F 3 "" H 5500 5000 50  0001 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 62094F84
P 5600 5000
F 0 "#PWR0106" H 5600 4750 50  0001 C CNN
F 1 "GND" H 5605 4827 50  0000 C CNN
F 2 "" H 5600 5000 50  0001 C CNN
F 3 "" H 5600 5000 50  0001 C CNN
	1    5600 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 620950E6
P 4300 2650
F 0 "#PWR0107" H 4300 2400 50  0001 C CNN
F 1 "GND" V 4305 2522 50  0000 R CNN
F 2 "" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2500 6150 2750
Wire Wire Line
	6150 2750 5400 2750
Wire Wire Line
	5400 2750 5400 3000
$Comp
L power:GND #PWR0108
U 1 1 62097FBB
P 7050 4300
F 0 "#PWR0108" H 7050 4050 50  0001 C CNN
F 1 "GND" H 7055 4127 50  0000 C CNN
F 2 "" H 7050 4300 50  0001 C CNN
F 3 "" H 7050 4300 50  0001 C CNN
	1    7050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3000 5700 2900
Wire Wire Line
	5700 2900 7050 2900
$Comp
L RainGauge_PCB-rescue:Electrode_TH-Schematics U5
U 1 1 6205EADF
P 7700 3250
F 0 "U5" V 7475 3387 50  0000 C CNN
F 1 "Electrode_TH" V 7566 3387 50  0000 C CNN
F 2 "Project-lib:electrode" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 620D90AA
P 7150 3250
F 0 "Q1" H 7341 3296 50  0000 L CNN
F 1 "2N2219" H 7341 3205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 7350 3175 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 7150 3250 50  0001 L CNN
	1    7150 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 2900 7050 3050
Connection ~ 7050 2900
Wire Wire Line
	7050 2900 7550 2900
Wire Wire Line
	7550 3250 7350 3250
Wire Wire Line
	7050 3450 7050 4000
Wire Wire Line
	7050 4000 6000 4000
Connection ~ 7050 4000
$Comp
L Device:Battery BT1
U 1 1 6216EAAD
P 2650 3150
F 0 "BT1" H 2758 3196 50  0000 L CNN
F 1 "Battery" H 2758 3105 50  0000 L CNN
F 2 "ARTS-Lab:battery_holder_10mm" V 2650 3210 50  0001 C CNN
F 3 "~" V 2650 3210 50  0001 C CNN
	1    2650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2950 2650 2650
Wire Wire Line
	2650 2650 3500 2650
$Comp
L power:GND #PWR0109
U 1 1 6217073B
P 2650 3350
F 0 "#PWR0109" H 2650 3100 50  0001 C CNN
F 1 "GND" H 2655 3177 50  0000 C CNN
F 2 "" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
