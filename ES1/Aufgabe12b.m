clear
home

% Die Ströme I1 I2 I3 berechnen mit dem Uberlagerungssatz

U01 = 10;
U02 = 20;
R1 = 100;
R2 = 200;
R3 = 300;
R4 = 1e3;


% Zunächst mir der Quelle U01
% Widerstände sammeln
R34 = R3 + R4;

Rges1 = R2 + p (R1, R34);

% Teilströme berechnen
I21 = - U01 / Rges1;
I11 = -I21 * ( R34 / (R1 + R34));
I31 = -I11 - I21;

% Nur Quelle U02
Rges2 = R34 + p (R1, R2);
I32 = -U02 / Rges2;
I12 = -I32 * ( R2 / (R1 + R2));
I22 = -I32 * ( R1 / (R1 + R2));

%Überlagung, Werte sind im Ampere
I1 = I11 + I12
I2 = I21 + I22
I3 = I31 + I32