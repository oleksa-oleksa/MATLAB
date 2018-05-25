clear
close all
home

% Gegeben sind
R1 = 10;
R2 = 100;
R3 = 200;
L = 0.01;
C1 = 100e-6;
C2 = 200e-6;
U01 = 50;
U02 = 20;
f = 50;

om = 2*pi*f;

% Komplexe Widerstande Z1 - Z6
Z1 = j*om*L + 1/(j*om*C2);
Z2 = 1/(j*om*C2);
Z3 = 1 / (1/(j*om*L) + 1/R2);
Z4 = R1 + j*om*L;
Z5 = R3;
Z6 = 1/(j*om*C1) + 1/(j*om*C1);

% teil f

Z = [ 1 1 0 0 0 -1
    -1 -1 -1 0 0 0
    0 0 0 1 1 1
    0 -Z2 Z3 Z4 0 -Z6
    0 -Z2 Z3 0 Z5 -Z6
    -Z1 0 Z3 0 Z5 -Z6];

U = [0; 0; 0; U01; U01+U02; U02];

I = Z \ U