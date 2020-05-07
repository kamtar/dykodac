EESchema Schematic File Version 4
EELAYER 30 0
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
P 1200 2300
F 0 "J1" H 1120 2517 50  0000 C CNN
F 1 "AC Input" H 1120 2426 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Altech_AK300-2_P5.00mm" H 1200 2300 50  0001 C CNN
F 3 "~" H 1200 2300 50  0001 C CNN
	1    1200 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5C8C0C67
P 2600 2050
F 0 "D1" V 2554 2129 50  0000 L CNN
F 1 "D" V 2645 2129 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB" H 2600 2050 50  0001 C CNN
F 3 "~" H 2600 2050 50  0001 C CNN
	1    2600 2050
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5C8C0D1C
P 2600 2550
F 0 "D2" V 2554 2629 50  0000 L CNN
F 1 "D" V 2645 2629 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB" H 2600 2550 50  0001 C CNN
F 3 "~" H 2600 2550 50  0001 C CNN
	1    2600 2550
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5C8C0DAF
P 3150 1850
F 0 "C2" H 3268 1896 50  0000 L CNN
F 1 "4700u" H 3268 1805 50  0000 L CNN
F 2 "kamtar:CP_Radial_D16.0mm_P7.50mm_Hor" H 3188 1700 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5C8C0E03
P 3150 2650
F 0 "C3" H 3268 2696 50  0000 L CNN
F 1 "4700u" H 3268 2605 50  0000 L CNN
F 2 "kamtar:CP_Radial_D16.0mm_P7.50mm_Hor" H 3188 2500 50  0001 C CNN
F 3 "~" H 3150 2650 50  0001 C CNN
	1    3150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C8C1266
P 1550 2200
F 0 "#PWR01" H 1550 1950 50  0001 C CNN
F 1 "GND" H 1555 2027 50  0000 C CNN
F 2 "" H 1550 2200 50  0001 C CNN
F 3 "" H 1550 2200 50  0001 C CNN
	1    1550 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C8
U 1 1 5C8C18D5
P 5050 2550
F 0 "C8" H 5168 2596 50  0000 L CNN
F 1 "100u" H 5168 2505 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 5088 2400 50  0001 C CNN
F 3 "~" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5C8C1983
P 5050 1850
F 0 "C7" H 5168 1896 50  0000 L CNN
F 1 "100u" H 5168 1805 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 5088 1700 50  0001 C CNN
F 3 "~" H 5050 1850 50  0001 C CNN
F 4 "TAJD107K016SNJ " H 5050 1850 50  0001 C CNN "Part"
	1    5050 1850
	1    0    0    -1  
$EndComp
Text GLabel 3550 1350 0    50   Input ~ 0
VS_POS
Text GLabel 3550 3050 0    50   Input ~ 0
VS_NEG
$Comp
L Device:C C10
U 1 1 5C8C528A
P 4550 1850
F 0 "C10" H 4665 1896 50  0000 L CNN
F 1 "0.1u" H 4665 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 1700 50  0001 C CNN
F 3 "~" H 4550 1850 50  0001 C CNN
	1    4550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C8C52F2
P 4550 2550
F 0 "C11" H 4665 2596 50  0000 L CNN
F 1 "0.1u" H 4665 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 2400 50  0001 C CNN
F 3 "~" H 4550 2550 50  0001 C CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C8CBD45
P 3000 2200
F 0 "#PWR04" H 3000 1950 50  0001 C CNN
F 1 "GND" V 3005 2072 50  0000 R CNN
F 2 "" H 3000 2200 50  0001 C CNN
F 3 "" H 3000 2200 50  0001 C CNN
	1    3000 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2200 3150 2200
Connection ~ 3150 2200
$Comp
L Device:C C4
U 1 1 5C8CCA6E
P 3650 1850
F 0 "C4" H 3765 1896 50  0000 L CNN
F 1 "0.1u" H 3765 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3688 1700 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C8CCB18
P 3650 2650
F 0 "C5" H 3550 2800 50  0000 R CNN
F 1 "0.1u" H 3550 2700 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 3688 2500 50  0001 C CNN
F 3 "~" H 3650 2650 50  0001 C CNN
	1    3650 2650
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1762-5 U1
U 1 1 5C8D4B65
P 3600 4600
F 0 "U1" H 3600 5067 50  0000 C CNN
F 1 "LT1762-5" H 3600 4976 50  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3600 4250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/LT1762.pdf" H 3600 4050 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4400 3050 4400
Wire Wire Line
	2650 4400 2650 4300
Wire Wire Line
	3200 4700 3050 4700
Wire Wire Line
	3050 4700 3050 4400
Connection ~ 3050 4400
Wire Wire Line
	3050 4400 2650 4400
$Comp
L Device:C C1
U 1 1 5C8D64CC
P 2650 4650
F 0 "C1" H 2765 4696 50  0000 L CNN
F 1 "1u" H 2765 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2688 4500 50  0001 C CNN
F 3 "~" H 2650 4650 50  0001 C CNN
	1    2650 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C8D6589
P 2650 5100
F 0 "#PWR03" H 2650 4850 50  0001 C CNN
F 1 "GND" H 2655 4927 50  0000 C CNN
F 2 "" H 2650 5100 50  0001 C CNN
F 3 "" H 2650 5100 50  0001 C CNN
	1    2650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4500 2650 4400
Connection ~ 2650 4400
Wire Wire Line
	2650 4800 2650 5000
Wire Wire Line
	3600 4900 3600 5000
Wire Wire Line
	3600 5000 2650 5000
Connection ~ 2650 5000
Wire Wire Line
	2650 5000 2650 5100
$Comp
L power:+5VA #PWR05
U 1 1 5C8D8B0E
P 4800 4300
F 0 "#PWR05" H 4800 4150 50  0001 C CNN
F 1 "+5VA" H 4815 4473 50  0000 C CNN
F 2 "" H 4800 4300 50  0001 C CNN
F 3 "" H 4800 4300 50  0001 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4400 4050 4400
Wire Wire Line
	4800 4400 4800 4300
$Comp
L Device:C C6
U 1 1 5C8D9A44
P 4300 4650
F 0 "C6" H 4415 4696 50  0000 L CNN
F 1 "10n" H 4415 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4338 4500 50  0001 C CNN
F 3 "~" H 4300 4650 50  0001 C CNN
	1    4300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4700 4100 4700
Wire Wire Line
	4100 4700 4100 4850
Wire Wire Line
	4100 4850 4300 4850
Wire Wire Line
	4300 4850 4300 4800
Wire Wire Line
	4300 4500 4050 4500
Wire Wire Line
	4050 4500 4050 4400
Connection ~ 4050 4500
Wire Wire Line
	4050 4500 4000 4500
Connection ~ 4050 4400
Wire Wire Line
	4050 4400 4800 4400
$Comp
L Device:CP C9
U 1 1 5C8DCF89
P 4800 4650
F 0 "C9" H 4918 4696 50  0000 L CNN
F 1 "10u" H 4918 4605 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4838 4500 50  0001 C CNN
F 3 "~" H 4800 4650 50  0001 C CNN
F 4 "T491A106K016AT " H 4800 4650 50  0001 C CNN "Part"
	1    4800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4800 4400
Connection ~ 4800 4400
Wire Wire Line
	4800 4800 4800 5000
Wire Wire Line
	4800 5000 3600 5000
Connection ~ 3600 5000
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
F 2 "Capacitors_SMD:C_0603" H 8438 2200 50  0001 C CNN
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
P 7550 2350
F 0 "C17" H 7300 2350 50  0000 L CNN
F 1 "0.1u" H 7300 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7588 2200 50  0001 C CNN
F 3 "~" H 7550 2350 50  0001 C CNN
	1    7550 2350
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
P 7950 2350
F 0 "C14" H 8068 2396 50  0000 L CNN
F 1 "10u" H 8068 2305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7988 2200 50  0001 C CNN
F 3 "~" H 7950 2350 50  0001 C CNN
	1    7950 2350
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
F 1 "0.1u" H 6715 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6638 2200 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0603" H 9438 2200 50  0001 C CNN
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
Text Notes 8850 1600 0    118  ~ 0
Digital
Text Notes 4200 4000 0    118  ~ 0
DAC Analog
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
F 1 "1u" H 8515 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8438 4500 50  0001 C CNN
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
P 7550 4650
F 0 "C16" H 7300 4650 50  0000 L CNN
F 1 "0.1u" H 7300 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7588 4500 50  0001 C CNN
F 3 "~" H 7550 4650 50  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5000 7150 4700
Wire Wire Line
	7450 4400 7550 4400
$Comp
L Device:CP C15
U 1 1 5CFE4FE2
P 7800 4650
F 0 "C15" H 7900 4750 50  0000 L CNN
F 1 "10u" H 7900 4650 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 7838 4500 50  0001 C CNN
F 3 "~" H 7800 4650 50  0001 C CNN
	1    7800 4650
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
F 1 "0.1u" H 6715 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6638 4500 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0603" H 9438 4500 50  0001 C CNN
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
F 1 "Ferrite Bead" V 8199 4400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 8100 4400 50  0001 C CNN
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
P 2150 2300
F 0 "F1" V 1925 2300 50  0000 C CNN
F 1 "Polyfuse" V 2016 2300 50  0000 C CNN
F 2 "kamtar:UNIFuse_SMD2920" H 2200 2100 50  0001 L CNN
F 3 "~" H 2150 2300 50  0001 C CNN
	1    2150 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2200 2600 2300
Wire Wire Line
	1550 2300 1550 2200
Wire Wire Line
	2300 2300 2600 2300
Connection ~ 2600 2300
Wire Wire Line
	2600 2300 2600 2400
Wire Wire Line
	3800 1500 3650 1500
Wire Wire Line
	2600 1500 2600 1900
Connection ~ 3650 1500
Wire Wire Line
	3150 1700 3150 1500
Connection ~ 3150 1500
Wire Wire Line
	3150 1500 3650 1500
Wire Wire Line
	2600 1500 3150 1500
Wire Wire Line
	3150 2000 3150 2200
Wire Wire Line
	2600 2700 2600 2900
Wire Wire Line
	2600 2900 3150 2900
Wire Wire Line
	3150 2800 3150 2900
Connection ~ 3150 2900
Wire Wire Line
	3150 2900 3650 2900
Connection ~ 3650 2900
Wire Wire Line
	3650 2900 3800 2900
Wire Wire Line
	3150 2200 3150 2500
Wire Wire Line
	3150 2200 3650 2200
Wire Wire Line
	3650 2000 3650 2200
Connection ~ 3650 2200
Wire Wire Line
	3650 2500 3650 2200
Wire Wire Line
	5050 2900 5050 2700
Wire Wire Line
	4550 2700 4550 2900
Wire Wire Line
	4550 2900 5050 2900
Wire Wire Line
	5050 2200 5050 2000
Wire Wire Line
	5050 2400 5050 2200
Connection ~ 5050 2200
Wire Wire Line
	4550 2400 4550 2200
Connection ~ 4550 2200
Wire Wire Line
	4550 2200 5050 2200
Wire Wire Line
	4550 2000 4550 2200
Wire Wire Line
	5050 1500 5050 1700
Wire Wire Line
	4550 1700 4550 1500
Wire Wire Line
	4550 1500 5050 1500
Wire Wire Line
	3650 1500 3650 1700
Wire Wire Line
	3550 1350 3650 1350
Wire Wire Line
	3650 1350 3650 1500
Wire Wire Line
	3650 2800 3650 2900
Wire Wire Line
	3550 3050 3650 3050
Wire Wire Line
	3650 3050 3650 2900
Wire Wire Line
	5050 1350 5050 1500
Connection ~ 5050 1500
Connection ~ 5050 2900
Wire Wire Line
	5050 2900 5050 3050
$Comp
L Device:CP C49
U 1 1 5EAF933C
P 9850 2350
F 0 "C49" H 9968 2396 50  0000 L CNN
F 1 "100u" H 9968 2305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 9888 2200 50  0001 C CNN
F 3 "~" H 9850 2350 50  0001 C CNN
	1    9850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2100 9850 2100
Wire Wire Line
	9850 2100 9850 2200
Wire Wire Line
	9850 2500 9850 2700
Wire Wire Line
	9850 2700 9400 2700
Connection ~ 9400 2700
$Comp
L Switch:SW_SPDT SW5
U 1 1 5E682A1D
P 1750 2400
F 0 "SW5" H 1700 2200 50  0000 C CNN
F 1 "PWR_SWITCH" H 1750 2100 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Push_1P2T_Vertical_E-Switch_800UDP8P1A1M6" H 1750 2400 50  0001 C CNN
F 3 "~" H 1750 2400 50  0001 C CNN
	1    1750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2300 1950 2300
Wire Wire Line
	1550 2400 1400 2400
Wire Wire Line
	1550 2300 1400 2300
NoConn ~ 1950 2500
$Comp
L Regulator_Linear:L7812 U2
U 1 1 5E70CF45
P 4100 1500
F 0 "U2" H 4100 1742 50  0000 C CNN
F 1 "L7812" H 4100 1651 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 4125 1350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4100 1450 50  0001 C CNN
	1    4100 1500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7912 U3
U 1 1 5E734415
P 4100 2900
F 0 "U3" H 4100 2751 50  0000 C CNN
F 1 "L7912" H 4100 2660 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 4100 2700 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 4100 2900 50  0001 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2900 4550 2900
Connection ~ 4550 2900
Wire Wire Line
	4400 1500 4550 1500
Connection ~ 4550 1500
Wire Wire Line
	4100 2600 4100 2200
Wire Wire Line
	4100 2200 3650 2200
Wire Wire Line
	4100 1800 4100 2200
Connection ~ 4100 2200
Wire Wire Line
	4550 2200 4100 2200
$Comp
L power:+12V #PWR0103
U 1 1 5E6CE0CD
P 5050 1350
F 0 "#PWR0103" H 5050 1200 50  0001 C CNN
F 1 "+12V" H 5065 1523 50  0000 C CNN
F 2 "" H 5050 1350 50  0001 C CNN
F 3 "" H 5050 1350 50  0001 C CNN
	1    5050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0105
U 1 1 5E6CE56D
P 5050 3050
F 0 "#PWR0105" H 5050 3150 50  0001 C CNN
F 1 "-12V" H 5065 3223 50  0000 C CNN
F 2 "" H 5050 3050 50  0001 C CNN
F 3 "" H 5050 3050 50  0001 C CNN
	1    5050 3050
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5E6D4F49
P 2650 4300
F 0 "#PWR0106" H 2650 4150 50  0001 C CNN
F 1 "+12V" H 2665 4473 50  0000 C CNN
F 2 "" H 2650 4300 50  0001 C CNN
F 3 "" H 2650 4300 50  0001 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
$Comp
L DykoDAC-rescue:78l05-kamtar U5
U 1 1 5E735AE7
P 7150 4400
AR Path="/5E735AE7" Ref="U5"  Part="1" 
AR Path="/5C91BC19/5E735AE7" Ref="U5"  Part="1" 
F 0 "U5" H 7150 4642 50  0000 C CNN
F 1 "78l05" H 7150 4551 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7175 4250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7150 4350 50  0001 C CNN
	1    7150 4400
	1    0    0    -1  
$EndComp
Text Notes 750  1300 0    79   ~ 0
Designed for 15V/1A transformer
$EndSCHEMATC
