EESchema Schematic File Version 2
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "2 apr 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 1750 2950
Wire Wire Line
	1700 1850 1450 1850
Wire Wire Line
	1450 2950 1450 1850
Wire Wire Line
	2200 2950 1450 2950
Wire Wire Line
	2850 3050 2850 1850
Wire Wire Line
	2850 1850 2300 1850
Wire Wire Line
	1750 2950 1750 3200
Wire Wire Line
	1750 3200 2200 3200
Wire Wire Line
	2200 3200 2200 3150
$Comp
L BI_LED D?
U 1 1 49D543AA
P 2500 3050
F 0 "D?" H 2800 3150 50  0000 C C
F 1 "BI_LED" H 2850 2950 50  0000 C C
	1    2500 3050
	1    0    0    -1  
$EndComp
$Comp
L BATTERY BT?
U 1 1 49D543A4
P 2000 1850
F 0 "BT?" H 2000 2050 50  0000 C C
F 1 "BATTERY" H 2000 1660 50  0000 C C
	1    2000 1850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
