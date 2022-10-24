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
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 619AFE47
P 5750 3600
F 0 "A?" H 5750 2511 50  0001 C CNN
F 1 "Arduino_Nano_v3.x" H 5200 2500 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5750 3600 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS3231M U?
U 1 1 619B2EE5
P 7900 3750
F 0 "U?" H 7900 3261 50  0001 C CNN
F 1 "DS3231M" H 7900 3170 50  0001 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 7900 3150 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 8170 3800 50  0001 C CNN
	1    7900 3750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U?
U 1 1 619D21EB
P 5500 1850
F 0 "U?" H 5500 1999 50  0001 C CNN
F 1 "L7805" H 5750 1600 50  0001 C CNN
F 2 "" H 5525 1700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5500 1800 50  0001 C CNN
	1    5500 1850
	-1   0    0    1   
$EndComp
$Comp
L New_micro_sd_card:Micro_SD_Card J?
U 1 1 619DC679
P 3150 3550
F 0 "J?" H 3118 4267 50  0000 C CNN
F 1 "Micro_SD_Card" H 3118 4176 50  0000 C CNN
F 2 "" H 4300 3850 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 3150 3550 50  0001 C CNN
	1    3150 3550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 619DD584
P 8200 2600
F 0 "J?" H 8280 2592 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8280 2501 50  0000 L CNN
F 2 "" H 8200 2600 50  0001 C CNN
F 3 "~" H 8200 2600 50  0001 C CNN
	1    8200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4000 6250 4000
Wire Wire Line
	7000 4000 7000 3650
Wire Wire Line
	7000 3650 7400 3650
Wire Wire Line
	7100 4100 7100 3550
Wire Wire Line
	7100 3550 7400 3550
Wire Wire Line
	6250 4100 7100 4100
Wire Wire Line
	8000 2700 6600 2700
Wire Wire Line
	6600 2700 6600 3600
Wire Wire Line
	6600 3600 6250 3600
Wire Wire Line
	8000 2600 8000 2250
Wire Wire Line
	8000 2250 4500 2250
Wire Wire Line
	4500 2250 4500 3350
Wire Wire Line
	4500 3350 4000 3350
Wire Wire Line
	5650 2600 5650 2350
Wire Wire Line
	5650 2350 7800 2350
Wire Wire Line
	7800 2350 7800 3350
Wire Wire Line
	4000 3950 4750 3950
Wire Wire Line
	4750 3950 4750 4000
Wire Wire Line
	4750 4000 5250 4000
Wire Wire Line
	4000 3650 4850 3650
Wire Wire Line
	4850 3650 4850 4100
Wire Wire Line
	4850 4100 5250 4100
Wire Wire Line
	4650 3500 4000 3500
Wire Wire Line
	4650 3500 4650 4200
Wire Wire Line
	4650 4200 5250 4200
Wire Wire Line
	4000 3800 4550 3800
Wire Wire Line
	4550 3800 4550 4300
Wire Wire Line
	4550 4300 5250 4300
$Comp
L power:GND #PWR?
U 1 1 619F9733
P 5500 800
F 0 "#PWR?" H 5500 550 50  0001 C CNN
F 1 "GND" H 5505 627 50  0000 C CNN
F 2 "" H 5500 800 50  0001 C CNN
F 3 "" H 5500 800 50  0001 C CNN
	1    5500 800 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619F9D51
P 5850 5200
F 0 "#PWR?" H 5850 4950 50  0001 C CNN
F 1 "GND" H 5855 5027 50  0000 C CNN
F 2 "" H 5850 5200 50  0001 C CNN
F 3 "" H 5850 5200 50  0001 C CNN
	1    5850 5200
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C?
U 1 1 619FA588
P 5000 1350
F 0 "C?" V 4685 1350 50  0001 C CNN
F 1 "C" H 4822 1350 50  0000 R CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "~" H 5000 1350 50  0001 C CNN
	1    5000 1350
	-1   0    0    1   
$EndComp
$Comp
L pspice:C C?
U 1 1 619FB0F1
P 5950 1350
F 0 "C?" H 6128 1396 50  0001 L CNN
F 1 "C" H 6128 1350 50  0000 L CNN
F 2 "" H 5950 1350 50  0001 C CNN
F 3 "~" H 5950 1350 50  0001 C CNN
	1    5950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 619FBE83
P 6800 4900
F 0 "R?" H 6868 4900 50  0001 L CNN
F 1 "R_Small_US" H 6868 4855 50  0001 L CNN
F 2 "" H 6800 4900 50  0001 C CNN
F 3 "~" H 6800 4900 50  0001 C CNN
	1    6800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4600 5750 5200
Wire Wire Line
	5750 5200 5850 5200
Wire Wire Line
	5850 5200 6800 5200
Wire Wire Line
	6800 5200 6800 5000
Connection ~ 5850 5200
Wire Wire Line
	6800 4800 6800 3600
Wire Wire Line
	6800 3600 6600 3600
Connection ~ 6600 3600
$Comp
L power:GND #PWR?
U 1 1 619FF7E1
P 4200 3200
F 0 "#PWR?" H 4200 2950 50  0001 C CNN
F 1 "GND" V 4205 3072 50  0001 R CNN
F 2 "" H 4200 3200 50  0001 C CNN
F 3 "" H 4200 3200 50  0001 C CNN
	1    4200 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3200 4200 3200
Wire Wire Line
	5950 1600 5950 1850
Wire Wire Line
	5950 1850 5800 1850
Wire Wire Line
	5950 1100 5500 1100
Connection ~ 5500 1100
Wire Wire Line
	5500 1100 5500 1550
Wire Wire Line
	5200 1850 5200 2450
Wire Wire Line
	5200 2450 5950 2450
Wire Wire Line
	5950 2450 5950 2600
Wire Wire Line
	5200 1850 5000 1850
Wire Wire Line
	5000 1850 5000 1600
Connection ~ 5200 1850
Wire Wire Line
	5000 1100 5500 1100
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61A57CD1
P 7200 1850
F 0 "J?" H 7280 1842 50  0001 L CNN
F 1 "Switch" H 7280 1751 50  0000 L CNN
F 2 "" H 7200 1850 50  0001 C CNN
F 3 "~" H 7200 1850 50  0001 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1050 5500 1100
Wire Wire Line
	5500 800  5500 1100
Wire Wire Line
	7000 1850 5950 1850
Connection ~ 5950 1850
$Comp
L power:GND #PWR?
U 1 1 61A55C06
P 6850 1950
F 0 "#PWR?" H 6850 1700 50  0001 C CNN
F 1 "GND" V 6855 1822 50  0000 R CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 1950 6850 1950
$EndSCHEMATC