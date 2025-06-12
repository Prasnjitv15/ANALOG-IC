v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -20 -40 -20 {lab=vip}
N -80 20 -40 20 {lab=vim}
N 0 -30 50 -30 {lab=vop}
N -0 30 50 30 {lab=vom}
C {vcvs.sym} 0 0 0 0 {name=E1 value=1000}
C {iopin.sym} 50 30 0 0 {name=p1 lab=vom}
C {iopin.sym} 50 -30 0 0 {name=p2 lab=vop}
C {iopin.sym} -80 -20 2 0 {name=p3 lab=vip}
C {iopin.sym} -80 20 2 0 {name=p4 lab=vim}
