v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 150 180 180 {lab=GND}
N 180 90 260 90 {lab=#net1}
N 320 90 360 90 {lab=#net2}
N 420 90 480 90 {lab=#net3}
N 600 90 610 90 {lab=#net4}
N 550 90 560 90 {lab=#net4}
N 580 -0 580 90 {lab=#net4}
N 560 90 600 90 {lab=#net4}
N 580 -70 580 -0 {lab=#net4}
N 640 -70 640 -0 {lab=#net5}
N 640 -0 650 -0 {lab=#net5}
N 650 -0 650 40 {lab=#net5}
N 600 50 600 140 {lab=#net4}
N 600 50 610 50 {lab=#net4}
N 650 20 760 20 {lab=#net5}
N 600 200 600 220 {lab=GND}
N 650 100 650 120 {lab=GND}
N 760 80 760 100 {lab=GND}
C {res.sym} 290 90 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {vsource.sym} 180 120 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} 180 180 0 0 {name=l1 lab=GND}
C {res.sym} 510 90 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} 390 90 3 0 {name=C1
m=1
value=4.7u

footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 650 70 0 0 {name=E1 value=1000}
C {res.sym} 610 0 3 0 {name=R3
value=300k

footprint=1206
device=resistor
m=1}
C {capa.sym} 610 -70 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 600 170 0 0 {name=V2 value=1.5 savecurrent=false}
C {capa.sym} 760 50 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 600 220 0 0 {name=l2 lab=GND}
C {gnd.sym} 650 120 0 0 {name=l3 lab=GND}
C {gnd.sym} 760 100 0 0 {name=l4 lab=GND}
