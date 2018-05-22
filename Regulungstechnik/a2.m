% Regelungstechnik
% Aufgabe 2
home
clear
close all

s = tf('s')
G1 = 1 / (1 + 0.2*s);

Gm = 1;
Gr = 10;

Gges1 = G1 * Gr / (1 + G1 * Gr * Gm)

figure(1)
step(G1, Gges1)
grid on

% Regler ist nun Intergrator
Grr = 10 / s
Gges2 = G1 * Grr / (1 + G1 * Grr * Gm)

figure(2)
step(G1, Gges1, Gges2)
grid on