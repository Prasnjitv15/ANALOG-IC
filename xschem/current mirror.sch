v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1720 -820 -1640 -820 {lab=#net1}
N -1640 -820 -1640 -720 {lab=#net1}
N -1430 -820 -1430 -750 {lab=#net2}
N -1430 -820 -1210 -820 {lab=#net2}
N -1210 -820 -1210 -760 {lab=#net2}
N -1430 -690 -1430 -630 {lab=GND}
N -1900 -660 -1900 -630 {lab=GND}
N -1210 -700 -1210 -630 {lab=GND}
N -1900 -630 -1210 -630 {lab=GND}
N -1670 -630 -1670 -600 {lab=GND}
N -1760 -720 -1760 -630 {lab=GND}
N -1430 -720 -1390 -720 {lab=GND}
N -1390 -720 -1390 -630 {lab=GND}
N -1900 -820 -1900 -720 {lab=#net1}
N -1900 -820 -1720 -820 {lab=#net1}
N -1680 -720 -1470 -720 {lab=#net1}
N -1720 -820 -1720 -750 {lab=#net1}
N -1720 -690 -1720 -630 {lab=GND}
N -1760 -720 -1720 -720 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -1450 -720 0 0 {name=M1
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -1210 -730 0 0 {name=Vds value="1 AC 1"  savecurrent=false}
C {isource.sym} -1900 -690 2 0 {name=Iin value=50u}
C {gnd.sym} -1670 -600 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -1700 -720 0 1 {name=M2
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {simulator_commands_shown.sym} -2540 -1270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
DC Vds 0 1.8 0.05
PLOT abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC
"}
C {devices/code.sym} -2260 -1230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
