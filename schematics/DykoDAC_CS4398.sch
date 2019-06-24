EESchema Schematic File Version 4
LIBS:DykoDAC-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L DykoDAC-rescue:CS4398-cirrus-2 U?
U 1 1 5C8F866A
P 8050 3350
AR Path="/5C8F866A" Ref="U?"  Part="1" 
AR Path="/5C8F8588/5C8F866A" Ref="U8"  Part="1" 
F 0 "U8" H 8050 3400 50  0000 C CNN
F 1 "CS4398" H 8050 3300 50  0000 C CNN
F 2 "cirrus-2-TSSOP28L" H 8050 3500 50  0001 C CNN
F 3 "" H 8050 3350 50  0001 C CNN
	1    8050 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C27
U 1 1 5C8F872D
P 7750 1700
F 0 "C27" H 7635 1654 50  0000 R CNN
F 1 "0.1u" H 7635 1745 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 7788 1550 50  0001 C CNN
F 3 "~" H 7750 1700 50  0001 C CNN
	1    7750 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C28
U 1 1 5C8F884F
P 8350 1700
F 0 "C28" H 8100 1750 50  0000 L CNN
F 1 "0.1u" H 8100 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8388 1550 50  0001 C CNN
F 3 "~" H 8350 1700 50  0001 C CNN
	1    8350 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C26
U 1 1 5C8F88F7
P 7400 1700
F 0 "C26" H 7282 1654 50  0000 R CNN
F 1 "10u" H 7282 1745 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 7438 1550 50  0001 C CNN
F 3 "~" H 7400 1700 50  0001 C CNN
	1    7400 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C29
U 1 1 5C8F8965
P 8650 1700
F 0 "C29" H 8532 1654 50  0000 R CNN
F 1 "10u" H 8532 1745 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 8688 1550 50  0001 C CNN
F 3 "~" H 8650 1700 50  0001 C CNN
	1    8650 1700
	-1   0    0    1   
$EndComp
$Comp
L power:+5VA #PWR024
U 1 1 5C8F8A05
P 8950 1950
F 0 "#PWR024" H 8950 1800 50  0001 C CNN
F 1 "+5VA" V 8965 2078 50  0000 L CNN
F 2 "" H 8950 1950 50  0001 C CNN
F 3 "" H 8950 1950 50  0001 C CNN
	1    8950 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1950 8150 2050
Wire Wire Line
	8350 1850 8350 1950
Connection ~ 8350 1950
Wire Wire Line
	8350 1950 8150 1950
Wire Wire Line
	8650 1850 8650 1950
Wire Wire Line
	8650 1950 8350 1950
$Comp
L power:+3.3V #PWR021
U 1 1 5C8F8A9A
P 7150 1950
F 0 "#PWR021" H 7150 1800 50  0001 C CNN
F 1 "+3.3V" V 7165 2078 50  0000 L CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	1    7150 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 1950 8650 1950
Connection ~ 8650 1950
Wire Wire Line
	7950 2050 7950 1950
Wire Wire Line
	7950 1950 7750 1950
Wire Wire Line
	7400 1850 7400 1950
Connection ~ 7400 1950
Wire Wire Line
	7400 1950 7150 1950
Wire Wire Line
	7750 1850 7750 1950
Connection ~ 7750 1950
Wire Wire Line
	7750 1950 7400 1950
$Comp
L power:GND #PWR023
U 1 1 5C8F8C22
P 8050 1400
F 0 "#PWR023" H 8050 1150 50  0001 C CNN
F 1 "GND" H 8055 1227 50  0000 C CNN
F 2 "" H 8050 1400 50  0001 C CNN
F 3 "" H 8050 1400 50  0001 C CNN
	1    8050 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 1400 8050 1450
Wire Wire Line
	8050 1450 7750 1450
Wire Wire Line
	7400 1450 7400 1550
Wire Wire Line
	7750 1550 7750 1450
Connection ~ 7750 1450
Wire Wire Line
	7750 1450 7400 1450
Wire Wire Line
	8050 1450 8350 1450
Wire Wire Line
	8350 1450 8350 1550
Connection ~ 8050 1450
Wire Wire Line
	8650 1550 8650 1450
Wire Wire Line
	8650 1450 8350 1450
Connection ~ 8350 1450
$Comp
L power:GND #PWR022
U 1 1 5C8F9544
P 7950 4850
F 0 "#PWR022" H 7950 4600 50  0001 C CNN
F 1 "GND" H 7955 4677 50  0000 C CNN
F 2 "" H 7950 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4850 7950 4750
Wire Wire Line
	8150 4650 8150 4750
Wire Wire Line
	8150 4750 7950 4750
Connection ~ 7950 4750
Wire Wire Line
	7950 4750 7950 4650
$Comp
L Device:C C30
U 1 1 5C8F9AED
P 9450 3800
F 0 "C30" H 9200 3850 50  0000 L CNN
F 1 "0.1u" H 9200 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9488 3650 50  0001 C CNN
F 3 "~" H 9450 3800 50  0001 C CNN
	1    9450 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C32
U 1 1 5C8F9AF4
P 9750 3800
F 0 "C32" H 9800 3900 50  0000 L CNN
F 1 "100u" H 9800 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9788 3650 50  0001 C CNN
F 3 "~" H 9750 3800 50  0001 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5C8F9DD9
P 9450 4250
F 0 "C31" H 9200 4300 50  0000 L CNN
F 1 "0.1u" H 9200 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9488 4100 50  0001 C CNN
F 3 "~" H 9450 4250 50  0001 C CNN
	1    9450 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C33
U 1 1 5C8F9DE0
P 9750 4250
F 0 "C33" H 9632 4204 50  0000 R CNN
F 1 "33u" H 9632 4295 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 9788 4100 50  0001 C CNN
F 3 "~" H 9750 4250 50  0001 C CNN
	1    9750 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 4050 9450 4050
Wire Wire Line
	9750 4050 9750 4100
Wire Wire Line
	9750 3950 9750 4050
Connection ~ 9750 4050
Wire Wire Line
	9450 3950 9450 4050
Connection ~ 9450 4050
Wire Wire Line
	9450 4050 9750 4050
Wire Wire Line
	9450 4100 9450 4050
Wire Wire Line
	9750 4400 9750 4500
Wire Wire Line
	9750 4500 9450 4500
Wire Wire Line
	9150 4500 9150 4250
Wire Wire Line
	9150 4250 8950 4250
Wire Wire Line
	9450 4400 9450 4500
Connection ~ 9450 4500
Wire Wire Line
	9450 4500 9150 4500
Wire Wire Line
	9750 3650 9750 3600
Wire Wire Line
	9150 3600 9150 3850
Wire Wire Line
	9150 3850 8950 3850
Wire Wire Line
	9150 3600 9450 3600
Wire Wire Line
	9450 3650 9450 3600
Connection ~ 9450 3600
Wire Wire Line
	9450 3600 9750 3600
$Comp
L Device:CP C34
U 1 1 5C8FCF01
P 10150 3800
F 0 "C34" H 10268 3846 50  0000 L CNN
F 1 "3.3u" H 10268 3755 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10188 3650 50  0001 C CNN
F 3 "~" H 10150 3800 50  0001 C CNN
	1    10150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3650 9100 3650
Wire Wire Line
	9100 3650 9100 3550
Wire Wire Line
	9100 3550 10150 3550
Wire Wire Line
	10150 3550 10150 3650
$Comp
L power:GND #PWR026
U 1 1 5C8FDFB3
P 10350 4050
F 0 "#PWR026" H 10350 3800 50  0001 C CNN
F 1 "GND" V 10355 3922 50  0000 R CNN
F 2 "" H 10350 4050 50  0001 C CNN
F 3 "" H 10350 4050 50  0001 C CNN
	1    10350 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 4050 10150 4050
Wire Wire Line
	10150 3950 10150 4050
Connection ~ 10150 4050
Wire Wire Line
	10150 4050 9750 4050
$Comp
L power:+5VA #PWR025
U 1 1 5C8FF100
P 10150 4500
F 0 "#PWR025" H 10150 4350 50  0001 C CNN
F 1 "+5VA" V 10165 4628 50  0000 L CNN
F 2 "" H 10150 4500 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10150 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 4500 9750 4500
Connection ~ 9750 4500
$Comp
L Device:C C25
U 1 1 5C8FFBC8
P 6250 2700
F 0 "C25" H 6550 2650 50  0000 R CNN
F 1 "0.1u" H 6550 2750 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 6288 2550 50  0001 C CNN
F 3 "~" H 6250 2700 50  0001 C CNN
	1    6250 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C24
U 1 1 5C8FFC64
P 5800 3800
F 0 "C24" H 5900 3850 50  0000 L CNN
F 1 "0.1u" H 5915 3755 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5838 3650 50  0001 C CNN
F 3 "~" H 5800 3800 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5C901381
P 6100 2950
F 0 "#PWR017" H 6100 2800 50  0001 C CNN
F 1 "+3.3V" V 6115 3078 50  0000 L CNN
F 2 "" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0001 C CNN
	1    6100 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5C9013EB
P 5700 3550
F 0 "#PWR015" H 5700 3400 50  0001 C CNN
F 1 "+3.3V" V 5715 3678 50  0000 L CNN
F 2 "" H 5700 3550 50  0001 C CNN
F 3 "" H 5700 3550 50  0001 C CNN
	1    5700 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 2950 6250 2950
Wire Wire Line
	6250 2850 6250 2950
Connection ~ 6250 2950
Wire Wire Line
	6250 2950 7150 2950
$Comp
L power:GND #PWR016
U 1 1 5C90454F
P 5800 4100
F 0 "#PWR016" H 5800 3850 50  0001 C CNN
F 1 "GND" H 5805 3927 50  0000 C CNN
F 2 "" H 5800 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C904589
P 6250 2450
F 0 "#PWR018" H 6250 2200 50  0001 C CNN
F 1 "GND" H 6255 2277 50  0000 C CNN
F 2 "" H 6250 2450 50  0001 C CNN
F 3 "" H 6250 2450 50  0001 C CNN
	1    6250 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2550 6250 2450
$Comp
L power:GND #PWR020
U 1 1 5C909263
P 6950 3350
F 0 "#PWR020" H 6950 3100 50  0001 C CNN
F 1 "GND" V 6955 3222 50  0000 R CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "" H 6950 3350 50  0001 C CNN
	1    6950 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3350 7050 3350
Wire Wire Line
	7150 3250 7050 3250
Wire Wire Line
	7050 3250 7050 3350
Connection ~ 7050 3350
Wire Wire Line
	7050 3350 6950 3350
Wire Wire Line
	7150 3150 7050 3150
Wire Wire Line
	7050 3150 7050 3250
Connection ~ 7050 3250
Text GLabel 6800 2550 0    50   Input ~ 0
S_SCLK
Wire Wire Line
	7150 2550 6800 2550
Text GLabel 6800 2650 0    50   Input ~ 0
S_LRCK
Wire Wire Line
	6800 2650 7150 2650
Text GLabel 6800 2750 0    50   Input ~ 0
S_DOUT
Wire Wire Line
	6800 2750 7150 2750
Text GLabel 6750 4250 0    50   Input ~ 0
DAC_RST
Wire Wire Line
	7150 4250 6900 4250
$Comp
L Device:R R6
U 1 1 5C8EA06B
P 6900 4600
F 0 "R6" H 6830 4554 50  0000 R CNN
F 1 "10k" H 6830 4645 50  0000 R CNN
F 2 "Resistors_SMD:R_1206" V 6830 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
	1    6900 4600
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 5C8EA11A
P 6900 4950
F 0 "#PWR019" H 6900 4800 50  0001 C CNN
F 1 "+3V3" H 6915 5123 50  0000 C CNN
F 2 "" H 6900 4950 50  0001 C CNN
F 3 "" H 6900 4950 50  0001 C CNN
	1    6900 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 4950 6900 4750
Wire Wire Line
	6900 4450 6900 4250
Connection ~ 6900 4250
Wire Wire Line
	6900 4250 6750 4250
Text GLabel 6450 3750 0    50   Input ~ 0
DAC_CS
Wire Wire Line
	5800 4100 5800 3950
Wire Wire Line
	5700 3550 5800 3550
Wire Wire Line
	5800 3650 5800 3550
Connection ~ 5800 3550
Wire Wire Line
	5800 3550 6450 3550
Wire Wire Line
	6450 3750 6900 3750
$Comp
L Device:R R5
U 1 1 5C8F4EB9
P 6700 3650
F 0 "R5" V 6650 3800 50  0000 C CNN
F 1 "10k" V 6700 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6630 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 3650 6900 3650
Wire Wire Line
	6900 3650 6900 3750
Connection ~ 6900 3750
Wire Wire Line
	6900 3750 7150 3750
Wire Wire Line
	6550 3650 6450 3650
Wire Wire Line
	6450 3650 6450 3550
Connection ~ 6450 3550
Wire Wire Line
	6450 3550 7150 3550
Text GLabel 6550 4050 0    50   Input ~ 0
MCU_MOSI
Text GLabel 6550 3850 0    50   Input ~ 0
MCU_MISO
Text GLabel 6550 3950 0    50   Input ~ 0
MCU_SCK
Wire Wire Line
	6550 3850 7150 3850
Wire Wire Line
	7150 3950 6550 3950
Wire Wire Line
	6550 4050 7150 4050
Text GLabel 9950 2850 2    50   Input ~ 0
AOUTA+
Text GLabel 9950 2650 2    50   Input ~ 0
AOUTA-
Text GLabel 9950 3050 2    50   Input ~ 0
AOUTB+
Text GLabel 9950 3250 2    50   Input ~ 0
AOUTB-
Wire Wire Line
	9950 3250 8950 3250
Wire Wire Line
	8950 3050 9950 3050
Wire Wire Line
	9950 2850 8950 2850
Wire Wire Line
	8950 2650 9950 2650
Text Notes 7200 6950 0    236  ~ 0
DAC
$Comp
L Oscillator:TXC-7C X?
U 1 1 5D1FED66
P 2650 4700
AR Path="/5CF60BAD/5D1FED66" Ref="X?"  Part="1" 
AR Path="/5C8F8588/5D1FED66" Ref="X1"  Part="1" 
F 0 "X1" H 2800 5100 50  0000 L CNN
F 1 "22.5792Mhz" H 2800 5000 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_TXC_7C-4pin_5.0x3.2mm_HandSoldering" H 3350 4350 50  0001 C CNN
F 3 "http://www.txccorp.com/download/products/osc/7C_o.pdf" H 2550 4700 50  0001 C CNN
	1    2650 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D1FED6C
P 2650 5150
AR Path="/5CF60BAD/5D1FED6C" Ref="#PWR?"  Part="1" 
AR Path="/5C8F8588/5D1FED6C" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2650 4900 50  0001 C CNN
F 1 "GND" H 2655 4977 50  0000 C CNN
F 2 "" H 2650 5150 50  0001 C CNN
F 3 "" H 2650 5150 50  0001 C CNN
	1    2650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5150 2650 5050
$Comp
L Device:R R?
U 1 1 5D1FED73
P 3750 5500
AR Path="/5CF60BAD/5D1FED73" Ref="R?"  Part="1" 
AR Path="/5C8F8588/5D1FED73" Ref="R4"  Part="1" 
F 0 "R4" V 3700 5350 50  0000 C CNN
F 1 "22" V 3750 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3680 5500 50  0001 C CNN
F 3 "~" H 3750 5500 50  0001 C CNN
	1    3750 5500
	0    1    1    0   
$EndComp
$Comp
L Oscillator:TXC-7C X?
U 1 1 5D1FED7B
P 2650 6250
AR Path="/5CF60BAD/5D1FED7B" Ref="X?"  Part="1" 
AR Path="/5C8F8588/5D1FED7B" Ref="X2"  Part="1" 
F 0 "X2" H 2750 6650 50  0000 L CNN
F 1 "24.576Mhz" H 2750 6550 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_TXC_7C-4pin_5.0x3.2mm_HandSoldering" H 3350 5900 50  0001 C CNN
F 3 "http://www.txccorp.com/download/products/osc/7C_o.pdf" H 2550 6250 50  0001 C CNN
	1    2650 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D1FED81
P 2650 6700
AR Path="/5CF60BAD/5D1FED81" Ref="#PWR?"  Part="1" 
AR Path="/5C8F8588/5D1FED81" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2650 6450 50  0001 C CNN
F 1 "GND" H 2655 6527 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6700 2650 6650
Wire Wire Line
	1850 6250 2050 6250
$Comp
L Device:R R?
U 1 1 5D1FED8A
P 2300 5050
AR Path="/5CF60BAD/5D1FED8A" Ref="R?"  Part="1" 
AR Path="/5C8F8588/5D1FED8A" Ref="R1"  Part="1" 
F 0 "R1" V 2093 5050 50  0000 C CNN
F 1 "10k" V 2184 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2230 5050 50  0001 C CNN
F 3 "~" H 2300 5050 50  0001 C CNN
	1    2300 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5050 2650 5050
Connection ~ 2650 5050
Wire Wire Line
	2650 5050 2650 5000
Wire Wire Line
	2150 5050 2000 5050
Wire Wire Line
	2000 5050 2000 4700
Wire Wire Line
	2000 4700 2350 4700
$Comp
L Device:R R?
U 1 1 5D1FED97
P 2350 6650
AR Path="/5CF60BAD/5D1FED97" Ref="R?"  Part="1" 
AR Path="/5C8F8588/5D1FED97" Ref="R2"  Part="1" 
F 0 "R2" V 2143 6650 50  0000 C CNN
F 1 "10k" V 2234 6650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2280 6650 50  0001 C CNN
F 3 "~" H 2350 6650 50  0001 C CNN
	1    2350 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6650 2650 6650
Connection ~ 2650 6650
Wire Wire Line
	2650 6650 2650 6550
Wire Wire Line
	2200 6650 2050 6650
Wire Wire Line
	2050 6650 2050 6250
Connection ~ 2050 6250
Wire Wire Line
	2050 6250 2350 6250
$Comp
L Device:C C?
U 1 1 5D1FEDA4
P 2350 5900
AR Path="/5CF60BAD/5D1FEDA4" Ref="C?"  Part="1" 
AR Path="/5C8F8588/5D1FEDA4" Ref="C23"  Part="1" 
F 0 "C23" V 2098 5900 50  0000 C CNN
F 1 "100n" V 2189 5900 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2388 5750 50  0001 C CNN
F 3 "~" H 2350 5900 50  0001 C CNN
	1    2350 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5900 2650 5900
Connection ~ 2650 5900
Wire Wire Line
	2650 5900 2650 5950
$Comp
L power:GND #PWR?
U 1 1 5D1FEDAD
P 2050 5900
AR Path="/5CF60BAD/5D1FEDAD" Ref="#PWR?"  Part="1" 
AR Path="/5C8F8588/5D1FEDAD" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2050 5650 50  0001 C CNN
F 1 "GND" V 2055 5772 50  0000 R CNN
F 2 "" H 2050 5900 50  0001 C CNN
F 3 "" H 2050 5900 50  0001 C CNN
	1    2050 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 5900 2200 5900
$Comp
L Device:C C?
U 1 1 5D1FEDB4
P 2350 4350
AR Path="/5CF60BAD/5D1FEDB4" Ref="C?"  Part="1" 
AR Path="/5C8F8588/5D1FEDB4" Ref="C22"  Part="1" 
F 0 "C22" V 2098 4350 50  0000 C CNN
F 1 "100n" V 2189 4350 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2388 4200 50  0001 C CNN
F 3 "~" H 2350 4350 50  0001 C CNN
	1    2350 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 4350 2650 4350
$Comp
L power:GND #PWR?
U 1 1 5D1FEDBB
P 2050 4350
AR Path="/5CF60BAD/5D1FEDBB" Ref="#PWR?"  Part="1" 
AR Path="/5C8F8588/5D1FEDBB" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 2050 4100 50  0001 C CNN
F 1 "GND" V 2055 4222 50  0000 R CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "" H 2050 4350 50  0001 C CNN
	1    2050 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 4350 2200 4350
Connection ~ 2650 4350
Wire Wire Line
	2650 4350 2650 4400
Wire Wire Line
	2950 6250 3200 6250
Wire Wire Line
	3200 6250 3200 5500
Wire Wire Line
	3200 4700 2950 4700
Wire Wire Line
	3600 5500 3200 5500
Connection ~ 3200 5500
Wire Wire Line
	3200 5500 3200 5250
Text GLabel 2700 5650 2    47   Input ~ 0
3V3_OSC
Text GLabel 2700 4100 2    47   Input ~ 0
3V3_OSC
Wire Wire Line
	2650 4100 2700 4100
Wire Wire Line
	2650 4100 2650 4350
Wire Wire Line
	2650 5650 2700 5650
Wire Wire Line
	2650 5650 2650 5900
$Comp
L Device:R R?
U 1 1 5D1FEDD0
P 3750 5250
AR Path="/5CF60BAD/5D1FEDD0" Ref="R?"  Part="1" 
AR Path="/5C8F8588/5D1FEDD0" Ref="R3"  Part="1" 
F 0 "R3" V 3700 5100 50  0000 C CNN
F 1 "22" V 3750 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3680 5250 50  0001 C CNN
F 3 "~" H 3750 5250 50  0001 C CNN
	1    3750 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 5250 3200 5250
Connection ~ 3200 5250
Wire Wire Line
	3200 5250 3200 4700
Text GLabel 1850 4700 0    47   Input ~ 0
OSC_EN_1
Wire Wire Line
	1850 4700 2000 4700
Connection ~ 2000 4700
Text GLabel 1850 6250 0    47   Input ~ 0
OSC_EN_2
Text GLabel 4250 5500 2    47   Input ~ 0
MCU_MCLK
Wire Wire Line
	3900 5500 4250 5500
Text Label 4650 5250 2    47   ~ 0
S_MCLK
Wire Wire Line
	3900 5250 4650 5250
Text Label 6500 2450 0    47   ~ 0
S_MCLK
Wire Wire Line
	6500 2450 7150 2450
NoConn ~ 8950 2450
NoConn ~ 8950 3450
$EndSCHEMATC
