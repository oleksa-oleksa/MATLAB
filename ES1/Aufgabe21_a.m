clear
home
close all

% Komplexe Widerstand berecnen
% a) Zweistrome falls beiden Spannungen
% dieselbe Frequenzen haben

% b) Welche Werte ergeben sich für die Strome,
% falls es unterschiedliche Frenquenz gibt

R1 = 50;
R2 = 50;
R3 = 200;
R4 = 200;
L1 = 3e-3;
L2 = 10e-3;
C = 5e-6;
f = 50;
w = 2 * pi * f; % omega

% Komplexe Widerstände
Z1 = R1 + 1i * w * L1;
Z2 = R2 + 1i * w * L2;
Z3 = R3;
Z4 = R4;
Z5 = 1 / (1i * w * C);

% Spannungen
U_1 = 30;
U_2 = 30 * exp(1i * 45 * (pi / 180));

% Z=5, K=3 --> 2 Knotengleichungen + 3 Maschengleichungen:
Z_ = [ 1 1 -1 1 0
0 -1 0 -1 -1
Z1 0 0 -Z4 Z5
Z1 0 Z3 0 0
0 -Z2 -Z3 0 Z5 ];

U_ = [ 0; 0; -U_2; -U_1; U_1 ];
I_ = Z_ \ U_;

% Ströme
I_1a = I_(1)
I_2a = I_(2)
I_3a = I_(3)
I_4a = I_(4)
I_5a = I_(5)

% Zeitabhängige Ströme
t = linspace(0, 4 * 1/f ,500);

i1a = sqrt(2) * imag(I_1a * exp(1i * w * t));
i2a = sqrt(2) * imag(I_2a * exp(1i * w * t));
i3a = sqrt(2) * imag(I_3a * exp(1i * w * t));
i4a = sqrt(2) * imag(I_4a * exp(1i * w * t));
i5a = sqrt(2) * imag(I_5a * exp(1i * w * t));

plot(t, i1a, t, i2a, t, i3a, t, i4a, t, i5a) 
