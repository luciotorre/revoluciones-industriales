EESchema Schematic File Version 2
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./Mother.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "31 jul 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2750 3400
Kmarq B 2750 3400 "Warning Pin passive Unconnected" F=1
Kmarq B 3600 2550 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 2650 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 2750 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 2850 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 2950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 3050 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 3150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 3250 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 3850 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 3950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 4150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 4350 "Warning Pin BiDi Unconnected" F=1
Kmarq B 3600 4450 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 2550 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 2650 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 2750 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 2850 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 2950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3050 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3250 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3350 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3450 "Warning Pin power_in Unconnected" F=1
Kmarq B 6350 3550 "Warning Pin power_in Unconnected" F=1
Kmarq B 6350 3650 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3750 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3850 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 3950 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 4050 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 4150 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 4250 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 4350 "Warning Pin BiDi Unconnected" F=1
Kmarq B 6350 4450 "Warning Pin BiDi Unconnected" F=1
Kmarq B 1600 6600 "Warning Pin passive Unconnected" F=1
Kmarq B 2350 6600 "Warning Pin passive Unconnected" F=1
Kmarq B 1600 6500 "Warning: Pin power_out connected to Pin BiDi (net 1)" F=1
Connection ~ 1250 6100
Connection ~ 1600 6500
Connection ~ 1250 6500
Wire Wire Line
	850  6500 1600 6500
Connection ~ 2600 6500
Wire Wire Line
	2600 6600 2600 6500
Wire Wire Line
	3450 7250 3450 6750
Wire Wire Line
	1950 2450 3300 2450
Wire Wire Line
	1950 3400 2950 3400
Wire Wire Line
	2350 4000 1950 4000
Wire Wire Line
	3450 3350 3450 2950
Wire Wire Line
	1600 6100 1600 6350
Wire Wire Line
	850  6100 1600 6100
Wire Wire Line
	2600 7100 2600 7250
Wire Wire Line
	3600 4050 3450 4050
Wire Wire Line
	3450 4050 3450 5650
Wire Wire Line
	3600 4250 3150 4250
Wire Wire Line
	3150 4250 3150 5750
Wire Wire Line
	2350 6350 3450 6350
Wire Wire Line
	2350 6500 3150 6500
Wire Wire Line
	2750 4000 2950 4000
Wire Wire Line
	2950 4000 2950 3750
Wire Wire Line
	2950 3750 3600 3750
Wire Wire Line
	3600 3650 2950 3650
Wire Wire Line
	2950 3650 2950 3400
Wire Wire Line
	3150 6500 3150 6250
Wire Wire Line
	3450 6350 3450 6150
Wire Wire Line
	3450 3350 3600 3350
Wire Wire Line
	3450 2950 3300 2950
Wire Wire Line
	3050 7250 3050 6900
Wire Wire Line
	2800 7100 2800 7250
Wire Wire Line
	2700 2950 1900 2950
Wire Wire Line
	3600 3550 3350 3550
Wire Wire Line
	3600 3450 3350 3450
Connection ~ 3600 3550
Connection ~ 3600 4050
Connection ~ 3600 3650
Wire Wire Line
	2800 6600 2800 6350
Connection ~ 2800 6350
Connection ~ 3050 6500
$Comp
L GND #PWR01
U 1 1 4A732949
P 3450 7250
F 0 "#PWR01" H 3450 7250 30  0001 C C
F 1 "GND" H 3450 7180 30  0001 C C
	1    3450 7250
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 4A72EEF2
P 3450 6550
F 0 "D2" H 3450 6650 40  0000 C C
F 1 "LowCurr 3V6" H 3450 6450 40  0000 C C
	1    3450 6550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 4A7325F6
P 2800 7250
F 0 "#PWR02" H 2800 7250 30  0001 C C
F 1 "GND" H 2800 7180 30  0001 C C
	1    2800 7250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 4A73257E
P 3350 3450
F 0 "#PWR03" H 3350 3550 30  0001 C C
F 1 "VCC" H 3350 3550 30  0000 C C
	1    3350 3450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 4A732532
P 1950 2450
F 0 "#PWR04" H 1950 2550 30  0001 C C
F 1 "VCC" H 1950 2550 30  0000 C C
	1    1950 2450
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 4A72FB0E
P 3300 2700
F 0 "R5" V 3380 2700 50  0000 C C
F 1 "10k" V 3300 2700 50  0000 C C
	1    3300 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4A7324E6
P 3350 3550
F 0 "#PWR05" H 3350 3550 30  0001 C C
F 1 "GND" H 3350 3480 30  0001 C C
	1    3350 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 4A72FB6B
P 1950 4000
F 0 "#PWR06" H 1950 4000 30  0001 C C
F 1 "GND" H 1950 3930 30  0001 C C
	1    1950 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 4A72FA03
P 1900 2950
F 0 "#PWR07" H 1900 2950 30  0001 C C
F 1 "GND" H 1900 2880 30  0001 C C
	1    1900 2950
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4A72F9DE
P 3000 2950
F 0 "SW1" H 3150 3060 50  0000 C C
F 1 "SW_PUSH" H 3000 2870 50  0000 C C
	1    3000 2950
	1    0    0    -1  
$EndComp
$Comp
L USB_CONN J1
U 1 1 4A720773
P 2000 6150
F 0 "J1" H 1950 6550 60  0000 C C
F 1 "USB_CONN" V 1750 6300 60  0000 C C
	1    2000 6150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4A72ED0A
P 1250 6300
F 0 "C5" H 1300 6400 50  0000 L C
F 1 "104f" H 1300 6200 50  0000 L C
	1    1250 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4A72F759
P 1800 6050
F 0 "#PWR08" H 1800 6050 30  0001 C C
F 1 "GND" H 1800 5980 30  0001 C C
	1    1800 6050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 4A72F756
P 1950 3400
F 0 "#PWR09" H 1950 3400 30  0001 C C
F 1 "GND" H 1950 3330 30  0001 C C
	1    1950 3400
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR010
U 1 1 4A72F63C
P 2600 7250
F 0 "#PWR010" H 2600 7350 30  0001 C C
F 1 "VCC" H 2600 7350 30  0000 C C
	1    2600 7250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 4A72F48E
P 850 6500
F 0 "#PWR011" H 850 6500 30  0001 C C
F 1 "GND" H 850 6430 30  0001 C C
	1    850  6500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 4A72F31C
P 3050 7250
F 0 "#PWR012" H 3050 7250 30  0001 C C
F 1 "GND" H 3050 7180 30  0001 C C
	1    3050 7250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4A72EFEA
P 2600 6850
F 0 "R4" V 2680 6850 50  0000 C C
F 1 "1.5k" V 2600 6850 50  0000 C C
	1    2600 6850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4A72EFB7
P 2800 6850
F 0 "R3" V 2880 6850 50  0000 C C
F 1 "1m" V 2800 6850 50  0000 C C
	1    2800 6850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4A72EF81
P 3450 5900
F 0 "R2" V 3530 5900 50  0000 C C
F 1 "68" V 3450 5900 50  0000 C C
	1    3450 5900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4A72EF60
P 3150 6000
F 0 "R1" V 3230 6000 50  0000 C C
F 1 "68" V 3150 6000 50  0000 C C
	1    3150 6000
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 4A72EEEA
P 3050 6700
F 0 "D1" H 3050 6800 40  0000 C C
F 1 "LowCur 3V6" H 3050 6600 40  0000 C C
	1    3050 6700
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR013
U 1 1 4A72E9C3
P 850 6100
F 0 "#PWR013" H 850 6200 30  0001 C C
F 1 "VCC" H 850 6200 30  0000 C C
	1    850  6100
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA16 U1
U 1 1 4A72E32B
P 5050 3700
F 0 "U1" H 5050 3700 60  0000 C C
F 1 "ATMEGA16" H 5050 3700 60  0000 C C
	1    5050 3700
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL Q1
U 1 1 4A72E1EE
P 2750 3700
F 0 "Q1" H 2750 3850 60  0000 C C
F 1 "16 mhz" H 2750 3550 60  0000 C C
	1    2750 3700
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 4A722EBF
P 2550 4000
F 0 "C3" H 2600 4100 50  0000 L C
F 1 "22p" H 2600 3900 50  0000 L C
	1    2550 4000
	0    1    1    0   
$EndComp
$EndSCHEMATC
