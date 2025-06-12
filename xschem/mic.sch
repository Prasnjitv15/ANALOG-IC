v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 560 -450 1360 -50 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
autoload=0}
N 350 360 470 360 {lab=vth}
N 530 360 620 360 {lab=mn1}
N 680 360 750 360 {lab=mn2}
N 880 250 940 250 {lab=mn3}
N 880 170 940 170 {lab=mn3}
N 880 170 880 260 {lab=mn3}
N 1000 250 1020 250 {lab=vo}
N 1140 170 1140 250 {lab=vo}
N 1000 170 1020 170 {lab=vo}
N 1320 340 1320 360 {lab=vo}
N 1140 270 1320 270 {lab=vo}
N 1320 420 1320 450 {lab=GND}
N 350 420 350 460 {lab=GND}
N 880 260 880 360 {lab=mn3}
N 1140 250 1140 270 {lab=vo}
N 1320 270 1320 340 {lab=vo}
N 1020 170 1140 170 {lab=vo}
N 1020 250 1140 250 {lab=vo}
N 1150 340 1210 340 {lab=vo}
N 1210 280 1210 340 {lab=vo}
N 1210 270 1210 280 {lab=vo}
N 1050 390 1050 440 {lab=GND}
N 930 510 930 540 {lab=GND}
N 930 370 930 450 {lab=#net1}
N 810 360 880 360 {lab=mn3}
N 930 320 930 370 {lab=#net1}
N 930 320 980 320 {lab=#net1}
N 880 360 980 360 {lab=mn3}
N 1120 340 1150 340 {lab=vo}
C {simulator_commands_shown.sym} 140 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
op
save all
write mic.raw
set appendwrite
AC DEC 100 1 10e6
write mic.raw
**
MEAS AC gain_db MAX vdb(vo) FROM=0.1 TO=10e6
LET vm3db = gain_db - 3.0
print vm3db
plot vdb(vo)
MEAS AC fzero WHEN vdb(vo)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vo)=vm3db FALL=1
MEAS AC fmid WHEN vdb(vo)=gain_db
**Phase measurement
LET phase_deg = cph(vo)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero fpole using phase
LET phase_zero_ph = phase_mid-45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
***
TRAN 1u 5m
.endc
.end
"}
C {vsource.sym} 350 390 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 500 360 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 650 360 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 780 360 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 970 250 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 970 170 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 930 480 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 930 540 0 0 {name=l1 lab=GND}
C {gnd.sym} 350 460 0 0 {name=l2 lab=GND}
C {gnd.sym} 1050 440 0 0 {name=l3 lab=GND}
C {capa.sym} 1320 390 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1320 450 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 420 360 0 0 {name=p1 sig_type=std_logic lab=vth}
C {lab_wire.sym} 570 360 0 0 {name=p2 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 720 360 0 0 {name=p3 sig_type=std_logic lab=mn2}
C {lab_wire.sym} 880 300 0 0 {name=p4 sig_type=std_logic lab=mn3}
C {lab_wire.sym} 1240 270 0 0 {name=p5 sig_type=std_logic lab=vo}
C {opamp.sym} 1170 500 0 0 {name=x1}
