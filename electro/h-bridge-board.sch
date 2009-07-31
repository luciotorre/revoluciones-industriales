v 20080127 1
C 41200 42200 0 0 0 title-A.sym
C 46600 48000 1 0 0 input-1.sym
{
T 46600 48300 5 10 0 0 0 0 1
device=INPUT
T 46600 48000 5 10 0 0 0 0 1
net=MOTOR1:1
T 46600 48300 5 10 1 1 0 0 1
value=MOTOR1
}
C 45400 48000 1 0 0 output-1.sym
{
T 45500 48300 5 10 0 0 0 0 1
device=OUTPUT
T 45400 48000 5 10 0 0 0 0 1
net=FWD:1
T 45600 48300 5 10 1 1 0 0 1
value=FWD
}
C 46600 46500 1 0 0 vcc-2.sym
C 46700 45900 1 0 0 gnd-1.sym
C 45400 47400 1 0 0 output-1.sym
{
T 45500 47700 5 10 0 0 0 0 1
device=OUTPUT
T 45400 47400 5 10 0 1 0 0 1
net=REV:1
T 45600 47700 5 10 1 1 0 0 1
value=REV
}
C 45400 46800 1 0 0 output-1.sym
{
T 45500 47100 5 10 0 0 0 0 1
device=OUTPUT
T 45400 46800 5 10 0 0 0 0 1
net=ENA:1
T 45600 47100 5 10 1 1 0 0 1
value=ENA
}
C 46600 47400 1 0 0 input-1.sym
{
T 46600 47700 5 10 0 0 0 0 1
device=INPUT
T 46600 47400 5 10 0 0 0 0 1
net=MOTOR2:1
T 46600 47700 5 10 1 1 0 0 1
value=MOTOR2
}
C 47700 47600 1 0 0 tb2p200.sym
{
T 48550 47900 5 10 1 1 0 0 1
refdes=TB1
T 48025 48775 5 10 0 0 0 0 1
footprint=TBLOCK2
T 48025 48925 5 10 0 0 0 0 1
device=TerminalBlock
}
C 47700 46000 1 0 0 tb2p200.sym
{
T 48550 46300 5 10 1 1 0 0 1
refdes=TB2
T 48025 47175 5 10 0 0 0 0 1
footprint=TBLOCK2
T 48025 47325 5 10 0 0 0 0 1
device=TerminalBlock
}
C 44900 46900 1 0 1 connector3-2.sym
{
T 44200 48600 5 10 1 1 0 0 1
refdes=CONN1
T 44600 48550 5 10 0 0 0 6 1
device=CONNECTOR_3
T 44600 48750 5 10 0 0 0 6 1
footprint=CONNECTOR 3 1
}
N 44900 48100 45400 48100 4
N 44900 47700 45400 47700 4
N 45400 47700 45400 47500 4
N 44900 47300 44900 46900 4
N 44900 46900 45400 46900 4
N 47700 48100 47400 48100 4
N 47700 47800 47700 47500 4
N 47700 47500 47400 47500 4
N 47700 46500 46800 46500 4
N 47700 46200 46800 46200 4
T 45300 42900 9 10 1 0 0 0 1
H-BRIDGE BOARD
T 49200 42300 9 10 1 0 0 0 1
Lucio Torre
T 45300 42600 9 10 1 0 0 0 1
h-bridge-board.sch