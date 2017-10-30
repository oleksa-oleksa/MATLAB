% erstellt von Oleksandra Baga

% Gegeben sind:
R = 100; % Ohm
Rm = 100; % Ohm
L = 9e-3; % mH
N = 500; % Windung
C1 = 230e-9; % nF
C2 = 66e-9; % nF

% Schaltungen

% a. Reihenschaultung R - L
om_a1 = 500;
om_a2 = 1000;
om_a3 = 2000;
om_a4 = 3000;
om_a5 = 4000;
om_a6 = 5000;


Z_a1 = 3 / 0.0277
Z_a2 = 3.24 / 0.0272
Z_a3 = 3.94 / 0.0253
Z_a4 = 4.64 / 0.0229
Z_a5 = 5.2 / 0.0206
Z_a6 = 5.62 / 0.0183

Y_a1 = (1 / Z_a1) * 1000
Y_a2 = (1 / Z_a2) * 1000
Y_a3 = (1 / Z_a3) * 1000
Y_a4 = (1 / Z_a4) * 1000
Y_a5 = (1 / Z_a5) * 1000
Y_a6 = (1 / Z_a6) * 1000

% b. Reihenshaltung R - C1
om_b1 = 2000;
om_b2 = 3000;
om_b3 = 4000;
om_b4 = 5000;
om_b5 = 10000;
om_b6 = 20000;


Z_b1 = 5.96 / 0.0162
Z_b2 = 5.25 / 0.0203
Z_b3 = 4.69 / 0.0228
Z_b4 = 4.28 / 0.0243
Z_b5 = 3.38 / 0.0268
Z_b6 = 4.28 / 0.0242

Y_b1 = (1 / Z_b1) * 1000
Y_b2 = (1 / Z_b2) * 1000
Y_b3 = (1 / Z_b3) * 1000
Y_b4 = (1 / Z_b4) * 1000
Y_b5 = (1 / Z_b5) * 1000
Y_b6 = (1 / Z_b6) * 1000


% c. Reihenschaltung R - L - C1

om_a1 = 500;
om_a2 = 1000;
om_a3 = 2000;
om_a4 = 3000;
om_a5 = 4000;
om_a6 = 5000;


Z_a1 = 3 / 0.0277
Z_a2 = 3.24 / 0.0272
Z_a3 = 3.94 / 0.0253
Z_a4 = 4.64 / 0.0229
Z_a5 = 5.2 / 0.0206
Z_a6 = 5.62 / 0.0183

Y_a1 = (1 / Z_a1) * 1000
Y_a2 = (1 / Z_a2) * 1000
Y_a3 = (1 / Z_a3) * 1000
Y_a4 = (1 / Z_a4) * 1000
Y_a5 = (1 / Z_a5) * 1000
Y_a6 = (1 / Z_a6) * 1000

% b. Reihenshaltung R - C1
om_c1 = 1000;
om_c2 = 2000;
om_c3 = 3000;
om_c4 = 3518;
om_c5 = 5000;
om_c6 = 7500;
om_c7 = 10000;
om_c8 = 15000;

Z_c1 = 6.64 / 0.0103
Z_c2 = 5.25 / 0.02
Z_c3 = 3.39 / 0.0262
Z_c4 = 3.04 / 0.0270
Z_c5 = 4.32 / 0.0236
Z_c6 = 5.86 / 0.0165
Z_c7 = 6.40 / 0.0122
Z_c8 = 6.76 / 0.008


Y_c1 = (1 / Z_c1) * 1000
Y_c2 = (1 / Z_c2) * 1000
Y_c3 = (1 / Z_c3) * 1000
Y_c4 = (1 / Z_c4) * 1000
Y_c5 = (1 / Z_c5) * 1000
Y_c6 = (1 / Z_c6) * 1000
Y_c7 = (1 / Z_c7) * 1000
Y_c8 = (1 / Z_c8) * 1000


% d. Gemischte Schaltung (R - L - C1 ) || C2
om_d1 = 750;
om_d2 = 1000;
om_d3 = 2000;
om_d4 = 3000;
om_d5 = 3690;
om_d6 = 4500;
om_d7 = 5000;
om_d8 = 6000;
om_d9 = 6500;
om_d10 = 7020;
om_d11 = 7300;
om_d12 = 7500;
om_d13 = 8000;
om_d14 = 8500;
om_d15 = 10000;
om_d16 = 20000;


Z_d1 = 6.78 / 0.00972
Z_d2 = 6.55 / 0.0128
Z_d3 = 5.05 / 0.0231
Z_d4 = 3.29 / 0.0278
Z_d5 = 3.09 / 0.0267
Z_d6 = 3.96 / 0.0222
Z_d7 = 4.59 / 0.0186
Z_d8 = 5.53 / 0.0116
Z_d9 = 5.84 / 0.00877
Z_d10 = 6.06 / 0.00686
Z_d11 = 6.14 / 0.00643
Z_d12 = 6.20 / 0.00643
Z_d13 = 6.29 / 0.00730
Z_d14 = 6.34 / 0.0089
Z_d15 = 6.31 / 0.0175
Z_d16 = 4.70 / 0.0347

Y_d1 = (1 / Z_d1) * 1000
Y_d2 = (1 / Z_d2) * 1000
Y_d3 = (1 / Z_d3) * 1000
Y_d4 = (1 / Z_d4) * 1000
Y_d5 = (1 / Z_d5) * 1000
Y_d6 = (1 / Z_d6) * 1000
Y_d7 = (1 / Z_d7) * 1000
Y_d8 = (1 / Z_d8) * 1000
Y_d9 = (1 / Z_d9) * 1000
Y_d10 = (1 / Z_d10) * 1000
Y_d11 = (1 / Z_d11) * 1000
Y_d12 = (1 / Z_d12) * 1000
Y_d13 = (1 / Z_d13) * 1000
Y_d14 = (1 / Z_d14) * 1000
Y_d15 = (1 / Z_d15) * 1000
Y_d16 = (1 / Z_d16) * 1000

% =======================
% Kontrollberechnungen

% a
omom_a2 = 2* pi * om_a2
omom_a5 = 2* pi * om_a5

XL_a2 = j*omom_a2 * L
XL_a5 = j*omom_a5 * L

Z_a2k = R + XL_a2
Z_a5k = R + XL_a5

Z_a2 = abs(R + XL_a2)
Z_a5 = abs(R + XL_a5)

Z_a2_winkel = angle(Z_a2k)*(360/(2*pi))
Z_a5_winkel = angle(Z_a5k)*(360/(2*pi))

%==================
% b
omom_b2 = 2* pi * om_b2
omom_b5 = 2* pi * om_b5

XC_b2 = 1 / (j*omom_b2 * C1)
XC_b5 = 1 / (j*omom_b5 * C1)

Z_b2k = R + XC_b2
Z_b5k = R + XC_b5

Z_b2 = abs(R + XC_b2)
Z_b5 = abs(R + XC_b5)

Z_b2_winkel = angle(Z_b2k)*(360/(2*pi))
Z_b5_winkel = angle(Z_b5k)*(360/(2*pi))


%==================
% c
omom_c2 = 2* pi * om_c2
omom_c6 = 2* pi * om_c6

XC_c2 = 1 / (j*omom_c2 * C1);
XC_c6 = 1 / (j*omom_c6 * C1);

XL_c2 = j * omom_c2 * L;
XL_c6 = j * omom_c6 * L;

Z_c2k = R + XC_c2 + XL_c2;
Z_c6k = R + XC_c6 + XL_c6,

Z_c2 = abs(R + XC_c2 + XL_c2);
Z_c6 = abs(R + XC_c6 + XL_c6);

Z_c2_winkel = angle(Z_c2k)*(360/(2*pi));
Z_c6_winkel = angle(Z_c6k)*(360/(2*pi));

%==================
% d
omom_d3 = 2* pi * om_d3;
omom_d8 = 2* pi * om_d8;
omom_d14 = 2* pi * om_d14;

XC1_d3 = 1 / (j * omom_d3 * C1);
XC1_d8 = 1 / (j * omom_d8 * C1);
XC1_d14 = 1 / (j * omom_d14 * C1);

XL1_d3 = j * omom_d3 * L;
XL1_d8 = j * omom_d8 * L;
XL1_d14 = j * omom_d14 * L;

Z1_d3k = R + XC1_d3 + XL1_d3;
Z1_d8k = R + XC1_d8 + XL1_d8;
Z1_d14k = R + XC1_d14 + XL1_d14;

% C2
XC2_d3 = 1 / (j * omom_d3 * C2);
XC2_d8 = 1 / (j * omom_d8 * C2);
XC2_d14 = 1 / (j * omom_d14 * C2);

% Ges Komplex
Rges_d3k = (Z1_d3k * XC2_d3) / (Z1_d3k + XC2_d3);
Rges_d8k = (Z1_d8k * XC2_d8) / (Z1_d8k + XC2_d8);
Rges_d14k = (Z1_d14k * XC2_d14) / (Z1_d14k + XC2_d14);


Rges_d3 = abs(Rges_d3k)
Rges_d8 = abs(Rges_d8k);
Rges_d14 = abs(Rges_d14k);

Rges_d3_winkel = angle(Rges_d3k)*(360/(2*pi))
Rges_d8_winkel = angle(Rges_d8k)*(360/(2*pi));
Rges_d14_winkel = angle(Rges_d14k)*(360/(2*pi));

Y_d3 = 1 / Rges_d3;
Y_d8 = 1 / Rges_d8;
Y_d14 = 1 / Rges_d14;

% c
% Resonanzfrequenz

omom_c0 = 1 / sqrt(C1 * L);
om_c0 = omom_c0 / (2 * pi);

% d
% Resonanzfrequenz

om_d01 = 1/ sqrt (L *C1) + 1 / sqrt (C2)

f0 = om_d01 / (2*pi)
