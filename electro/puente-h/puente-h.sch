EESchema Schematic File Version 2
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./puente-h.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "6 apr 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4-OPTOCOUPLER U1
U 2 1 49D982B0
P 7600 2400
F 0 "U1" H 7600 2400 60  0000 C C
F 1 "4-OPTOCOUPLER" H 7600 2500 60  0000 C C
	2    7600 2400
	-1   0    0    -1  
$EndComp
$Comp
L 4-OPTOCOUPLER U1
U 4 1 49D982AF
P 3350 2400
F 0 "U1" H 3350 2400 60  0000 C C
F 1 "4-OPTOCOUPLER" H 3350 2500 60  0000 C C
	4    3350 2400
	1    0    0    -1  
$EndComp
$Comp
L 4-OPTOCOUPLER U1
U 1 1 49D982AD
P 7600 1350
F 0 "U1" H 7600 1350 60  0000 C C
F 1 "4-OPTOCOUPLER" H 7600 1450 60  0000 C C
	1    7600 1350
	-1   0    0    -1  
$EndComp
$Comp
L 4-OPTOCOUPLER U1
U 3 1 49D982AA
P 3350 1350
F 0 "U1" H 3350 1350 60  0000 C C
F 1 "4-OPTOCOUPLER" H 3350 1450 60  0000 C C
	3    3350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4350 9250 1950
Connection ~ 9250 2700
Wire Wire Line
	9250 2700 9150 2700
Wire Wire Line
	2450 4550 2450 3000
Wire Wire Line
	2450 3000 2800 3000
Wire Wire Line
	1800 2700 1800 4450
Wire Wire Line
	8600 1650 8150 1650
Wire Wire Line
	7050 1950 7050 2200
Wire Wire Line
	2800 2700 2300 2700
Wire Wire Line
	3900 1950 3900 2200
Wire Wire Line
	2800 1650 2300 1650
Wire Wire Line
	1950 800  1950 900 
Connection ~ 1950 1100
Wire Wire Line
	2150 1100 1800 1100
Connection ~ 1800 2700
Wire Wire Line
	1800 1650 1350 1650
Wire Wire Line
	1350 1650 1350 4350
Connection ~ 5450 1000
Wire Wire Line
	5450 750  5450 1000
Wire Wire Line
	5350 2200 4850 2200
Wire Wire Line
	1950 1100 1950 1250
Connection ~ 6100 3650
Wire Wire Line
	6100 3200 6100 3650
Connection ~ 4850 1000
Wire Wire Line
	4850 1450 4850 1000
Wire Wire Line
	4400 3650 6550 3650
Wire Wire Line
	4400 3150 4400 3000
Wire Wire Line
	4400 1500 4400 1650
Connection ~ 4850 2200
Wire Wire Line
	6400 3000 6550 3000
Wire Wire Line
	6400 1650 6550 1650
Wire Wire Line
	4850 1850 4850 2800
Wire Wire Line
	6100 2800 6100 1850
Wire Wire Line
	6550 1650 6550 1500
Wire Wire Line
	6550 3000 6550 3150
Connection ~ 6100 2200
Wire Wire Line
	4400 1650 4550 1650
Wire Wire Line
	4400 3000 4550 3000
Wire Wire Line
	4400 1000 6550 1000
Wire Wire Line
	6100 1450 6100 1000
Connection ~ 6100 1000
Wire Wire Line
	4850 3200 4850 3650
Connection ~ 4850 3650
Wire Wire Line
	5450 3950 5450 3650
Connection ~ 5450 3650
Wire Wire Line
	5550 2200 6100 2200
Wire Wire Line
	1350 4350 9250 4350
Wire Wire Line
	1350 4450 9500 4450
Wire Wire Line
	9500 4450 9500 1650
Connection ~ 1800 4450
Wire Wire Line
	1350 4550 8550 4550
Connection ~ 2450 4550
Wire Wire Line
	2150 900  1800 900 
Connection ~ 1950 900 
Wire Wire Line
	3900 2700 3900 2500
Wire Wire Line
	7050 2700 7050 2500
Wire Wire Line
	9500 1650 9100 1650
Wire Wire Line
	8650 2700 8150 2700
Wire Wire Line
	2800 1950 1600 1950
Wire Wire Line
	1600 1950 1600 4450
Connection ~ 1600 4450
Wire Wire Line
	8550 4550 8550 3000
Wire Wire Line
	8550 3000 8150 3000
Wire Wire Line
	9250 1950 8150 1950
$Comp
L PWR_FLAG #FLG01
U 1 1 49D95CD3
P 2150 1100
F 0 "#FLG01" H 2150 1370 30  0001 C C
F 1 "PWR_FLAG" H 2150 1330 30  0000 C C
	1    2150 1100
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 49D95CD0
P 2150 900
F 0 "#FLG02" H 2150 1170 30  0001 C C
F 1 "PWR_FLAG" H 2150 1130 30  0000 C C
	1    2150 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 49D95980
P 1950 800
F 0 "#PWR03" H 1950 900 30  0001 C C
F 1 "VCC" H 1950 900 30  0000 C C
	1    1950 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 49D9597B
P 7050 2200
F 0 "#PWR04" H 7050 2200 30  0001 C C
F 1 "GND" H 7050 2130 30  0001 C C
	1    7050 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 49D95978
P 3900 2200
F 0 "#PWR05" H 3900 2200 30  0001 C C
F 1 "GND" H 3900 2130 30  0001 C C
	1    3900 2200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 49D95974
P 5450 750
F 0 "#PWR06" H 5450 850 30  0001 C C
F 1 "VCC" H 5450 850 30  0000 C C
	1    5450 750 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 49D9596F
P 7050 2500
F 0 "#PWR07" H 7050 2600 30  0001 C C
F 1 "VCC" H 7050 2600 30  0000 C C
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 49D95967
P 3900 2500
F 0 "#PWR08" H 3900 2600 30  0001 C C
F 1 "VCC" H 3900 2600 30  0000 C C
	1    3900 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 49D9593D
P 1950 1250
F 0 "#PWR09" H 1950 1250 30  0001 C C
F 1 "GND" H 1950 1180 30  0001 C C
	1    1950 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 49D95935
P 5450 3950
F 0 "#PWR010" H 5450 3950 30  0001 C C
F 1 "GND" H 5450 3880 30  0001 C C
	1    5450 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 49D95490
P 5450 2550
F 0 "P3" V 5400 2550 40  0000 C C
F 1 "CONN_2" V 5500 2550 40  0000 C C
	1    5450 2550
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 49D9548B
P 1450 1000
F 0 "P2" V 1400 1000 40  0000 C C
F 1 "CONN_2" V 1500 1000 40  0000 C C
	1    1450 1000
	-1   0    0    1   
$EndComp
$Comp
L NPN Q4
U 1 1 49D95423
P 6200 3000
F 0 "Q4" H 6350 3000 50  0000 C C
F 1 "NPN" H 6102 3150 50  0000 C C
	1    6200 3000
	-1   0    0    -1  
$EndComp
$Comp
L NPN Q2
U 1 1 49D9541B
P 4750 3000
F 0 "Q2" H 4900 3000 50  0000 C C
F 1 "NPN" H 4652 3150 50  0000 C C
	1    4750 3000
	1    0    0    -1  
$EndComp
$Comp
L PNP Q3
U 1 1 49D95410
P 6200 1650
F 0 "Q3" H 6350 1650 60  0000 C C
F 1 "PNP" H 6104 1800 60  0000 C C
	1    6200 1650
	-1   0    0    1   
$EndComp
$Comp
L PNP Q1
U 1 1 49D9540B
P 4750 1650
F 0 "Q1" H 4900 1650 60  0000 C C
F 1 "PNP" H 4654 1800 60  0000 C C
	1    4750 1650
	1    0    0    1   
$EndComp
$Comp
L CONN_3 K1
U 1 1 49D95360
P 1000 4450
F 0 "K1" V 950 4450 50  0000 C C
F 1 "CONN_3" V 1050 4450 40  0000 C C
	1    1000 4450
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 49D95316
P 4400 1250
F 0 "R9" V 4480 1250 50  0000 C C
F 1 "10k" V 4400 1250 50  0000 C C
	1    4400 1250
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 49D95314
P 6550 1250
F 0 "R11" V 6630 1250 50  0000 C C
F 1 "10k" V 6550 1250 50  0000 C C
	1    6550 1250
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 49D95312
P 4400 3400
F 0 "R10" V 4480 3400 50  0000 C C
F 1 "10k" V 4400 3400 50  0000 C C
	1    4400 3400
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 49D95311
P 6550 3400
F 0 "R12" V 6630 3400 50  0000 C C
F 1 "10k" V 6550 3400 50  0000 C C
	1    6550 3400
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 49D9530D
P 6800 3000
F 0 "R8" V 6880 3000 50  0000 C C
F 1 "1k" V 6800 3000 50  0000 C C
	1    6800 3000
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 49D9530C
P 6800 1650
F 0 "R7" V 6880 1650 50  0000 C C
F 1 "1k" V 6800 1650 50  0000 C C
	1    6800 1650
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 49D9530A
P 4150 1650
F 0 "R5" V 4230 1650 50  0000 C C
F 1 "1k" V 4150 1650 50  0000 C C
	1    4150 1650
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 49D95309
P 4150 3000
F 0 "R6" V 4230 3000 50  0000 C C
F 1 "1k" V 4150 3000 50  0000 C C
	1    4150 3000
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 49D95306
P 2050 1650
F 0 "R1" V 2130 1650 50  0000 C C
F 1 "470" V 2050 1650 50  0000 C C
	1    2050 1650
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 49D95305
P 2050 2700
F 0 "R2" V 2130 2700 50  0000 C C
F 1 "470" V 2050 2700 50  0000 C C
	1    2050 2700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 49D95302
P 8900 2700
F 0 "R4" V 8980 2700 50  0000 C C
F 1 "470" V 8900 2700 50  0000 C C
	1    8900 2700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 49D952FC
P 8850 1650
F 0 "R3" V 8930 1650 50  0000 C C
F 1 "470" V 8850 1650 50  0000 C C
	1    8850 1650
	0    1    1    0   
$EndComp
$EndSCHEMATC