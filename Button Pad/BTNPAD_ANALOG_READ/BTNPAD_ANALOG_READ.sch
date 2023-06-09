EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BTNPAD_ANALOG_READ"
Date "2021-12-05"
Rev "1"
Comp ""
Comment1 "NOTE: RESISTOR NETWORK SHOULD BE 1% TOLERANCE"
Comment2 "SINGLE WIRE ANALOG READ BUTTON PAD"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 60EE63D1
P 4920 4805
F 0 "#PWR0101" H 4920 4555 50  0001 C CNN
F 1 "GND" H 4925 4629 50  0000 C CNN
F 2 "" H 4920 4805 50  0001 C CNN
F 3 "" H 4920 4805 50  0001 C CNN
	1    4920 4805
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4115 4920 4115
Connection ~ 4920 4115
Wire Wire Line
	5100 3595 4920 3595
Connection ~ 4920 3595
Wire Wire Line
	5110 3055 4920 3055
Connection ~ 4920 3055
Wire Wire Line
	5110 2545 4920 2545
Connection ~ 4920 2545
$Comp
L Device:R_Small_US R1
U 1 1 60EEB7B8
P 5870 1775
F 0 "R1" H 5940 1822 50  0000 L CNN
F 1 "2K" H 5940 1729 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5870 1775 50  0001 C CNN
F 3 "~" H 5870 1775 50  0001 C CNN
	1    5870 1775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 60EEC951
P 5870 2345
F 0 "R2" H 5940 2392 50  0000 L CNN
F 1 "330" H 5940 2299 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5870 2345 50  0001 C CNN
F 3 "~" H 5870 2345 50  0001 C CNN
	1    5870 2345
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 60EED00C
P 5870 2815
F 0 "R3" H 5940 2862 50  0000 L CNN
F 1 "620" H 5940 2769 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5870 2815 50  0001 C CNN
F 3 "~" H 5870 2815 50  0001 C CNN
	1    5870 2815
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 60EED467
P 5870 3325
F 0 "R4" H 5940 3372 50  0000 L CNN
F 1 "1K" H 5940 3279 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5870 3325 50  0001 C CNN
F 3 "~" H 5870 3325 50  0001 C CNN
	1    5870 3325
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 60EED930
P 5870 3845
F 0 "R5" H 5940 3892 50  0000 L CNN
F 1 "3.3K" H 5940 3799 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5870 3845 50  0001 C CNN
F 3 "~" H 5870 3845 50  0001 C CNN
	1    5870 3845
	1    0    0    -1  
$EndComp
Wire Wire Line
	5870 4115 5870 3945
Wire Wire Line
	5870 3745 5870 3595
Wire Wire Line
	5870 3595 5870 3425
Connection ~ 5870 3595
Wire Wire Line
	5870 3225 5870 3055
Wire Wire Line
	5870 3055 5870 2915
Connection ~ 5870 3055
Wire Wire Line
	5870 2545 5870 2715
Wire Wire Line
	5870 2545 5870 2445
Connection ~ 5870 2545
Wire Wire Line
	5870 2245 5870 1965
Connection ~ 5870 1965
Wire Wire Line
	5870 1965 6110 1965
Wire Wire Line
	5870 1965 5870 1875
Wire Wire Line
	5870 1675 5870 1545
$Comp
L power:VCC #PWR0102
U 1 1 60EFB86A
P 5870 1545
F 0 "#PWR0102" H 5870 1395 50  0001 C CNN
F 1 "VCC" H 5887 1721 50  0000 C CNN
F 2 "" H 5870 1545 50  0001 C CNN
F 3 "" H 5870 1545 50  0001 C CNN
	1    5870 1545
	1    0    0    -1  
$EndComp
Text GLabel 6110 1965 2    50   Input ~ 0
A0
$Comp
L power:GND #PWR0105
U 1 1 60F06038
P 7690 5706
F 0 "#PWR0105" H 7690 5456 50  0001 C CNN
F 1 "GND" H 7695 5530 50  0000 C CNN
F 2 "" H 7690 5706 50  0001 C CNN
F 3 "" H 7690 5706 50  0001 C CNN
	1    7690 5706
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 60F06398
P 7794 5108
F 0 "#PWR0106" H 7794 4958 50  0001 C CNN
F 1 "VCC" H 7811 5284 50  0000 C CNN
F 2 "" H 7794 5108 50  0001 C CNN
F 3 "" H 7794 5108 50  0001 C CNN
	1    7794 5108
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 60F06CE6
P 1620 6980
F 0 "H1" H 1720 7027 50  0000 L CNN
F 1 "M2" H 1720 6934 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 1620 6980 50  0001 C CNN
F 3 "~" H 1620 6980 50  0001 C CNN
	1    1620 6980
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60F0721A
P 1620 7270
F 0 "H2" H 1720 7317 50  0000 L CNN
F 1 "M2" H 1720 7224 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 1620 7270 50  0001 C CNN
F 3 "~" H 1620 7270 50  0001 C CNN
	1    1620 7270
	1    0    0    -1  
$EndComp
Wire Wire Line
	8090 5245 8000 5245
Text GLabel 8000 5245 0    50   Input ~ 0
A0
$Comp
L Switch:SW_Push_Dual_x2 SW2
U 1 1 60EF3A9C
P 5310 2545
F 0 "SW2" H 5310 2835 50  0000 C CNN
F 1 "UP" H 5310 2742 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5310 2745 50  0001 C CNN
F 3 "~" H 5310 2745 50  0001 C CNN
	1    5310 2545
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW3
U 1 1 60EF40B5
P 5310 3055
F 0 "SW3" H 5310 3345 50  0000 C CNN
F 1 "DOWN" H 5310 3252 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5310 3255 50  0001 C CNN
F 3 "~" H 5310 3255 50  0001 C CNN
	1    5310 3055
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW4
U 1 1 60EF48ED
P 5300 3595
F 0 "SW4" H 5300 3885 50  0000 C CNN
F 1 "LEFT" H 5300 3792 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5300 3795 50  0001 C CNN
F 3 "~" H 5300 3795 50  0001 C CNN
	1    5300 3595
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW5
U 1 1 60EF5193
P 5300 4115
F 0 "SW5" H 5300 4405 50  0000 C CNN
F 1 "SELECT" H 5300 4312 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5300 4315 50  0001 C CNN
F 3 "~" H 5300 4315 50  0001 C CNN
	1    5300 4115
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW1
U 1 1 60EF320B
P 5320 1965
F 0 "SW1" H 5320 2255 50  0000 C CNN
F 1 "RIGHT" H 5320 2162 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5320 2165 50  0001 C CNN
F 3 "~" H 5320 2165 50  0001 C CNN
	1    5320 1965
	1    0    0    -1  
$EndComp
Wire Wire Line
	5520 1965 5870 1965
Wire Wire Line
	4920 1965 4920 2545
Wire Wire Line
	5120 1965 4920 1965
Wire Wire Line
	5510 2545 5870 2545
Wire Wire Line
	4920 2545 4920 3055
Wire Wire Line
	5510 3055 5870 3055
Wire Wire Line
	4920 3055 4920 3595
Wire Wire Line
	5500 3595 5870 3595
Wire Wire Line
	4920 3595 4920 4115
Wire Wire Line
	5500 4115 5870 4115
Wire Wire Line
	4920 4115 4920 4805
$Comp
L Mechanical:MountingHole H3
U 1 1 6172A8BA
P 2029 6985
F 0 "H3" H 2129 7032 50  0000 L CNN
F 1 "M2" H 2129 6939 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 2029 6985 50  0001 C CNN
F 3 "~" H 2029 6985 50  0001 C CNN
	1    2029 6985
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6172A8C0
P 2029 7275
F 0 "H4" H 2129 7322 50  0000 L CNN
F 1 "M2" H 2129 7229 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 2029 7275 50  0001 C CNN
F 3 "~" H 2029 7275 50  0001 C CNN
	1    2029 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7794 5345 8090 5345
Wire Wire Line
	7794 5108 7794 5345
Wire Wire Line
	7690 5445 8090 5445
Wire Wire Line
	7690 5445 7690 5706
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 61A4EBEA
P 8290 5345
F 0 "J1" H 8370 5387 50  0000 L CNN
F 1 "Conn_01x03" H 8370 5294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8290 5345 50  0001 C CNN
F 3 "~" H 8290 5345 50  0001 C CNN
	1    8290 5345
	1    0    0    -1  
$EndComp
$EndSCHEMATC
