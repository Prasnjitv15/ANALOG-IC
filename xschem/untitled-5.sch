v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -80 -150 -30 {lab=#net1}
N -150 -80 20 -80 {lab=#net1}
N 20 -80 20 -30 {lab=#net1}
N -60 -0 -20 -0 {lab=#net1}
N -60 -80 -60 0 {lab=#net1}
N 20 30 20 50 {lab=#net2}
N -150 30 -150 110 {lab=GND}
N 20 0 80 -0 {lab=GND}
N 80 -0 80 100 {lab=GND}
N 80 100 80 110 {lab=GND}
N 80 110 80 130 {lab=GND}
N -150 110 -150 130 {lab=GND}
N -150 130 80 130 {lab=GND}
N 20 110 20 130 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 0 0 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -150 0 0 0 {name=Vds value=3 savecurrent=false}
C {simulator_commands_shown.sym} -850 -470 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
PLOT abs(vds#branch)
PLOT sqrt(2*abs(vds#branch))

.ENDC
"}
C {devices/code.sym} -840 -250 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vsource.sym} 20 80 0 0 {name=Vsb value=30 savecurrent=false}
C {gnd.sym} -60 130 0 0 {name=l1 lab=GND}
