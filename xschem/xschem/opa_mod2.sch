v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -20 -40 -20 {lab=vip}
N -80 20 -40 20 {lab=vim}
N 530 -30 580 -30 {lab=vop}
N 530 30 580 30 {lab=vom}
N -0 -80 -0 -30 {lab=#net1}
N 0 -80 110 -80 {lab=#net1}
N 170 -80 490 -80 {lab=#net2}
N 490 -80 490 -20 {lab=#net2}
N 300 -80 300 -30 {lab=#net2}
N -0 30 0 70 {lab=GND}
N 0 70 490 70 {lab=GND}
N 490 20 490 70 {lab=GND}
N 300 30 300 70 {lab=GND}
N 300 70 300 90 {lab=GND}
C {vcvs.sym} 0 0 0 0 {name=E1 value=1000}
C {iopin.sym} -80 -20 2 0 {name=p3 lab=vip}
C {iopin.sym} -80 20 2 0 {name=p4 lab=vim}
C {vcvs.sym} 530 0 0 0 {name=E2 value=1}
C {iopin.sym} 580 30 0 0 {name=p5 lab=vom}
C {iopin.sym} 580 -30 0 0 {name=p6 lab=vop}
C {res.sym} 140 -80 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 300 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 300 90 0 0 {name=l1 lab=GND}
