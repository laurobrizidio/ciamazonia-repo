v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -40 -140 -20 {lab=VDD}
N -140 -20 -70 -20 {lab=VDD}
N -100 60 -100 110 {lab=GND}
N -100 60 -70 60 {lab=GND}
N -390 80 -390 100 {lab=GND}
N -390 0 -390 20 {lab=WL}
N -410 0 -390 0 {lab=WL}
N -140 0 -70 0 {lab=WL}
N -290 80 -290 100 {lab=GND}
N -290 0 -290 20 {lab=BL}
N -310 0 -290 0 {lab=BL}
N -150 20 -70 20 {lab=BL}
N -390 220 -390 240 {lab=GND}
N -390 140 -390 160 {lab=BLB}
N -410 140 -390 140 {lab=BLB}
N -140 40 -70 40 {lab=BLB}
N 230 -20 270 -20 {lab=Q}
N 270 -60 270 -20 {lab=Q}
N 230 0 280 0 {lab=QBAR}
N 280 0 280 50 {lab=QBAR}
N -160 240 -160 260 {lab=GND}
N -160 160 -160 180 {lab=VDD}
N -180 160 -160 160 {lab=VDD}
C {vdd.sym} -140 -40 0 0 {name=l1 lab=VDD}
C {vsource.sym} -390 50 0 0 {name=V1 value="PULSE(0 5 5m 1u 1u 10m 40m)" savecurrent=false}
C {gnd.sym} -100 110 0 0 {name=l2 lab=GND}
C {gnd.sym} -390 100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -410 0 0 0 {name=p1 sig_type=std_logic lab=WL}
C {lab_pin.sym} -140 0 0 0 {name=p2 sig_type=std_logic lab=WL}
C {vsource.sym} -290 50 0 0 {name=V2 value="PULSE(5 0 0m 1u 1u 20m 40m)" savecurrent=false}
C {gnd.sym} -290 100 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -310 0 0 0 {name=p3 sig_type=std_logic lab=BL}
C {lab_pin.sym} -150 20 0 0 {name=p4 sig_type=std_logic lab=BL}
C {vsource.sym} -390 190 0 0 {name=V3 value="PULSE(0 5 0m 1u 1u 20m 40m)" savecurrent=false}
C {gnd.sym} -390 240 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -410 140 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} -140 40 0 0 {name=p6 sig_type=std_logic lab=BLB}
C {code_shown.sym} 290 110 0 0 {name=s1 only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt

.tran 0.05m 50m
.save all

.control
run
plot v(WL)

plot v(BL) v(BLB)

plot v(Q) v(QBAR)
.endc
"}
C {/home/designer/shared/SRAM_symbol.sym} 80 20 0 0 {name=x1}
C {lab_pin.sym} 270 -60 0 0 {name=p7 sig_type=std_logic lab=Q}
C {lab_pin.sym} 280 50 0 0 {name=p8 sig_type=std_logic lab=QBAR}
C {vsource.sym} -160 210 0 0 {name=V4 value=5 savecurrent=false}
C {gnd.sym} -160 260 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -180 160 0 0 {name=p9 sig_type=std_logic lab=VDD}
