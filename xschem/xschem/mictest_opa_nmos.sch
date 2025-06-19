v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -700 -830 100 -430 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.3088602e-06
x2=1.642714e-05
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
N -910 -20 -790 -20 {lab=vnmic}
N -730 -20 -640 -20 {lab=vin1}
N -580 -20 -510 -20 {lab=vin2}
N -380 -130 -320 -130 {lab=virt}
N -380 -210 -320 -210 {lab=virt}
N -380 -210 -380 -120 {lab=virt}
N -260 -130 -240 -130 {lab=vout}
N -120 -210 -120 -130 {lab=vout}
N -260 -210 -240 -210 {lab=vout}
N 300 140 300 160 {lab=vout}
N -120 -110 60 -110 {lab=vout}
N 300 220 300 250 {lab=GND}
N -380 -120 -380 -20 {lab=virt}
N -120 -130 -120 -110 {lab=vout}
N -240 -210 -120 -210 {lab=vout}
N -240 -130 -120 -130 {lab=vout}
N -520 270 -520 300 {lab=GND}
N -450 -20 -380 -20 {lab=virt}
N -170 210 -170 260 {lab=GND}
N -520 60 -520 210 {lab=#net1}
N -520 60 -310 60 {lab=#net1}
N -310 -40 -310 60 {lab=#net1}
N -410 160 -310 160 {lab=virt}
N -410 -20 -410 160 {lab=virt}
N 130 60 300 60 {lab=vout}
N 300 60 300 140 {lab=vout}
N -40 -40 -40 -20 {lab=ib}
N -40 -40 430 -40 {lab=ib}
N 430 -40 430 20 {lab=ib}
N 430 20 490 20 {lab=ib}
N -160 -70 590 -70 {lab=AVDD}
N 590 -10 590 20 {lab=GND}
N 490 -70 490 -40 {lab=AVDD}
N 60 -110 190 -110 {lab=vout}
N 190 -110 190 60 {lab=vout}
N -910 40 -910 80 {lab=GND}
C {simulator_commands_shown.sym} -1510 -630 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
 SAVE ALL
 OP
 WRITE mictest_opa_nmos.raw
 SET APPENDWRITE
 AC DEC 100 1 10e6
 WRITE mictest_opa_nmos.raw
 **
 MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
 LET vm3db = gain_db - 3.0 
 print vm3db
 MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
 MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
 **MEAS AC fmid WHEN vdb(vout)=gain_db
 **Phase Measurement
 LET phase_deg = cph(vout)*180/PI
 MEAS AC phase_zero FIND phase_deg AT=fzero
 MEAS AC phase_pole FIND phase_deg AT=fpole
 **MEAS AC phase_mid FIND phase_deg AT=fmid
 **MEAS fzero fpole using phase
 **LET phase_zero_ph = phase_mid-45
 **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
 
**

 TRAN 1u 6m
 MEAS TRAN voutpp pp v(vout) from=1m TO=4m
 MEAS TRAN vinpp pp v(vout) from=1m TO=4m
 LET gaintran=voutpp/vinpp
 print gaintran
 fourier 1k v(vout)
 plot v(vout)
 plot (vnmic)


.ENDC
.end
"}
C {vsource.sym} -910 10 0 0 {name=V1 value="0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {res.sym} -760 -20 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -610 -20 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -480 -20 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -290 -130 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -290 -210 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -520 240 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -520 300 0 0 {name=l1 lab=GND}
C {gnd.sym} -910 80 0 0 {name=l2 lab=GND}
C {gnd.sym} -170 260 0 0 {name=l3 lab=GND}
C {capa.sym} 300 190 0 0 {name=C3
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 300 250 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -840 -20 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -690 -20 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -540 -20 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -380 -80 0 0 {name=p4 sig_type=std_logic lab=virt}
C {opamp_nmos.sym} -1860 800 0 0 {name=x2}
C {vsource.sym} 590 -40 0 0 {name=vcc value=1.8 savecurrent=false}
C {isource.sym} 490 -10 0 0 {name=I0 value=5u}
C {gnd.sym} 590 20 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 310 -70 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 240 60 0 0 {name=p6 sig_type=std_logic lab=vout
}
C {devices/code.sym} 220 -460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_wire.sym} 130 -40 0 0 {name=p7 sig_type=std_logic lab=ib}
