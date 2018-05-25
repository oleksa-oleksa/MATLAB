clear
home

% Die Ströme I1 I2 I3 berechnen

U01 = 10;
U02 = 20;
R1 = 100;
R2 = 200;
R3 = 300;
R4 = 1e3;

% Spannung zusammenfassen
R34 = R3 + R4;

R = [1 1 1; -R1 R2 0; -R1 0 R34];
U = [0; -U01; -U02];

I = R \ U

Rges1 = R3 + p(R1, R3+R4);
I21 = -U01 / Rges1;
I11 = -I21 * (R3 + R4)/(R1 + R3 + R4);
I31 = -I21 * R1 / (R1 + R3 + R4);

Rges2 = R3 + R4 + p(R1, R2);
I32 = -U02/Rges2;
I12 = -I32 * R2 / (R1 + R2);
I22 = -I32 * R1 / (R1 + R2);

I1 = I11 + I12
I2 = I21 + I22
I3 = I31 + I32