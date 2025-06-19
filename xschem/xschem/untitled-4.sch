v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -70 -140 -30 {lab=vg}
N -140 -70 -40 -70 {lab=vg}
N -0 -130 -0 -100 {lab=vd}
N -0 -130 150 -130 {lab=vd}
N 150 -130 150 -30 {lab=vd}
N -140 30 -140 70 {lab=GND}
N -140 70 150 70 {lab=GND}
N 150 30 150 70 {lab=GND}
N 0 -40 0 70 {lab=GND}
N -0 -70 20 -70 {lab=GND}
N 20 -70 20 -20 {lab=GND}
N 0 -20 20 -20 {lab=GND}
N -10 70 -10 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -70 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -140 0 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 150 0 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -10 80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 -70 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 60 -130 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} -560 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP

.ENDC
"}
C {devices/code.sym} -560 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
