clear
close all
home

% Gegeben sind:
% Folgender unsymmetrischer Verbraucher
Z1n = 140 + j*200;
Z2n = 80 + j*250;
Z3n = 250 + j*100;

% Symmetrische Spannungversorgung - Strangspannung
U1n = 230 * exp(j*0);
U2n = 230 * exp(-j*120);
U3n = 230 * exp(j*120);

% Zu berechnen sind:
% Strangstr?me I1, I2, I3, In
% Schein-, Wirk- und Blindleistung

% Werte ohne Nullleiter

%=====================
% I1, I2, I3
I1 = U1n / Z1n;
I1b = abs (I1) 
I1_phase = angle(I1)*(180/pi);

I2 = U2n / Z2n;
I2b = abs (I2)
I2_phase = angle(I2)*(180/pi);

I3 = U3n / Z3n;
I3b = abs (I3)
I3_phase = angle(I3)*(180/pi);

% Strom durch den Nullleiter
In = I1 + I2 + I3;
Inb = abs (In)
In_phase = angle(In)*(180/pi);


%==========================
% Komplexe alle Leistungen
U = sqrt(3) * 230;
P = sqrt(3) * U * Inb * cos(120) % Watt
Q = sqrt(3)* U * Inb * abs (sin (120))
% S = P + j*Q
S = sqrt(3) * U * conj(In)
Sb = abs(S);
S_phase = angle(S)*(180/pi);

%==========================
% MIT ABGETRENNTEN Nullleiter
Znn = [Z1n 0 0 1
    0 Z2n 0 1
    0 0 Z3n 1
    1 1 1 0];
Unn = [U1n; U2n; U3n; 0];

Inn = Znn \ Unn;
Inn1 = Inn(1)
Inn2 = Inn(2)
Inn3 = Inn(3)

Umn = abs(Inn(4))




