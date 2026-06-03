v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {BITLINE} 770 80 0 0 0.2 0.2 {}
N -40 10 -40 80 {lab=BITLINE}
N 300 50 340 50 {lab=QBAR}
N 340 130 340 210 {lab=QBAR}
N 300 210 340 210 {lab=QBAR}
N 260 280 260 330 {lab=GND}
N 260 10 260 20 {lab=VDD}
N 230 10 260 10 {lab=VDD}
N 380 210 400 210 {lab=Q}
N 380 150 380 210 {lab=Q}
N 380 50 400 50 {lab=Q}
N 260 150 260 180 {lab=Q}
N 440 130 440 180 {lab=QBAR}
N 340 130 440 130 {lab=QBAR}
N 340 50 340 130 {lab=QBAR}
N 260 150 380 150 {lab=Q}
N 260 80 260 150 {lab=Q}
N 380 50 380 150 {lab=Q}
N 440 80 440 130 {lab=QBAR}
N 440 240 440 280 {lab=GND}
N 620 -30 620 90 {lab=WORDLINE}
N 220 -30 620 -30 {lab=WORDLINE}
N 500 130 590 130 {lab=QBAR}
N 650 130 810 130 {lab=BITLINE_BAR}
N -50 10 -40 10 {lab=BITLINE}
N 810 40 810 130 {lab=BITLINE_BAR}
N 170 80 260 80 {lab=Q}
N -40 80 50 80 {lab=BITLINE}
N 80 -30 80 40 {lab=WORDLINE}
N 80 80 80 210 {lab=GND}
N 160 210 160 280 {lab=GND}
N 160 210 260 210 {lab=GND}
N 440 210 520 210 {lab=GND}
N 520 210 520 280 {lab=GND}
N 200 50 260 50 {lab=VDD}
N 200 10 200 50 {lab=VDD}
N 440 50 500 50 {lab=VDD}
N 440 20 500 20 {lab=VDD}
N 500 20 500 50 {lab=VDD}
N 620 130 620 280 {lab=GND}
N 220 -60 220 -30 {lab=WORDLINE}
N 80 -30 220 -30 {lab=WORDLINE}
N 440 0 440 20 {lab=VDD}
N 330 -0 440 0 {lab=VDD}
N 230 0 230 10 {lab=VDD}
N 200 10 230 10 {lab=VDD}
N 330 -70 330 -0 {lab=VDD}
N 230 -0 330 -0 {lab=VDD}
N 190 330 260 330 {lab=GND}
N 160 280 260 280 {lab=GND}
N 260 240 260 280 {lab=GND}
N 80 210 160 210 {lab=GND}
N 260 280 440 280 {lab=GND}
N 440 280 520 280 {lab=GND}
N 520 280 620 280 {lab=GND}
N 170 80 170 140 {lab=Q}
N 110 80 170 80 {lab=Q}
N 500 160 510 160 {lab=QBAR}
N 500 130 500 160 {lab=QBAR}
N 440 130 500 130 {lab=QBAR}
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
C {ipin.sym} -50 10 0 0 {name=p1 lab=BITLINE}
C {opin.sym} 170 140 0 0 {name=p2 lab=Q}
C {ipin.sym} 810 40 0 0 {name=p3 lab=BITLINE_BAR}
C {ipin.sym} 330 -70 0 0 {name=p5 lab=VDD}
C {ipin.sym} 220 -60 0 0 {name=p7 lab=WORDLINE}
C {ipin.sym} 190 330 0 0 {name=p8 lab=GND}
C {opin.sym} 510 160 0 0 {name=p10 lab=QBAR}
