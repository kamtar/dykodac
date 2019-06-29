EESchema Schematic File Version 4
LIBS:DykoDAC-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "DykoDAC"
Date "2019-03-15"
Rev "0"
Comp "Tomáš Polišenský"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C8C0A04
P 1150 2250
F 0 "J1" H 1070 2467 50  0000 C CNN
F 1 "AC Input" H 1070 2376 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1150 2250 50  0001 C CNN
F 3 "~" H 1150 2250 50  0001 C CNN
	1    1150 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5C8C0C67
P 2200 2000
F 0 "D1" V 2154 2079 50  0000 L CNN
F 1 "D" V 2245 2079 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2200 2000 50  0001 C CNN
F 3 "~" H 2200 2000 50  0001 C CNN
	1    2200 2000
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5C8C0D1C
P 2200 2500
F 0 "D2" V 2154 2579 50  0000 L CNN
F 1 "D" V 2245 2579 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2200 2500 50  0001 C CNN
F 3 "~" H 2200 2500 50  0001 C CNN
	1    2200 2500
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5C8C0DAF
P 2750 2000
F 0 "C2" H 2868 2046 50  0000 L CNN
F 1 "4700u" H 2868 1955 50  0000 L CNN
F 2 "kamtar:CP_Radial_D16.0mm_P7.50mm_Hor" H 2788 1850 50  0001 C CNN
F 3 "~" H 2750 2000 50  0001 C CNN
	1    2750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5C8C0E03
P 2750 2500
F 0 "C3" H 2868 2546 50  0000 L CNN
F 1 "4700u" H 2868 2455 50  0000 L CNN
F 2 "kamtar:CP_Radial_D16.0mm_P7.50mm_Hor" H 2788 2350 50  0001 C CNN
F 3 "~" H 2750 2500 50  0001 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2650 2200 2750
Wire Wire Line
	2750 2650 2750 2750
Wire Wire Line
	2200 1850 2200 1700
Wire Wire Line
	2750 1850 2750 1700
$Comp
L power:GND #PWR01
U 1 1 5C8C1266
P 1600 2450
F 0 "#PWR01" H 1600 2200 50  0001 C CNN
F 1 "GND" H 1605 2277 50  0000 C CNN
F 2 "" H 1600 2450 50  0001 C CNN
F 3 "" H 1600 2450 50  0001 C CNN
	1    1600 2450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7809 U2
U 1 1 5C8C1419
P 3850 1700
F 0 "U2" H 3850 1942 50  0000 C CNN
F 1 "L7809" H 3850 1851 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 3875 1550 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3850 1650 50  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7909_TO220 U3
U 1 1 5C8C1502
P 3850 2750
F 0 "U3" H 3850 2600 50  0000 C CNN
F 1 "L7909" H 3850 2509 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 3850 2550 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 5C8C18D5
P 4300 2500
F 0 "C8" H 4418 2546 50  0000 L CNN
F 1 "470u" H 4418 2455 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x6.7" H 4338 2350 50  0001 C CNN
F 3 "~" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5C8C1983
P 4300 1950
F 0 "C7" H 4418 1996 50  0000 L CNN
F 1 "470u" H 4418 1905 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x6.7" H 4338 1800 50  0001 C CNN
F 3 "~" H 4300 1950 50  0001 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2350 4300 2250
Connection ~ 4300 2250
Wire Wire Line
	4300 2250 4300 2100
Wire Wire Line
	3850 2450 3850 2250
Connection ~ 3850 2250
Wire Wire Line
	3850 2250 4300 2250
Wire Wire Line
	3850 2000 3850 2250
Wire Wire Line
	4150 2750 4300 2750
Wire Wire Line
	4300 2750 4300 2650
Wire Wire Line
	4300 1800 4300 1700
Wire Wire Line
	4300 1700 4150 1700
Text GLabel 3350 1450 0    50   Input ~ 0
VS_POS
Text GLabel 3300 3000 0    50   Input ~ 0
VS_NEG
$Comp
L power:+9V #PWR06
U 1 1 5C8C4647
P 4700 1550
F 0 "#PWR06" H 4700 1400 50  0001 C CNN
F 1 "+9V" H 4715 1723 50  0000 C CNN
F 2 "" H 4700 1550 50  0001 C CNN
F 3 "" H 4700 1550 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
Connection ~ 4300 1700
$Comp
L power:-9V #PWR07
U 1 1 5C8C4C51
P 4700 2900
F 0 "#PWR07" H 4700 2775 50  0001 C CNN
F 1 "-9V" H 4715 3073 50  0000 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "" H 4700 2900 50  0001 C CNN
	1    4700 2900
	-1   0    0    1   
$EndComp
Connection ~ 4300 2750
$Comp
L Device:C C10
U 1 1 5C8C528A
P 4700 1950
F 0 "C10" H 4815 1996 50  0000 L CNN
F 1 "100n" H 4815 1905 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4738 1800 50  0001 C CNN
F 3 "~" H 4700 1950 50  0001 C CNN
	1    4700 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C8C52F2
P 4700 2500
F 0 "C11" H 4815 2546 50  0000 L CNN
F 1 "100n" H 4815 2455 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4738 2350 50  0001 C CNN
F 3 "~" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1700 4700 1700
Wire Wire Line
	4700 1700 4700 1800
Wire Wire Line
	4300 2250 4700 2250
Wire Wire Line
	4700 2250 4700 2100
Wire Wire Line
	4700 2350 4700 2250
Connection ~ 4700 2250
Wire Wire Line
	4700 2650 4700 2750
Wire Wire Line
	4700 2750 4300 2750
Wire Wire Line
	4700 2900 4700 2750
Connection ~ 4700 2750
Wire Wire Line
	4700 1700 4700 1550
Connection ~ 4700 1700
Wire Wire Line
	2750 2150 2750 2250
Wire Wire Line
	2750 1700 2200 1700
Wire Wire Line
	2200 2750 2750 2750
Connection ~ 2750 2750
Connection ~ 2750 1700
$Comp
L power:GND #PWR04
U 1 1 5C8CBD45
P 2600 2250
F 0 "#PWR04" H 2600 2000 50  0001 C CNN
F 1 "GND" V 2605 2122 50  0000 R CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2250 2750 2250
Connection ~ 2750 2250
Wire Wire Line
	2750 2250 2750 2350
Wire Wire Line
	2750 2250 3450 2250
Wire Wire Line
	2750 2750 3450 2750
Wire Wire Line
	2750 1700 3450 1700
$Comp
L Device:C C4
U 1 1 5C8CCA6E
P 3450 2000
F 0 "C4" H 3565 2046 50  0000 L CNN
F 1 "100n" H 3565 1955 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3488 1850 50  0001 C CNN
F 3 "~" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C8CCB18
P 3450 2500
F 0 "C5" H 3350 2650 50  0000 R CNN
F 1 "100n" H 3350 2550 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 3488 2350 50  0001 C CNN
F 3 "~" H 3450 2500 50  0001 C CNN
	1    3450 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1850 3450 1700
Connection ~ 3450 1700
Wire Wire Line
	3450 1700 3550 1700
Wire Wire Line
	3450 2150 3450 2250
Connection ~ 3450 2250
Wire Wire Line
	3450 2250 3850 2250
Wire Wire Line
	3450 2650 3450 2750
Connection ~ 3450 2750
Wire Wire Line
	3450 2750 3550 2750
Wire Wire Line
	3450 2350 3450 2250
Wire Wire Line
	3450 1700 3450 1450
Wire Wire Line
	3450 1450 3350 1450
Wire Wire Line
	3450 2750 3450 3000
Wire Wire Line
	3450 3000 3300 3000
$Comp
L Regulator_Linear:LT1762-5 U1
U 1 1 5C8D4B65
P 3500 4600
F 0 "U1" H 3500 5067 50  0000 C CNN
F 1 "LT1762-5" H 3500 4976 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 3500 4250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/LT1762.pdf" H 3500 4050 50  0001 C CNN
	1    3500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4400 2950 4400
Wire Wire Line
	2550 4400 2550 4300
Wire Wire Line
	3100 4700 2950 4700
Wire Wire Line
	2950 4700 2950 4400
Connection ~ 2950 4400
Wire Wire Line
	2950 4400 2550 4400
$Comp
L Device:C C1
U 1 1 5C8D64CC
P 2550 4650
F 0 "C1" H 2665 4696 50  0000 L CNN
F 1 "1u" H 2665 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2588 4500 50  0001 C CNN
F 3 "~" H 2550 4650 50  0001 C CNN
	1    2550 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C8D6589
P 2550 5100
F 0 "#PWR03" H 2550 4850 50  0001 C CNN
F 1 "GND" H 2555 4927 50  0000 C CNN
F 2 "" H 2550 5100 50  0001 C CNN
F 3 "" H 2550 5100 50  0001 C CNN
	1    2550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4500 2550 4400
Connection ~ 2550 4400
Wire Wire Line
	2550 4800 2550 5000
Wire Wire Line
	3500 4900 3500 5000
Wire Wire Line
	3500 5000 2550 5000
Connection ~ 2550 5000
Wire Wire Line
	2550 5000 2550 5100
$Comp
L power:+5VA #PWR05
U 1 1 5C8D8B0E
P 4700 4300
F 0 "#PWR05" H 4700 4150 50  0001 C CNN
F 1 "+5VA" H 4715 4473 50  0000 C CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "" H 4700 4300 50  0001 C CNN
	1    4700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4400 3950 4400
Wire Wire Line
	4700 4400 4700 4300
$Comp
L Device:C C6
U 1 1 5C8D9A44
P 4200 4650
F 0 "C6" H 4315 4696 50  0000 L CNN
F 1 "10n" H 4315 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4238 4500 50  0001 C CNN
F 3 "~" H 4200 4650 50  0001 C CNN
	1    4200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4700 4000 4700
Wire Wire Line
	4000 4700 4000 4850
Wire Wire Line
	4000 4850 4200 4850
Wire Wire Line
	4200 4850 4200 4800
Wire Wire Line
	4200 4500 3950 4500
Wire Wire Line
	3950 4500 3950 4400
Connection ~ 3950 4500
Wire Wire Line
	3950 4500 3900 4500
Connection ~ 3950 4400
Wire Wire Line
	3950 4400 4700 4400
$Comp
L Device:CP C9
U 1 1 5C8DCF89
P 4700 4650
F 0 "C9" H 4818 4696 50  0000 L CNN
F 1 "10u" H 4818 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4738 4500 50  0001 C CNN
F 3 "~" H 4700 4650 50  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4500 4700 4400
Connection ~ 4700 4400
Wire Wire Line
	4700 4800 4700 5000
Wire Wire Line
	4700 5000 3500 5000
Connection ~ 3500 5000
$Comp
L Regulator_Linear:LP5907MFX-1.8 U6
U 1 1 5C8FB5E4
P 8950 2200
F 0 "U6" H 8950 2567 50  0000 C CNN
F 1 "LP5907-3.3" H 8950 2476 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 8950 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5907.pdf" H 8950 2700 50  0001 C CNN
	1    8950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5C8FBB5C
P 8400 2350
F 0 "C18" H 8515 2396 50  0000 L CNN
F 1 "1u" H 8515 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8438 2200 50  0001 C CNN
F 3 "~" H 8400 2350 50  0001 C CNN
	1    8400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C8FBB63
P 8400 2800
F 0 "#PWR08" H 8400 2550 50  0001 C CNN
F 1 "GND" H 8405 2627 50  0000 C CNN
F 2 "" H 8400 2800 50  0001 C CNN
F 3 "" H 8400 2800 50  0001 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2200 8400 2100
Wire Wire Line
	8400 2500 8400 2700
Connection ~ 8400 2700
Wire Wire Line
	8400 2700 8400 2800
$Comp
L Device:C C17
U 1 1 5C8FBB76
P 7950 2350
F 0 "C17" H 8065 2396 50  0000 L CNN
F 1 "100n" H 8065 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7988 2200 50  0001 C CNN
F 3 "~" H 7950 2350 50  0001 C CNN
	1    7950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2700 7950 2700
Wire Wire Line
	7150 2700 7150 2400
Wire Wire Line
	7950 2500 7950 2700
Connection ~ 7950 2700
Wire Wire Line
	7950 2700 7550 2700
Wire Wire Line
	7950 2200 7950 2100
Connection ~ 7950 2100
Wire Wire Line
	7950 2100 8400 2100
Wire Wire Line
	7450 2100 7550 2100
$Comp
L Device:CP C14
U 1 1 5C8FBB86
P 7550 2350
F 0 "C14" H 7668 2396 50  0000 L CNN
F 1 "470u" H 7668 2305 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x6.7" H 7588 2200 50  0001 C CNN
F 3 "~" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2200 7550 2100
Connection ~ 7550 2100
Wire Wire Line
	7550 2100 7950 2100
Wire Wire Line
	7550 2500 7550 2700
Connection ~ 7550 2700
Wire Wire Line
	7550 2700 7150 2700
$Comp
L Device:C C12
U 1 1 5C8FBB93
P 6600 2350
F 0 "C12" H 6715 2396 50  0000 L CNN
F 1 "100n" H 6715 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6638 2200 50  0001 C CNN
F 3 "~" H 6600 2350 50  0001 C CNN
	1    6600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2500 6600 2700
Wire Wire Line
	6600 2700 7150 2700
Connection ~ 7150 2700
Text GLabel 6500 1850 0    50   Input ~ 0
VS_POS
Wire Wire Line
	6850 2100 6600 2100
Wire Wire Line
	6600 2100 6600 2200
Wire Wire Line
	6500 1850 6600 1850
Wire Wire Line
	6600 1850 6600 2100
Connection ~ 6600 2100
Wire Wire Line
	8650 2100 8500 2100
Connection ~ 8400 2100
Wire Wire Line
	8650 2200 8500 2200
Wire Wire Line
	8500 2200 8500 2100
Connection ~ 8500 2100
Wire Wire Line
	8500 2100 8400 2100
Wire Wire Line
	8950 2500 8950 2700
Wire Wire Line
	8950 2700 8400 2700
$Comp
L Device:C C20
U 1 1 5C90756D
P 9400 2350
F 0 "C20" H 9515 2396 50  0000 L CNN
F 1 "1u" H 9515 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9438 2200 50  0001 C CNN
F 3 "~" H 9400 2350 50  0001 C CNN
	1    9400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2500 9400 2700
Wire Wire Line
	9400 2200 9400 2100
Wire Wire Line
	9400 2100 9250 2100
Wire Wire Line
	9400 2700 8950 2700
Connection ~ 8950 2700
$Comp
L Regulator_Linear:L7805 U4
U 1 1 5C9109CC
P 7150 2100
F 0 "U4" H 7150 2342 50  0000 C CNN
F 1 "L7805" H 7150 2251 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 7175 1950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7150 2050 50  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5C910C76
P 9400 1950
F 0 "#PWR010" H 9400 1800 50  0001 C CNN
F 1 "+3.3V" H 9415 2123 50  0000 C CNN
F 2 "" H 9400 1950 50  0001 C CNN
F 3 "" H 9400 1950 50  0001 C CNN
	1    9400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2100 9400 1950
Connection ~ 9400 2100
Text Notes 3850 1250 0    118  ~ 0
Op-Amp Power
Text Notes 8850 1600 0    118  ~ 0
Digital
Text Notes 4100 4000 0    118  ~ 0
DAC Analog
$Comp
L power:+9V #PWR02
U 1 1 5C8C6769
P 2550 4300
F 0 "#PWR02" H 2550 4150 50  0001 C CNN
F 1 "+9V" H 2565 4473 50  0000 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
Text Notes 7250 6900 0    236  ~ 0
Power supply block
$Comp
L Regulator_Linear:LP5907MFX-1.8 U7
U 1 1 5CFE4FBD
P 8950 4500
F 0 "U7" H 8950 4867 50  0000 C CNN
F 1 "LP5907-3.3" H 8950 4776 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 8950 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5907.pdf" H 8950 5000 50  0001 C CNN
	1    8950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5CFE4FC3
P 8400 4650
F 0 "C19" H 8515 4696 50  0000 L CNN
F 1 "22u" H 8515 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8438 4500 50  0001 C CNN
F 3 "~" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CFE4FC9
P 8400 5100
F 0 "#PWR09" H 8400 4850 50  0001 C CNN
F 1 "GND" H 8405 4927 50  0000 C CNN
F 2 "" H 8400 5100 50  0001 C CNN
F 3 "" H 8400 5100 50  0001 C CNN
	1    8400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4500 8400 4400
Wire Wire Line
	8400 4800 8400 5000
Connection ~ 8400 5000
Wire Wire Line
	8400 5000 8400 5100
$Comp
L Device:C C16
U 1 1 5CFE4FD3
P 7800 4650
F 0 "C16" H 7915 4696 50  0000 L CNN
F 1 "100n" H 7915 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7838 4500 50  0001 C CNN
F 3 "~" H 7800 4650 50  0001 C CNN
	1    7800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5000 7150 4700
Wire Wire Line
	7450 4400 7550 4400
$Comp
L Device:CP C15
U 1 1 5CFE4FE2
P 7550 4650
F 0 "C15" H 7550 4750 50  0000 L CNN
F 1 "470u" H 7350 4550 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x6.7" H 7588 4500 50  0001 C CNN
F 3 "~" H 7550 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4500 7550 4400
Wire Wire Line
	7550 4800 7550 5000
Connection ~ 7550 5000
Wire Wire Line
	7550 5000 7150 5000
$Comp
L Device:C C13
U 1 1 5CFE4FEE
P 6600 4650
F 0 "C13" H 6715 4696 50  0000 L CNN
F 1 "100n" H 6715 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6638 4500 50  0001 C CNN
F 3 "~" H 6600 4650 50  0001 C CNN
	1    6600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4800 6600 5000
Wire Wire Line
	6600 5000 7150 5000
Connection ~ 7150 5000
Text GLabel 6500 4150 0    50   Input ~ 0
VS_POS
Wire Wire Line
	6850 4400 6600 4400
Wire Wire Line
	6600 4400 6600 4500
Wire Wire Line
	6500 4150 6600 4150
Wire Wire Line
	6600 4150 6600 4400
Connection ~ 6600 4400
Wire Wire Line
	8650 4400 8500 4400
Wire Wire Line
	8650 4500 8500 4500
Wire Wire Line
	8500 4500 8500 4400
Connection ~ 8500 4400
Wire Wire Line
	8500 4400 8400 4400
Wire Wire Line
	8950 4800 8950 5000
Wire Wire Line
	8950 5000 8400 5000
$Comp
L Device:C C21
U 1 1 5CFE5005
P 9400 4650
F 0 "C21" H 9515 4696 50  0000 L CNN
F 1 "1u" H 9515 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9438 4500 50  0001 C CNN
F 3 "~" H 9400 4650 50  0001 C CNN
	1    9400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4800 9400 5000
Wire Wire Line
	9400 4500 9400 4400
Wire Wire Line
	9400 4400 9250 4400
Wire Wire Line
	9400 5000 8950 5000
Connection ~ 8950 5000
$Comp
L Regulator_Linear:L7805 U5
U 1 1 5CFE5010
P 7150 4400
F 0 "U5" H 7150 4642 50  0000 C CNN
F 1 "78L05" H 7150 4551 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-89-3" H 7175 4250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7150 4350 50  0001 C CNN
	1    7150 4400
	1    0    0    -1  
$EndComp
Connection ~ 9400 4400
Text Notes 8400 3900 0    118  ~ 0
Oscillators
Text GLabel 9450 4100 2    47   Input ~ 0
3V3_OSC
Wire Wire Line
	9400 4100 9450 4100
Wire Wire Line
	9400 4100 9400 4400
Wire Wire Line
	7550 5000 7800 5000
$Comp
L Device:L L1
U 1 1 5D040DFE
P 8100 4400
F 0 "L1" V 8290 4400 50  0000 C CNN
F 1 "100u" V 8199 4400 50  0000 C CNN
F 2 "Choke_SMD:Choke_SMD_1206_Standard" H 8100 4400 50  0001 C CNN
F 3 "~" H 8100 4400 50  0001 C CNN
	1    8100 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 4400 7800 4400
Connection ~ 7550 4400
Wire Wire Line
	8250 4400 8400 4400
Connection ~ 8400 4400
Wire Wire Line
	7800 4500 7800 4400
Connection ~ 7800 4400
Wire Wire Line
	7800 4400 7550 4400
Wire Wire Line
	7800 4800 7800 5000
Connection ~ 7800 5000
Wire Wire Line
	7800 5000 8400 5000
$Comp
L Device:Polyfuse F1
U 1 1 5D04EA98
P 1750 2250
F 0 "F1" V 1525 2250 50  0000 C CNN
F 1 "Polyfuse" V 1616 2250 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 1800 2050 50  0001 L CNN
F 3 "~" H 1750 2250 50  0001 C CNN
	1    1750 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2150 2200 2250
Wire Wire Line
	1350 2350 1600 2350
Wire Wire Line
	1600 2350 1600 2450
Wire Wire Line
	1350 2250 1600 2250
Wire Wire Line
	1900 2250 2200 2250
Connection ~ 2200 2250
Wire Wire Line
	2200 2250 2200 2350
$EndSCHEMATC
