* SPICE NETLIST
***************************************

.SUBCKT DFlip_Flop VDD CLK D Q
** N=8 EP=4 IP=0 FDC=22
M0 VDD CLK VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=1.08e-14 PD=7.8e-07 PS=4.2e-07 $X=800 $Y=-720 $D=5
M1 2 D VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=1.08e-14 PD=7.8e-07 PS=4.2e-07 $X=800 $Y=560 $D=5
M2 3 VDD VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=1500 $Y=-720 $D=5
M3 VDD VDD 2 VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=1500 $Y=560 $D=5
M4 VDD 4 3 VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=2200 $Y=-720 $D=5
M5 4 VDD VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=2200 $Y=560 $D=5
M6 5 VDD VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=2900 $Y=-720 $D=5
M7 VDD VDD 4 VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=2900 $Y=560 $D=5
M8 VDD VDD 5 VDD NMOS_VTG L=5e-08 W=9e-08 AD=1.08e-14 AS=2.7e-14 PD=4.2e-07 PS=7.8e-07 $X=3600 $Y=-720 $D=5
M9 VDD VDD VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=2.7e-14 AS=2.7e-14 PD=7.8e-07 PS=7.8e-07 $X=3600 $Y=560 $D=5
M10 Q VDD VDD VDD NMOS_VTG L=5e-08 W=9e-08 AD=1.08e-14 AS=2.7e-14 PD=4.2e-07 PS=7.8e-07 $X=4300 $Y=560 $D=5
M11 VDD CLK VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=2.16e-14 PD=9.6e-07 PS=6e-07 $X=800 $Y=-1780 $D=4
M12 2 D VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=2.16e-14 PD=9.6e-07 PS=6e-07 $X=800 $Y=1440 $D=4
M13 3 CLK VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=1500 $Y=-1780 $D=4
M14 VDD CLK 2 VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=1500 $Y=1440 $D=4
M15 VDD 4 3 VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=2200 $Y=-1780 $D=4
M16 4 VDD VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=2200 $Y=1440 $D=4
M17 5 CLK VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=2900 $Y=-1780 $D=4
M18 VDD CLK 4 VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=2900 $Y=1440 $D=4
M19 VDD VDD 5 VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=2.16e-14 AS=5.4e-14 PD=6e-07 PS=9.6e-07 $X=3600 $Y=-1780 $D=4
M20 VDD VDD VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=5.4e-14 AS=5.4e-14 PD=9.6e-07 PS=9.6e-07 $X=3600 $Y=1440 $D=4
M21 Q VDD VDD VDD PMOS_VTG L=5e-08 W=1.8e-07 AD=2.16e-14 AS=5.4e-14 PD=6e-07 PS=9.6e-07 $X=4300 $Y=1440 $D=4
*.CALIBRE WARNING SHORT Short circuit(s) detected by extraction in this cell. See extraction report for details.
.ENDS
***************************************