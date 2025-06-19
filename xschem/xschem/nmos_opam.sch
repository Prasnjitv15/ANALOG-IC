v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 80 560 80 {lab=vout}
N 560 80 560 160 {lab=vout}
N -320 180 -320 230 {lab=vip}
N -320 180 -100 180 {lab=vip}
N -570 -20 -570 240 {lab=vim}
N -570 -20 -100 -20 {lab=vim}
N -570 300 -570 350 {lab=vcm}
N -570 350 -320 350 {lab=vcm}
N -320 290 -320 350 {lab=vcm}
N -920 100 -920 290 {lab=vindiff}
N -920 100 -370 100 {lab=vindiff}
N -370 100 -370 240 {lab=vindiff}
N -370 240 -360 240 {lab=vindiff}
N -730 250 -610 250 {lab=vindiff}
N -730 100 -730 250 {lab=vindiff}
N -410 350 -410 440 {lab=vcm}
N -410 500 -410 530 {lab=GND}
N -700 290 -610 290 {lab=GND}
N -700 290 -700 350 {lab=GND}
N -360 280 -360 310 {lab=GND}
N -700 310 -360 310 {lab=GND}
N 560 220 560 260 {lab=#net1}
N 170 -270 170 -0 {lab=#net2}
N -110 -330 170 -330 {lab=vdda}
N -110 -330 -110 -280 {lab=vdda}
N 50 -330 50 -50 {lab=vdda}
N 560 320 560 350 {lab=GND}
N -110 -220 -110 -190 {lab=GND}
N -920 350 -920 390 {lab=GND}
N 40 230 40 280 {lab=GND}
C {vsource.sym} -920 320 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -110 -250 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} -410 470 0 0 {name=Vcm value=0 savecurrent=false}
C {vcvs.sym} -570 270 0 0 {name=E1 value=-0.5}
C {vcvs.sym} -320 260 0 0 {name=E2 value=0.5}
C {capa.sym} 560 190 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {isource.sym} 170 -300 0 0 {name=I0 value=5u}
C {gnd.sym} -920 390 0 0 {name=l1 lab=GND}
C {gnd.sym} -700 350 0 0 {name=l2 lab=GND}
C {gnd.sym} -410 530 0 0 {name=l3 lab=GND}
C {vsource.sym} 560 290 0 0 {name=V5 value=3 savecurrent=false}
C {gnd.sym} 40 280 0 0 {name=l4 lab=GND}
C {gnd.sym} 560 350 0 0 {name=l5 lab=GND}
C {gnd.sym} -110 -190 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -920 190 0 0 {name=p1 sig_type=std_logic lab=vindiff}
C {lab_wire.sym} -320 350 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -250 -20 0 0 {name=p3 sig_type=std_logic lab=vim}
C {lab_wire.sym} -190 180 0 0 {name=p4 sig_type=std_logic lab=vip
}
C {lab_wire.sym} -20 -330 0 0 {name=p5 sig_type=std_logic lab=vdda}
C {lab_wire.sym} 440 80 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -1610 -690 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.temp 27
.control

 save all

 save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
 
 save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]

 save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]

 save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]

 save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]

 save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]

 OP

 write nmos_opam.raw

 let im1=@m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
 let iim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
 let iip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
 let icmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]
 let icmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
 let imtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
 
 let gm1=@m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
 let gmim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gmip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gmcmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gmcmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gmtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]

 let gmidm1=gm1/im1
 let gmidim=gmim/iim
 let gmidip=gmip/iip
 let gmidcmm=gmcmm/icmm
 let gmidcmp=gmcmp/icmp
 let gmidtail=gmtail/imtail
 
 print gmidm1
 print gmidim
 print gmidip
 print gmidcmm
 print gmidcmp
 print gmidtail

 print im1
 print iim
 print iip
 print icmm
 print icmp
 print imtail
 
 AC DEC 100 1 1e9
 set appendwrite
 write  nmos_opam.raw
.endc
.end
"}
C {opamp_nmos.sym} -1650 820 0 0 {name=x1}
C {devices/code.sym} 300 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
