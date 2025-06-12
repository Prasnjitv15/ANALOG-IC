v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 60 200 130 {lab=vin1}
N 200 60 270 60 {lab=vin1}
N 330 60 430 60 {lab=vin2}
N 600 -50 680 -50 {lab=#net1}
N 600 -50 600 60 {lab=#net1}
N 200 190 200 210 {lab=GND}
N 610 230 610 250 {lab=GND}
N 490 60 660 60 {lab=#net1}
N 610 100 610 170 {lab=vcm}
N 610 100 660 100 {lab=vcm}
N 730 130 730 240 {lab=GND}
N 610 240 730 240 {lab=GND}
N 740 -50 800 -50 {lab=vo}
N 800 -50 800 80 {lab=vo}
N 800 80 940 80 {lab=vo}
C {vsource.sym} 200 160 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} 300 60 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 460 60 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 610 200 0 0 {name=V2 value=1.5 savecurrent=false}
C {res.sym} 710 -50 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 200 210 0 0 {name=l1 lab=GND}
C {gnd.sym} 610 250 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 240 60 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 610 130 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -250 -850 0 0 {name=COMMANDS
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
C {lab_wire.sym} 870 80 0 0 {name=p4 sig_type=std_logic lab=vo
}
C {lab_wire.sym} 390 60 0 0 {name=p1 sig_type=std_logic lab=vin2}
C {opamp.sym} 850 240 0 0 {name=x1}
