v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1010 -90 1810 310 {flags=graph
y1=-0.05615322
y2=7.0904927
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00053608294
x2=0.028091422
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=q
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1010 320 1810 720 {flags=graph
y1=-0.54535606
y2=8.0542782
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00053608294
x2=0.028091422
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vbl
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1810 -90 2610 310 {flags=graph
y1=-0.03382418
y2=6.8458839
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00053608294
x2=0.028091422
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=qb
color=6
dataset=-1
unitx=1
logx=0
logy=0
autoload=1}
B 2 1810 320 2610 720 {flags=graph
y1=-0.8949684
y2=6.7134376
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00053608294
x2=0.028091422
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vblb
color=15
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1010 720 1810 1120 {flags=graph
y1=-2.3208645
y2=6.2787693
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00053608294
x2=0.028091422
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vwl
color=17
dataset=-1
unitx=1
logx=0
logy=0
}
T {WORDLINE} 50 -60 0 0 0.2 0.2 {}
T {BITLINE} 770 80 0 0 0.2 0.2 {}
T {VBL - BITLINE
VBLB - BITLINE BAR
VWL - WORDLINE} -180 340 0 0 0.3 0.3 {}
T {SRAM CELL - 6T} 110 -170 0 0 0.5 0.5 {}
T {Created by: Lauro Brizidio
May 14, 2026} 110 -130 0 0 0.3 0.3 {}
N -40 10 -40 80 {lab=VBL}
N 300 50 340 50 {lab=QB}
N 340 130 340 210 {lab=QB}
N 300 210 340 210 {lab=QB}
N 260 240 260 280 {lab=GND}
N 260 10 260 20 {lab=VDD}
N 200 10 260 10 {lab=VDD}
N 380 210 400 210 {lab=Q}
N 380 150 380 210 {lab=Q}
N 380 50 400 50 {lab=Q}
N 260 150 260 180 {lab=Q}
N 440 130 440 180 {lab=QB}
N 340 130 440 130 {lab=QB}
N 340 50 340 130 {lab=QB}
N 260 150 380 150 {lab=Q}
N 260 80 260 150 {lab=Q}
N 380 50 380 150 {lab=Q}
N 440 80 440 130 {lab=QB}
N 440 240 440 280 {lab=GND}
N 620 -30 620 90 {lab=VWL}
N 80 -30 620 -30 {lab=VWL}
N 440 130 590 130 {lab=QB}
N 650 130 810 130 {lab=VBLB}
N 350 450 350 490 {lab=GND}
N 570 460 570 500 {lab=GND}
N -50 10 -40 10 {lab=VBL}
N 700 -30 700 10 {lab=GND}
N 700 -130 700 -90 {lab=VDD}
N 810 40 810 130 {lab=VBLB}
N 570 340 570 400 {lab=VBL}
N 350 340 350 390 {lab=VWL}
N 110 80 260 80 {lab=Q}
N -40 80 50 80 {lab=VBL}
N 80 -30 80 40 {lab=VWL}
N 100 450 100 490 {lab=GND}
N 100 340 100 390 {lab=VBLB}
N 80 80 80 150 {lab=GND}
N 160 210 160 250 {lab=GND}
N 160 210 260 210 {lab=GND}
N 440 210 520 210 {lab=GND}
N 520 210 520 250 {lab=GND}
N 200 50 260 50 {lab=VDD}
N 200 10 200 50 {lab=VDD}
N 180 10 200 10 {lab=VDD}
N 440 50 500 50 {lab=VDD}
N 440 20 500 20 {lab=VDD}
N 500 20 500 50 {lab=VDD}
N 620 130 620 200 {lab=GND}
C {code_shown.sym} -230 160 0 0 {name=s1 only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt

.tran 0.05m 20m
.save all
"}
C {vdd.sym} 180 10 0 0 {name=l2 lab=VDD}
C {vdd.sym} 440 20 0 0 {name=l3 lab=VDD}
C {gnd.sym} 350 490 0 0 {name=l7 lab=GND}
C {vsource.sym} 570 430 0 0 {name=VBL value="PULSE(0 5 2m 1u 1u 5m 10m)" savecurrent=false}
C {gnd.sym} 570 500 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -50 10 0 0 {name=p7 sig_type=std_logic lab=VBL}
C {vsource.sym} 350 420 0 0 {name=VWL value="PULSE(0 5 0m 1u 1u 3m 6m)" savecurrent=false}
C {gnd.sym} 700 10 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 700 -130 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {vsource.sym} 700 -60 0 0 {name=VDD value=5 savecurrent=false}
C {gnd.sym} 260 280 0 0 {name=l1 lab=GND}
C {gnd.sym} 440 280 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 80 -30 0 0 {name=p1 sig_type=std_logic lab=VWL}
C {lab_pin.sym} 570 340 0 0 {name=p2 sig_type=std_logic lab=VBL}
C {lab_pin.sym} 350 340 0 0 {name=p3 sig_type=std_logic lab=VWL}
C {lab_pin.sym} 810 50 0 0 {name=p4 sig_type=std_logic lab=VBLB}
C {gnd.sym} 100 490 0 0 {name=l6 lab=GND}
C {vsource.sym} 100 420 0 0 {name=VBLB value="PULSE(5 0 2m 1u 1u 6m 10m)" savecurrent=false}
C {lab_pin.sym} 100 340 0 0 {name=p5 sig_type=std_logic lab=VBLB}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 50 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 210 0 1 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 50 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 210 2 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 60 1 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 620 110 3 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 80 150 0 0 {name=l5 lab=GND}
C {gnd.sym} 160 250 0 0 {name=l9 lab=GND}
C {gnd.sym} 520 250 0 0 {name=l11 lab=GND}
C {gnd.sym} 620 200 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 140 80 1 0 {name=p6 sig_type=std_logic lab=Q}
C {lab_pin.sym} 540 130 1 0 {name=p9 sig_type=std_logic lab=QB}
