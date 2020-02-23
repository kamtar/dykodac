EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "DykoDAC"
Date ""
Rev ""
Comp "Tomáš Polišenský"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:AD8620 U9
U 1 1 5C90E90F
P 3850 3550
F 0 "U9" H 3850 3917 50  0000 C CNN
F 1 "AD8620" H 3850 3826 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3850 3550 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/AD8610_8620.pdf" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:AD8620 U9
U 3 1 5C90E9FA
P 2000 1100
F 0 "U9" V 2100 1100 50  0000 L CNN
F 1 "AD8620" V 2000 950 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2000 1100 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/AD8610_8620.pdf" H 2000 1100 50  0001 C CNN
	3    2000 1100
	0    1    1    0   
$EndComp
Text GLabel 1300 3650 0    50   Input ~ 0
AOUTA+
Text GLabel 1300 2950 0    50   Input ~ 0
AOUTA-
$Comp
L Device:C C39
U 1 1 5C911381
P 2500 1250
F 0 "C39" H 2600 1150 50  0000 C CNN
F 1 "0.1u" H 2600 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2538 1100 50  0001 C CNN
F 3 "~" H 2500 1250 50  0001 C CNN
	1    2500 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C42
U 1 1 5C91151E
P 2700 1250
F 0 "C42" H 2800 1350 50  0000 C CNN
F 1 "10u" H 2800 1150 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 2738 1100 50  0001 C CNN
F 3 "~" H 2700 1250 50  0001 C CNN
	1    2700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5C911889
P 1550 1250
F 0 "C36" H 1450 1150 50  0000 C CNN
F 1 "0.1u" H 1450 1350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 1588 1100 50  0001 C CNN
F 3 "~" H 1550 1250 50  0001 C CNN
	1    1550 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C35
U 1 1 5C911890
P 1350 1250
F 0 "C35" H 1450 1150 50  0000 C CNN
F 1 "10u" H 1450 1350 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 1388 1100 50  0001 C CNN
F 3 "~" H 1350 1250 50  0001 C CNN
	1    1350 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5C911A03
P 2500 1650
F 0 "#PWR031" H 2500 1400 50  0001 C CNN
F 1 "GND" V 2505 1522 50  0000 R CNN
F 2 "" H 2500 1650 50  0001 C CNN
F 3 "" H 2500 1650 50  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5C911A43
P 1350 1650
F 0 "#PWR028" H 1350 1400 50  0001 C CNN
F 1 "GND" V 1355 1522 50  0000 R CNN
F 2 "" H 1350 1650 50  0001 C CNN
F 3 "" H 1350 1650 50  0001 C CNN
	1    1350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1400 1350 1550
Wire Wire Line
	1550 1400 1550 1550
Wire Wire Line
	1550 1550 1350 1550
Connection ~ 1350 1550
Wire Wire Line
	1350 1550 1350 1650
Wire Wire Line
	2500 1400 2500 1550
Wire Wire Line
	2700 1400 2700 1550
Wire Wire Line
	2700 1550 2500 1550
Connection ~ 2500 1550
Wire Wire Line
	2500 1550 2500 1650
Wire Wire Line
	2300 1000 2500 1000
Wire Wire Line
	2700 1000 2700 1100
Wire Wire Line
	2500 1100 2500 1000
Connection ~ 2500 1000
Wire Wire Line
	2500 1000 2700 1000
Wire Wire Line
	1700 1000 1550 1000
Wire Wire Line
	1550 1000 1550 1100
Wire Wire Line
	1350 1100 1350 1000
Wire Wire Line
	1350 1000 1550 1000
Connection ~ 1550 1000
$Comp
L power:+9V #PWR032
U 1 1 5C913F7B
P 2800 1000
F 0 "#PWR032" H 2800 850 50  0001 C CNN
F 1 "+9V" H 2815 1173 50  0000 C CNN
F 2 "" H 2800 1000 50  0001 C CNN
F 3 "" H 2800 1000 50  0001 C CNN
	1    2800 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1000 2700 1000
Connection ~ 2700 1000
$Comp
L power:-9V #PWR027
U 1 1 5C91410A
P 1250 1000
F 0 "#PWR027" H 1250 875 50  0001 C CNN
F 1 "-9V" H 1265 1173 50  0000 C CNN
F 2 "" H 1250 1000 50  0001 C CNN
F 3 "" H 1250 1000 50  0001 C CNN
	1    1250 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1000 1350 1000
Connection ~ 1350 1000
$Comp
L Device:C C43
U 1 1 5C914D58
P 3350 3850
F 0 "C43" H 3465 3896 50  0000 L CNN
F 1 "1n" H 3465 3805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 3700 50  0001 C CNN
F 3 "~" H 3350 3850 50  0001 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5C915172
P 3000 3650
F 0 "R14" V 2793 3650 50  0000 C CNN
F 1 "1k5" V 2884 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2930 3650 50  0001 C CNN
F 3 "~" H 3000 3650 50  0001 C CNN
	1    3000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5C915213
P 3000 4050
F 0 "R15" V 2793 4050 50  0000 C CNN
F 1 "820" V 2884 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2930 4050 50  0001 C CNN
F 3 "~" H 3000 4050 50  0001 C CNN
	1    3000 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C915810
P 2050 3650
F 0 "R9" V 2000 3500 50  0000 C CNN
F 1 "820" V 2150 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1980 3650 50  0001 C CNN
F 3 "~" H 2050 3650 50  0001 C CNN
	1    2050 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3650 2750 3650
Connection ~ 2750 3650
$Comp
L Device:C C38
U 1 1 5C916813
P 2450 3400
F 0 "C38" V 2400 3250 50  0000 C CNN
F 1 "3n3" V 2500 3550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2488 3250 50  0001 C CNN
F 3 "~" H 2450 3400 50  0001 C CNN
	1    2450 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5C9169B3
P 2100 3400
F 0 "#PWR029" H 2100 3150 50  0001 C CNN
F 1 "GND" V 2105 3272 50  0000 R CNN
F 2 "" H 2100 3400 50  0001 C CNN
F 3 "" H 2100 3400 50  0001 C CNN
	1    2100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3400 2150 3400
Wire Wire Line
	2600 3400 2750 3400
Wire Wire Line
	2750 3400 2750 3650
$Comp
L Device:C C44
U 1 1 5C917368
P 3450 2650
F 0 "C44" H 3565 2696 50  0000 L CNN
F 1 "1n" H 3565 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3488 2500 50  0001 C CNN
F 3 "~" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5C91781D
P 3000 2950
F 0 "R13" V 2900 2850 50  0000 C CNN
F 1 "1k5" V 3100 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2930 2950 50  0001 C CNN
F 3 "~" H 3000 2950 50  0001 C CNN
	1    3000 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C917D42
P 2750 2650
F 0 "R11" H 2680 2604 50  0000 R CNN
F 1 "820" H 2680 2695 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 2680 2650 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3450 3450 3450
$Comp
L power:GND #PWR033
U 1 1 5C918741
P 3450 2250
F 0 "#PWR033" H 3450 2000 50  0001 C CNN
F 1 "GND" H 3455 2077 50  0000 C CNN
F 2 "" H 3450 2250 50  0001 C CNN
F 3 "" H 3450 2250 50  0001 C CNN
	1    3450 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 2800 3450 2950
Wire Wire Line
	3150 2950 3450 2950
Connection ~ 3450 2950
Wire Wire Line
	3450 2950 3450 3450
$Comp
L Device:R R7
U 1 1 5C91A580
P 2050 2950
F 0 "R7" V 1950 2850 50  0000 R CNN
F 1 "820" V 2150 2950 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 1980 2950 50  0001 C CNN
F 3 "~" H 2050 2950 50  0001 C CNN
	1    2050 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2950 1900 2950
$Comp
L Device:C C37
U 1 1 5C91D6E7
P 2450 3100
F 0 "C37" V 2400 2950 50  0000 C CNN
F 1 "3n3" V 2500 3250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2488 2950 50  0001 C CNN
F 3 "~" H 2450 3100 50  0001 C CNN
	1    2450 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 3100 2150 3100
Wire Wire Line
	2150 3100 2150 3400
Connection ~ 2150 3400
Wire Wire Line
	2150 3400 2300 3400
Wire Wire Line
	2600 3100 2750 3100
Wire Wire Line
	2750 2500 2750 2400
Wire Wire Line
	2750 2400 3450 2400
Wire Wire Line
	3450 2400 3450 2250
Wire Wire Line
	3450 2400 3450 2500
Connection ~ 3450 2400
Wire Wire Line
	2850 2950 2750 2950
Wire Wire Line
	2750 2800 2750 2950
Connection ~ 2750 2950
Wire Wire Line
	2750 2950 2200 2950
Wire Wire Line
	2750 3100 2750 2950
Text GLabel 1400 6350 0    50   Input ~ 0
AOUTB+
Text GLabel 1400 5650 0    50   Input ~ 0
AOUTB-
$Comp
L Device:C C45
U 1 1 5C92794D
P 3450 6550
F 0 "C45" H 3565 6596 50  0000 L CNN
F 1 "1n" H 3565 6505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3488 6400 50  0001 C CNN
F 3 "~" H 3450 6550 50  0001 C CNN
	1    3450 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5C92795B
P 3100 6350
F 0 "R17" V 2893 6350 50  0000 C CNN
F 1 "1k5" V 2984 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3030 6350 50  0001 C CNN
F 3 "~" H 3100 6350 50  0001 C CNN
	1    3100 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5C927962
P 3100 6750
F 0 "R18" V 2893 6750 50  0000 C CNN
F 1 "820" V 2984 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3030 6750 50  0001 C CNN
F 3 "~" H 3100 6750 50  0001 C CNN
	1    3100 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C92796D
P 2150 6350
F 0 "R10" V 2100 6150 50  0000 C CNN
F 1 "820" V 2250 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2080 6350 50  0001 C CNN
F 3 "~" H 2150 6350 50  0001 C CNN
	1    2150 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6350 2850 6350
Connection ~ 2850 6350
$Comp
L Device:C C41
U 1 1 5C927979
P 2550 6100
F 0 "C41" V 2500 5950 50  0000 C CNN
F 1 "3n3" V 2600 6250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2588 5950 50  0001 C CNN
F 3 "~" H 2550 6100 50  0001 C CNN
	1    2550 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5C927980
P 2200 6100
F 0 "#PWR030" H 2200 5850 50  0001 C CNN
F 1 "GND" V 2205 5972 50  0000 R CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 6100 2250 6100
Wire Wire Line
	2700 6100 2850 6100
Wire Wire Line
	2850 6100 2850 6350
$Comp
L Device:C C46
U 1 1 5C927989
P 3550 5350
F 0 "C46" H 3665 5396 50  0000 L CNN
F 1 "1n" H 3665 5305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3588 5200 50  0001 C CNN
F 3 "~" H 3550 5350 50  0001 C CNN
	1    3550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5C927990
P 3100 5650
F 0 "R16" V 3000 5550 50  0000 C CNN
F 1 "1k5" V 3200 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3030 5650 50  0001 C CNN
F 3 "~" H 3100 5650 50  0001 C CNN
	1    3100 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C927997
P 2850 5350
F 0 "R12" H 2780 5304 50  0000 R CNN
F 1 "820" H 2780 5395 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 2780 5350 50  0001 C CNN
F 3 "~" H 2850 5350 50  0001 C CNN
	1    2850 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 6150 3550 6150
$Comp
L power:GND #PWR034
U 1 1 5C92799F
P 3550 4950
F 0 "#PWR034" H 3550 4700 50  0001 C CNN
F 1 "GND" H 3555 4777 50  0000 C CNN
F 2 "" H 3550 4950 50  0001 C CNN
F 3 "" H 3550 4950 50  0001 C CNN
	1    3550 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5500 3550 5650
Wire Wire Line
	3250 5650 3550 5650
Connection ~ 3550 5650
Wire Wire Line
	3550 5650 3550 6150
$Comp
L Device:R R8
U 1 1 5C9279A9
P 2150 5650
F 0 "R8" V 2050 5550 50  0000 R CNN
F 1 "820" V 2250 5650 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 2080 5650 50  0001 C CNN
F 3 "~" H 2150 5650 50  0001 C CNN
	1    2150 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5650 2000 5650
$Comp
L Device:C C40
U 1 1 5C9279B2
P 2550 5800
F 0 "C40" V 2500 5650 50  0000 C CNN
F 1 "3n3" V 2600 5950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 2588 5650 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 5800 2250 5800
Wire Wire Line
	2250 5800 2250 6100
Connection ~ 2250 6100
Wire Wire Line
	2250 6100 2400 6100
Wire Wire Line
	2700 5800 2850 5800
Wire Wire Line
	2850 5200 2850 5100
Wire Wire Line
	2850 5100 3550 5100
Wire Wire Line
	3550 5100 3550 4950
Wire Wire Line
	3550 5100 3550 5200
Connection ~ 3550 5100
Wire Wire Line
	2950 5650 2850 5650
Wire Wire Line
	2850 5500 2850 5650
Connection ~ 2850 5650
Wire Wire Line
	2850 5650 2300 5650
Wire Wire Line
	2850 5800 2850 5650
$Comp
L Amplifier_Operational:AD8620 U9
U 2 1 5C92E767
P 3950 6250
F 0 "U9" H 3950 6617 50  0000 C CNN
F 1 "AD8620" H 3950 6526 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3950 6250 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/AD8610_8620.pdf" H 3950 6250 50  0001 C CNN
	2    3950 6250
	1    0    0    -1  
$EndComp
Text Notes 7350 6900 0    157  ~ 0
Filter and headphone amp
$Comp
L ti:TPA6120 U10
U 1 1 5CD23F1B
P 8000 3150
F 0 "U10" H 8375 3337 60  0000 C CNN
F 1 "TPA6120A2" H 8375 3231 60  0000 C CNN
F 2 "test:SOIC-20W_ThermalPad" H 8000 3150 60  0001 C CNN
F 3 "" H 8000 3150 60  0001 C CNN
	1    8000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5CD2F545
P 4550 3550
F 0 "R19" V 4450 3500 50  0000 C CNN
F 1 "50" V 4550 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4480 3550 50  0001 C CNN
F 3 "~" H 4550 3550 50  0001 C CNN
	1    4550 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5CD2FA4A
P 4650 6250
F 0 "R20" V 4550 6200 50  0000 C CNN
F 1 "50" V 4650 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4580 6250 50  0001 C CNN
F 3 "~" H 4650 6250 50  0001 C CNN
	1    4650 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 3950 6200 3950
Wire Wire Line
	6200 3950 6200 6250
$Comp
L Device:R R22
U 1 1 5CD3A537
P 7550 4900
F 0 "R22" H 7620 4946 50  0000 L CNN
F 1 "1k" H 7620 4855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7480 4900 50  0001 C CNN
F 3 "~" H 7550 4900 50  0001 C CNN
	1    7550 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5CD3A5AD
P 7150 4900
F 0 "R21" H 7220 4946 50  0000 L CNN
F 1 "1k" H 7220 4855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7080 4900 50  0001 C CNN
F 3 "~" H 7150 4900 50  0001 C CNN
	1    7150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5CD3A8C4
P 7350 5300
F 0 "#PWR036" H 7350 5050 50  0001 C CNN
F 1 "GND" H 7355 5127 50  0000 C CNN
F 2 "" H 7350 5300 50  0001 C CNN
F 3 "" H 7350 5300 50  0001 C CNN
	1    7350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5050 7150 5200
Wire Wire Line
	7150 5200 7350 5200
Wire Wire Line
	7550 5200 7550 5050
Connection ~ 7350 5200
Wire Wire Line
	7350 5200 7550 5200
Wire Wire Line
	7350 5200 7350 5300
Wire Wire Line
	7550 4750 7550 4400
Wire Wire Line
	7550 4050 7800 4050
Wire Wire Line
	7150 3650 7800 3650
$Comp
L Device:R R23
U 1 1 5CD4A73A
P 7900 4400
F 0 "R23" V 7800 4350 50  0000 C CNN
F 1 "1k" V 7900 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7830 4400 50  0001 C CNN
F 3 "~" H 7900 4400 50  0001 C CNN
	1    7900 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5CD4A89C
P 7900 4700
F 0 "R24" V 7800 4650 50  0000 C CNN
F 1 "1k" V 7900 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7830 4700 50  0001 C CNN
F 3 "~" H 7900 4700 50  0001 C CNN
	1    7900 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 4000 9100 4000
Wire Wire Line
	9100 4400 9100 4000
Wire Wire Line
	8050 4400 9100 4400
Wire Wire Line
	7150 3650 7150 4700
Wire Wire Line
	7750 4400 7550 4400
Connection ~ 7550 4400
Wire Wire Line
	7550 4400 7550 4050
Wire Wire Line
	8050 4700 9200 4700
Wire Wire Line
	9200 4700 9200 3600
Wire Wire Line
	8950 3600 9200 3600
Wire Wire Line
	7750 4700 7150 4700
Connection ~ 7150 4700
Wire Wire Line
	7150 4700 7150 4750
$Comp
L power:GND #PWR042
U 1 1 5CD6B3CD
P 10600 4200
F 0 "#PWR042" H 10600 3950 50  0001 C CNN
F 1 "GND" H 10605 4027 50  0000 C CNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 4200 10600 4100
$Comp
L power:GND #PWR039
U 1 1 5CD6EB4A
P 8400 4900
F 0 "#PWR039" H 8400 4650 50  0001 C CNN
F 1 "GND" H 8405 4727 50  0000 C CNN
F 2 "" H 8400 4900 50  0001 C CNN
F 3 "" H 8400 4900 50  0001 C CNN
	1    8400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4900 8400 4300
$Comp
L Device:R R25
U 1 1 5CD72FDB
P 9500 3600
F 0 "R25" V 9400 3500 50  0000 C CNN
F 1 "15" V 9500 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9430 3600 50  0001 C CNN
F 3 "~" H 9500 3600 50  0001 C CNN
	1    9500 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5CD730C8
P 9500 4000
F 0 "R26" V 9400 3900 50  0000 C CNN
F 1 "15" V 9500 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9430 4000 50  0001 C CNN
F 3 "~" H 9500 4000 50  0001 C CNN
	1    9500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3600 9350 3600
Connection ~ 9200 3600
Wire Wire Line
	9100 4000 9350 4000
Connection ~ 9100 4000
$Comp
L Device:C C48
U 1 1 5CD9058D
P 7250 3350
F 0 "C48" V 7200 3200 50  0000 C CNN
F 1 "0.1u" V 7300 3500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7288 3200 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7250 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C47
U 1 1 5CD9067C
P 7250 3100
F 0 "C47" V 7200 2950 50  0000 C CNN
F 1 "0.1u" V 7300 3250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7288 2950 50  0001 C CNN
F 3 "~" H 7250 3100 50  0001 C CNN
	1    7250 3100
	0    1    1    0   
$EndComp
$Comp
L power:+9V #PWR037
U 1 1 5CD91CF9
P 7600 2450
F 0 "#PWR037" H 7600 2300 50  0001 C CNN
F 1 "+9V" H 7615 2623 50  0000 C CNN
F 2 "" H 7600 2450 50  0001 C CNN
F 3 "" H 7600 2450 50  0001 C CNN
	1    7600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3350 7600 3350
Connection ~ 7600 3100
Wire Wire Line
	7600 3100 7400 3100
Wire Wire Line
	7600 3350 7600 3250
Connection ~ 7600 3350
Wire Wire Line
	7600 3350 7400 3350
Wire Wire Line
	7800 3250 7600 3250
Connection ~ 7600 3250
Wire Wire Line
	7600 3250 7600 3100
$Comp
L power:GND #PWR035
U 1 1 5CDA6EFD
P 6800 3350
F 0 "#PWR035" H 6800 3100 50  0001 C CNN
F 1 "GND" V 6805 3222 50  0000 R CNN
F 2 "" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0001 C CNN
	1    6800 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3350 6950 3350
Wire Wire Line
	7100 3100 6950 3100
Wire Wire Line
	6950 3100 6950 3350
Connection ~ 6950 3350
Wire Wire Line
	6950 3350 6800 3350
$Comp
L Device:C C54
U 1 1 5CDAEA41
P 9400 3250
F 0 "C54" V 9350 3100 50  0000 C CNN
F 1 "0.1u" V 9450 3400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 9438 3100 50  0001 C CNN
F 3 "~" H 9400 3250 50  0001 C CNN
	1    9400 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C53
U 1 1 5CDAEA48
P 9400 3000
F 0 "C53" V 9350 2850 50  0000 C CNN
F 1 "0.1u" V 9450 3150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 9438 2850 50  0001 C CNN
F 3 "~" H 9400 3000 50  0001 C CNN
	1    9400 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5CDAEA51
P 9950 3250
F 0 "#PWR041" H 9950 3000 50  0001 C CNN
F 1 "GND" V 9955 3122 50  0000 R CNN
F 2 "" H 9950 3250 50  0001 C CNN
F 3 "" H 9950 3250 50  0001 C CNN
	1    9950 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 3000 9750 3000
Wire Wire Line
	8950 3350 9150 3350
Wire Wire Line
	9150 3350 9150 3250
Wire Wire Line
	8950 3250 9150 3250
Connection ~ 9150 3250
Wire Wire Line
	9250 3000 9150 3000
$Comp
L power:-9V #PWR040
U 1 1 5CDCF6C9
P 9150 2450
F 0 "#PWR040" H 9150 2325 50  0001 C CNN
F 1 "-9V" H 9165 2623 50  0000 C CNN
F 2 "" H 9150 2450 50  0001 C CNN
F 3 "" H 9150 2450 50  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
Connection ~ 9150 3000
Wire Wire Line
	9150 3000 9150 3250
Wire Wire Line
	9150 3250 9250 3250
Wire Wire Line
	9550 3250 9750 3250
Wire Wire Line
	9750 3000 9750 3250
Connection ~ 9750 3250
Wire Wire Line
	9750 3250 9950 3250
$Comp
L Device:CP C50
U 1 1 5D14CEEA
P 7950 2700
F 0 "C50" V 8000 2850 50  0000 C CNN
F 1 "10u" V 8000 2550 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 7988 2550 50  0001 C CNN
F 3 "~" H 7950 2700 50  0001 C CNN
	1    7950 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C52
U 1 1 5D14EBD1
P 8850 2700
F 0 "C52" V 8900 2850 50  0000 C CNN
F 1 "10u" V 8900 2550 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 8888 2550 50  0001 C CNN
F 3 "~" H 8850 2700 50  0001 C CNN
	1    8850 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 2700 9150 2700
Wire Wire Line
	9150 2700 9150 3000
Wire Wire Line
	7800 2700 7600 2700
Wire Wire Line
	7600 2700 7600 3100
$Comp
L power:GND #PWR038
U 1 1 5D17DB7D
P 8350 2450
F 0 "#PWR038" H 8350 2200 50  0001 C CNN
F 1 "GND" H 8355 2277 50  0000 C CNN
F 2 "" H 8350 2450 50  0001 C CNN
F 3 "" H 8350 2450 50  0001 C CNN
	1    8350 2450
	-1   0    0    1   
$EndComp
$Comp
L power:+9V #PWR0101
U 1 1 5D188C88
P 4750 1100
F 0 "#PWR0101" H 4750 950 50  0001 C CNN
F 1 "+9V" H 4765 1273 50  0000 C CNN
F 2 "" H 4750 1100 50  0001 C CNN
F 3 "" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:-9V #PWR0102
U 1 1 5D188C8E
P 6300 1100
F 0 "#PWR0102" H 6300 975 50  0001 C CNN
F 1 "-9V" H 6315 1273 50  0000 C CNN
F 2 "" H 6300 1100 50  0001 C CNN
F 3 "" H 6300 1100 50  0001 C CNN
	1    6300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C49
U 1 1 5D188C94
P 5100 1250
F 0 "C49" V 5150 1400 50  0000 C CNN
F 1 "100u" V 5150 1100 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 5138 1100 50  0001 C CNN
F 3 "~" H 5100 1250 50  0001 C CNN
	1    5100 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C51
U 1 1 5D188C9A
P 6000 1250
F 0 "C51" V 6050 1400 50  0000 C CNN
F 1 "100u" V 6050 1100 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 6038 1100 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 1100 4750 1250
Wire Wire Line
	6300 1100 6300 1250
Wire Wire Line
	6300 1250 6150 1250
Wire Wire Line
	5250 1250 5500 1250
Wire Wire Line
	4950 1250 4750 1250
$Comp
L power:GND #PWR0103
U 1 1 5D188CA9
P 5500 1100
F 0 "#PWR0103" H 5500 850 50  0001 C CNN
F 1 "GND" H 5505 927 50  0000 C CNN
F 2 "" H 5500 1100 50  0001 C CNN
F 3 "" H 5500 1100 50  0001 C CNN
	1    5500 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1100 5500 1250
Connection ~ 5500 1250
Wire Wire Line
	5500 1250 5850 1250
Wire Wire Line
	8100 2700 8350 2700
Wire Wire Line
	7600 2700 7600 2450
Connection ~ 7600 2700
Wire Wire Line
	8350 2450 8350 2700
Connection ~ 8350 2700
Wire Wire Line
	8350 2700 8700 2700
Wire Wire Line
	9150 2450 9150 2700
Connection ~ 9150 2700
Wire Wire Line
	4800 6250 6200 6250
Wire Wire Line
	3250 6350 3450 6350
Wire Wire Line
	4250 6250 4300 6250
Wire Wire Line
	2950 6750 2850 6750
Wire Wire Line
	2850 6750 2850 6350
Wire Wire Line
	3250 6750 3450 6750
Wire Wire Line
	4300 6750 4300 6250
Connection ~ 4300 6250
Wire Wire Line
	4300 6250 4500 6250
Wire Wire Line
	3450 6700 3450 6750
Connection ~ 3450 6750
Wire Wire Line
	3450 6750 4300 6750
Wire Wire Line
	3450 6400 3450 6350
Connection ~ 3450 6350
Wire Wire Line
	3450 6350 3650 6350
Wire Wire Line
	3150 3650 3350 3650
Wire Wire Line
	4150 3550 4200 3550
Wire Wire Line
	2850 4050 2750 4050
Wire Wire Line
	2750 4050 2750 3650
Wire Wire Line
	3150 4050 3350 4050
Wire Wire Line
	4200 4050 4200 3550
Wire Wire Line
	3350 4000 3350 4050
Connection ~ 3350 4050
Wire Wire Line
	3350 4050 4200 4050
Wire Wire Line
	3350 3700 3350 3650
Connection ~ 3350 3650
Wire Wire Line
	3350 3650 3550 3650
Wire Wire Line
	1400 6350 2000 6350
Wire Wire Line
	2300 6350 2850 6350
Wire Wire Line
	1300 3650 1900 3650
Wire Wire Line
	2200 3650 2750 3650
Wire Wire Line
	4700 3550 7800 3550
Wire Wire Line
	4400 3550 4200 3550
Connection ~ 4200 3550
$Comp
L kamtar:AudioJack2_Ground_Switch J2
U 1 1 5E5732C1
P 10600 3800
F 0 "J2" H 10420 3818 50  0000 R CNN
F 1 "AudioJack" H 10420 3727 50  0000 R CNN
F 2 "Connect:Stereo_Jack_3.5mm_Switch_Ledino_KB3SPRS" H 10600 4000 50  0001 C CNN
F 3 "~" H 10600 4000 50  0001 C CNN
	1    10600 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 3600 10400 3600
NoConn ~ 10400 3700
NoConn ~ 10400 3900
Wire Wire Line
	10200 4000 10200 3800
Wire Wire Line
	10200 3800 10400 3800
Wire Wire Line
	9650 4000 10200 4000
$EndSCHEMATC
