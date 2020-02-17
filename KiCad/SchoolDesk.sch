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
L Device:R R4
U 1 1 5DF6D741
P 6600 4300
F 0 "R4" V 6393 4300 50  0000 C CNN
F 1 "10k" V 6484 4300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 4300 50  0001 C CNN
F 3 "~" H 6600 4300 50  0001 C CNN
	1    6600 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DF84868
P 6750 3100
F 0 "#PWR02" H 6750 2850 50  0001 C CNN
F 1 "GND" V 6755 2972 50  0000 R CNN
F 2 "" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2050 6900 2050
$Comp
L Connector:Conn_01x14_Female J4
U 1 1 5E1DECCB
P 5350 2450
F 0 "J4" V 5500 2400 50  0000 L CNN
F 1 "Conn_01x14_Female" V 5400 2050 50  0000 L CNN
F 2 "S_2.54_3D:PinSocket_1x14_P2.54mm_Vertical" H 5350 2450 50  0001 C CNN
F 3 "~" H 5350 2450 50  0001 C CNN
	1    5350 2450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Female J5
U 1 1 5E1E04A5
P 4900 2450
F 0 "J5" V 5050 2450 50  0000 C CNN
F 1 "Conn_01x14_Female" V 4950 2450 50  0000 C CNN
F 2 "S_2.54_3D:PinSocket_1x14_P2.54mm_Vertical" H 4900 2450 50  0001 C CNN
F 3 "~" H 4900 2450 50  0001 C CNN
	1    4900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E1E6ACD
P 4700 1850
F 0 "#PWR0102" H 4700 1600 50  0001 C CNN
F 1 "GND" V 4705 1722 50  0000 R CNN
F 2 "" H 4700 1850 50  0001 C CNN
F 3 "" H 4700 1850 50  0001 C CNN
	1    4700 1850
	0    1    1    0   
$EndComp
NoConn ~ 5550 1850
NoConn ~ 5550 1950
Wire Wire Line
	5550 2550 5750 2550
Wire Wire Line
	5750 2650 5550 2650
Wire Wire Line
	5550 2750 5750 2750
Wire Wire Line
	5750 2850 5550 2850
Wire Wire Line
	5550 2950 5750 2950
NoConn ~ 5550 3150
$Comp
L Device:R R5
U 1 1 5E233723
P 3250 3050
F 0 "R5" V 3350 3050 50  0000 C CNN
F 1 "220" V 3150 3050 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 3180 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E23401B
P 4000 2900
F 0 "R6" V 3900 2900 50  0000 C CNN
F 1 "220" V 4100 2900 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 3930 2900 50  0001 C CNN
F 3 "~" H 4000 2900 50  0001 C CNN
	1    4000 2900
	1    0    0    -1  
$EndComp
Text GLabel 6900 2050 2    50   Input ~ 0
3.3v
$Comp
L Connector:AudioJack4 J6
U 1 1 5E27F17C
P 6700 3750
F 0 "J6" H 6400 3450 50  0000 R CNN
F 1 "AudioJack4" H 6800 3400 50  0000 R CNN
F 2 "Conn_Aud_3D:Jack_3.5mm_PJ320D_Horizontal" H 6700 3750 50  0001 C CNN
F 3 "~" H 6700 3750 50  0001 C CNN
	1    6700 3750
	0    -1   -1   0   
$EndComp
NoConn ~ 6700 2350
NoConn ~ 6800 2350
Wire Wire Line
	6450 2350 6450 3100
Wire Wire Line
	6900 2050 6900 2350
Connection ~ 6900 2050
Wire Wire Line
	5550 2350 6450 2350
Connection ~ 6450 2350
Wire Wire Line
	6450 2350 6600 2350
$Comp
L Device:R R1
U 1 1 5E296CD0
P 6600 3100
F 0 "R1" V 6393 3100 50  0000 C CNN
F 1 "10k" V 6484 3100 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
	1    6600 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E296CD6
P 6750 4300
F 0 "#PWR0101" H 6750 4050 50  0001 C CNN
F 1 "GND" V 6755 4172 50  0000 R CNN
F 2 "" H 6750 4300 50  0001 C CNN
F 3 "" H 6750 4300 50  0001 C CNN
	1    6750 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack4 J7
U 1 1 5E296CDC
P 6700 2550
F 0 "J7" H 6400 2250 50  0000 R CNN
F 1 "AudioJack4" H 6800 2200 50  0000 R CNN
F 2 "Conn_Aud_3D:Jack_3.5mm_PJ320D_Horizontal" H 6700 2550 50  0001 C CNN
F 3 "~" H 6700 2550 50  0001 C CNN
	1    6700 2550
	0    -1   -1   0   
$EndComp
NoConn ~ 6700 3550
NoConn ~ 6800 3550
Wire Wire Line
	5550 2450 6350 2450
Wire Wire Line
	6350 2450 6350 3550
Wire Wire Line
	6350 4300 6450 4300
Wire Wire Line
	6350 3550 6600 3550
Connection ~ 6350 3550
Wire Wire Line
	6350 3550 6350 4300
Wire Wire Line
	6250 3050 5550 3050
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5E24709E
P 3750 2050
F 0 "J1" H 3642 2235 50  0000 C CNN
F 1 "1x2" H 3600 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 3750 2050 50  0001 C CNN
F 3 "~" H 3750 2050 50  0001 C CNN
	1    3750 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5E248DE4
P 5100 1500
F 0 "J3" H 5200 1500 50  0000 C CNN
F 1 "1x2" H 5200 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 5100 1500 50  0001 C CNN
F 3 "~" H 5100 1500 50  0001 C CNN
	1    5100 1500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5E24B5C7
P 5950 2650
F 0 "J8" H 6050 2500 50  0000 C CNN
F 1 "1x02" H 6050 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 5950 2650 50  0001 C CNN
F 3 "~" H 5950 2650 50  0001 C CNN
	1    5950 2650
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 5E24F3E9
P 5950 2750
F 0 "J9" H 6000 2700 50  0000 C CNN
F 1 "1x2" H 6200 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 5950 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J10
U 1 1 5E251D22
P 4500 1950
F 0 "J10" H 4528 1976 50  0000 L CNN
F 1 "1x1" H 4650 1950 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.00mm" H 4500 1950 50  0001 C CNN
F 3 "~" H 4500 1950 50  0001 C CNN
	1    4500 1950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J11
U 1 1 5E252BA9
P 5950 2950
F 0 "J11" H 5950 2950 50  0000 L CNN
F 1 "1x1" H 6150 2950 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.00mm" H 5950 2950 50  0001 C CNN
F 3 "~" H 5950 2950 50  0001 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J12
U 1 1 5E2532F3
P 5750 2150
F 0 "J12" H 5778 2176 50  0000 L CNN
F 1 "1x1" H 5900 2150 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.00mm" H 5750 2150 50  0001 C CNN
F 3 "~" H 5750 2150 50  0001 C CNN
	1    5750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4700 2750
NoConn ~ 4000 3150
NoConn ~ 3400 3150
Wire Wire Line
	4500 3900 4700 3900
Wire Wire Line
	4700 2550 4400 2550
$Comp
L Device:R R2
U 1 1 5E29A5C9
P 4850 4100
F 0 "R2" V 4750 3950 50  0000 C CNN
F 1 "330" V 4734 4100 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 4780 4100 50  0001 C CNN
F 3 "~" H 4850 4100 50  0001 C CNN
	1    4850 4100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E29C436
P 4850 3700
F 0 "R3" V 4750 3550 50  0000 C CNN
F 1 "330" V 4734 3700 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 4780 3700 50  0001 C CNN
F 3 "~" H 4850 3700 50  0001 C CNN
	1    4850 3700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E29D19E
P 4850 3900
F 0 "R7" V 4750 3750 50  0000 C CNN
F 1 "330" V 4734 3900 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 4780 3900 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E29FBBF
P 3700 2850
F 0 "#PWR0103" H 3700 2600 50  0001 C CNN
F 1 "GND" H 3705 2722 50  0000 R CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E2A36AB
P 5400 3900
F 0 "#PWR0104" H 5400 3650 50  0001 C CNN
F 1 "GND" V 5405 3772 50  0000 R CNN
F 2 "" H 5400 3900 50  0001 C CNN
F 3 "" H 5400 3900 50  0001 C CNN
	1    5400 3900
	0    -1   1    0   
$EndComp
$Comp
L Connector:DIN-5_180degree J2
U 1 1 5E236D4B
P 3700 3150
F 0 "J2" H 3700 2875 50  0000 C CNN
F 1 "DIN-5_180degree" H 3450 2800 50  0000 C CNN
F 2 "Connect:SDS-50J" H 3700 3150 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Text GLabel 2800 2350 2    50   Input ~ 0
3.3v
$Comp
L Device:R R8
U 1 1 5E25E479
P 3150 2450
F 0 "R8" V 2943 2450 50  0000 C CNN
F 1 "10k" V 3034 2450 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 3080 2450 50  0001 C CNN
F 3 "~" H 3150 2450 50  0001 C CNN
	1    3150 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E2620CF
P 2050 2450
F 0 "R9" V 1843 2450 50  0000 C CNN
F 1 "10k" V 1934 2450 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 1980 2450 50  0001 C CNN
F 3 "~" H 2050 2450 50  0001 C CNN
	1    2050 2450
	0    1    -1   0   
$EndComp
Wire Wire Line
	3000 2450 2800 2450
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5E258607
P 2500 2350
F 0 "SW1" H 2450 2700 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" H 2150 2600 50  0000 L CNN
F 2 "digikey-footprints:Rotary_Encoder_Switched_PEC11R" H 2350 2510 50  0001 C CNN
F 3 "~" H 2500 2610 50  0001 C CNN
	1    2500 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E25AED4
P 2050 2250
F 0 "#PWR0105" H 2050 2000 50  0001 C CNN
F 1 "GND" V 2150 2250 50  0000 R CNN
F 2 "" H 2050 2250 50  0001 C CNN
F 3 "" H 2050 2250 50  0001 C CNN
	1    2050 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E263249
P 3150 2150
F 0 "R10" V 2943 2150 50  0000 C CNN
F 1 "10k" V 3034 2150 50  0000 C CNN
F 2 "R_SMD_3D:R_0805_2012Metric" V 3080 2150 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	2200 2250 2050 2250
Wire Wire Line
	3500 2350 4700 2350
Wire Wire Line
	3500 1700 5100 1700
Wire Wire Line
	3950 2250 3950 2050
Wire Wire Line
	3950 2250 4700 2250
Wire Wire Line
	4050 2050 4050 1950
Wire Wire Line
	4050 1950 3950 1950
Wire Wire Line
	4050 2050 4700 2050
Wire Wire Line
	4700 2450 3300 2450
Wire Wire Line
	4700 2150 3300 2150
Wire Wire Line
	3500 1700 3500 2350
Wire Wire Line
	6900 2050 6900 1250
Wire Wire Line
	6900 1250 1650 1250
Wire Wire Line
	1650 1250 1650 3050
Wire Wire Line
	1650 3050 3100 3050
Wire Wire Line
	3000 2150 3000 2250
Wire Wire Line
	3000 2250 2800 2250
Wire Wire Line
	4700 2650 1900 2650
Wire Wire Line
	1900 2650 1900 2450
Wire Wire Line
	4600 3700 4700 3700
Wire Wire Line
	4400 4100 4700 4100
Wire Wire Line
	4400 2550 4400 4100
Wire Wire Line
	5550 2250 6250 2250
Wire Wire Line
	6250 2250 6250 1700
Wire Wire Line
	6250 1700 5200 1700
$Comp
L Device:LED_RCBG D1
U 1 1 5E2C4C0A
P 5200 3900
F 0 "D1" H 5200 3433 50  0000 C CNN
F 1 "LED_RCBG" H 5200 3524 50  0000 C CNN
F 2 "LED_THT_3D:LED_D5.0mm-4_RGB" H 5200 3850 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
	1    5200 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 3700 4600 2850
Wire Wire Line
	4600 2850 4700 2850
Wire Wire Line
	4500 3900 4500 2950
Wire Wire Line
	4500 2950 4700 2950
$Comp
L Device:R R11
U 1 1 5E30BD14
P 6600 5500
F 0 "R11" V 6393 5500 50  0000 C CNN
F 1 "10k" V 6484 5500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 5500 50  0001 C CNN
F 3 "~" H 6600 5500 50  0001 C CNN
	1    6600 5500
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack4 J13
U 1 1 5E30BD1A
P 6700 4950
F 0 "J13" H 6400 4650 50  0000 R CNN
F 1 "AudioJack4" H 6800 4600 50  0000 R CNN
F 2 "Conn_Aud_3D:Jack_3.5mm_PJ320D_Horizontal" H 6700 4950 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E30BD20
P 6750 5500
F 0 "#PWR0106" H 6750 5250 50  0001 C CNN
F 1 "GND" V 6755 5372 50  0000 R CNN
F 2 "" H 6750 5500 50  0001 C CNN
F 3 "" H 6750 5500 50  0001 C CNN
	1    6750 5500
	0    -1   -1   0   
$EndComp
NoConn ~ 6700 4750
NoConn ~ 6800 4750
Wire Wire Line
	6250 3050 6250 4750
Wire Wire Line
	6250 5500 6450 5500
Wire Wire Line
	6600 4750 6250 4750
Connection ~ 6250 4750
Wire Wire Line
	6250 4750 6250 5500
Wire Wire Line
	6900 2350 7150 2350
Wire Wire Line
	7150 2350 7150 3550
Wire Wire Line
	7150 3550 6900 3550
Connection ~ 6900 2350
Wire Wire Line
	7150 3550 7150 4750
Wire Wire Line
	7150 4750 6900 4750
Connection ~ 7150 3550
$EndSCHEMATC
