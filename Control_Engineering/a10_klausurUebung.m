% Regelungstechnik
% Aufgabe 10

s = tf('s');
% Gegebene Ubertragunsfunktion
Gs = 10 / ((1 + 5*s) * (1 + 1.25*s) * (1 + 0.333*s));

figure(1)
title('Gs Aufgabe 9')
bode(Gs)
grid on

wc = 1.1;
tr = 1.44 / wc;
[M, phi] = bode(Gs, wc); % phi in grad!

phi_R_IST = phi - (-180);

% phi von regler berechnen
% das muss negativ sein

phi_R = phi_R_SOLL - phi_R_IST;

TN = tan ((phi_R + 90) * pi / 180) / wc;

G_strich = (1 + s * TN) / s;
L_strich = G_strich * Gs;
