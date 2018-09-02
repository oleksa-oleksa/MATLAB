% Regelungstechnik
% Aufgabe 2
home
clear
close all

% Case 1
% s = tf('s') to specify a TF model 
% using a rational function in the Laplace variable, s
s = tf('s')
Gs = 1 / (1 + 0.2*s);

% Case 2
Gm = 1;
Gr = 10;

Gges1 = Gs * Gr / (1 + Gs * Gr * Gm)

figure(1)
step(Gs, Gges1)
grid on

% Regler ist nun Intergrator
Grr = 10 / s
Gges2 = Gs * Grr / (1 + Gs * Grr * Gm)

figure(2)
step(Gs, Gges1, Gges2)
grid on

% Reglerfehler bestimmen:
W = 1 / s;
E = (1 / (1 + Gr*Gs*Gm)) * W