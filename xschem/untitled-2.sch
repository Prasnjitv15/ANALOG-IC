v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 60 10 200 60 {}
L 4 60 120 200 60 {}
L 4 60 10 60 120 {}
L 7 120 90 120 110 {}
L 7 200 60 220 60 {}
L 7 40 40 60 40 {}
L 7 40 90 60 90 {}
B 5 117.5 107.5 122.5 112.5 {name=vom dir=inout}
B 5 217.5 57.5 222.5 62.5 {name=vop dir=inout}
B 5 37.5 37.5 42.5 42.5 {name=vim dir=inout}
B 5 37.5 87.5 42.5 92.5 {name=vip dir=inout}
T {opamp_mod} 69.5 44 0 0 0.3 0.3 {}
T {x1} 65 -2 0 0 0.2 0.2 {}
T {vim} 65 44 2 1 0.2 0.2 {}
T {vom} 124 85 1 1 0.2 0.2 {}
T {vop} 195 56 0 1 0.2 0.2 {}
T {vip} 65 94 2 1 0.2 0.2 {}
N -400 40 -400 110 {lab=#net1}
N -400 40 -330 40 {lab=#net1}
N -270 40 -170 40 {lab=#net2}
N -110 40 40 40 {lab=#net3}
N 10 90 10 150 {lab=#net4}
N 10 90 40 90 {lab=#net4}
N 220 60 240 60 {lab=#net5}
N 240 60 250 60 {lab=#net5}
N 250 60 300 60 {lab=#net5}
N 140 -70 240 -70 {lab=#net5}
N 240 -70 240 60 {lab=#net5}
N 0 -70 80 -70 {lab=#net3}
N 0 -70 -0 40 {lab=#net3}
N -400 170 -400 190 {lab=GND}
N 10 210 10 230 {lab=GND}
N 120 110 120 220 {lab=GND}
N 10 220 120 220 {lab=GND}
C {vsource.sym} -400 140 0 0 {name=V1 value=3 savecurrent=false}
C {capa.sym} -300 40 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -140 40 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 10 180 0 0 {name=V2 value=3 savecurrent=false}
C {res.sym} 110 -70 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -400 190 0 0 {name=l1 lab=GND}
C {gnd.sym} 10 230 0 0 {name=l2 lab=GND}
