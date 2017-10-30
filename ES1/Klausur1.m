clear
close all
home

% Gegeben sind:
R1 = 200;
R2 = 100;
R3 = 100;
L = 10e-3;
C = 100E-6;
U0 = 10;
f = 50;

% Teil B
om = 2*pi*f;
Zcl = j*om*L + 1/(j*om*C);
Z3cl = 1 / (1/Zcl + 1 / R3);
Z23cl = R2 + Z3cl;
Zges = 1 / (1/R1 + 1/Z23cl)
Zgesb = abs (Zges)

% Teil C
R12 = 1 / (1/R1 + 1/R2)
Ul = U0 * Zcl / (Zcl + R12)
Ulb = abs (Ul)
Ik = U0 / R12
Uers = Ulb
Rers = Ul / Ik
Rersb = abs (Rers)

% Teil d
I3 = Uers / (Rers + R3)
I3b = abs (I3)

% Teil c
% cos (90) = 0
Pr3 = U0 * I3b * cos (90)

% Teil f
Q = U0 * I3 * sin (90)