clear
close all
home

Ua = 10,6
Ue = 15;
R1 = 1500 
C = 100e-6;
om = 1000*2*pi;

Xc = 1/(j*om*C)
Z1 = R1 - j*Xc

Zf = (Ua * Z1)/Ue