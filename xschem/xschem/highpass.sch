v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 40 -400 110 {lab=vin1}
N -400 40 -330 40 {lab=vin1}
N -270 40 -170 40 {lab=vin2}
N 0 -70 80 -70 {lab=#net1}
N 0 -70 -0 40 {lab=#net1}
N -400 170 -400 190 {lab=GND}
N 10 210 10 230 {lab=GND}
N -110 40 60 40 {lab=#net1}
N 10 80 10 150 {lab=vcm}
N 10 80 60 80 {lab=vcm}
N 130 110 130 220 {lab=GND}
N 10 220 130 220 {lab=GND}
N 140 -70 200 -70 {lab=vo}
N 200 -70 200 60 {lab=vo}
N 200 60 340 60 {lab=vo}
C {vsource.sym} -400 140 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -300 40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -140 40 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 10 180 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 110 -70 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -400 190 0 0 {name=l1 lab=GND}
C {gnd.sym} 10 230 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -360 40 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 10 110 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -850 -870 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
OP
save all
write micTest.raw
set appendwrite
AC DEC 100 1 10e6
write micTest.raw
**
 meas ac gain_db MAX vdb(vo) FROM=0.1 TO=10e6
  LET f3db = gain_db - 3.0
  print f3db
  plot vdb(vo)
  MEAS AC fzero WHEN vdb(vo)=f3db RISE=1
  MEAS AC fpole WHEN vdb(vo)=f3db FALL=1
**  MEAS AC fmid WHEN vdb(vo)=gain_db
**Phase Measurement
  LET phase_deg = cph(vo)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
**  MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero fpole using
  LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **tran 1u 5m
.endc
.end
"
}
C {lab_wire.sym} 270 60 0 0 {name=p4 sig_type=std_logic lab=vo
}
C {lab_wire.sym} -210 40 0 0 {name=p1 sig_type=std_logic lab=vin2}
C {opamp.sym} 250 220 0 0 {name=x1}
