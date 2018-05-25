clear
close all
home

% Gegeben sind:
R = 3.5;
L = 180e-6;
C = 20e-9;
I = 10e-3;
phase = 45;

% Zu berechnen sind:
% 1) Resonansfrequenz f0, die G?te Q, Bandbreite b
% 2) Spannungen Ur, Ul, Uc
% 3) Frequenz bei der Phasenverschiebung = 45?

% 1)

om0 = 1/sqrt(L*C); 
f0 = om0 / (2*pi) % Resonansfrequenz f0

Q = (om0 * L) / R % G?te
Q2 = 1 / (om0 * R * C) %  Gute Variant 2 Q = Q2 (!)

% Bandbreite
b = om0 / (2 * pi * Q) % Bandbreite. Egal ob Q oder Q2 in der Formel steht.

% 2)
% In der Reihe Ir = Il = Ic = I

Ur = I * R
Uc = I * 1/(j*om0*C)
Ul = I * (j*om0*L)

% 3)
om45p = sqrt(om0^2 + (om0/(2*Q))^2) + om0/(2*Q);
om45n = sqrt(om0^2 + (om0/(2*Q))^2) - om0/(2*Q);

f45p = om45p / (2*pi)
f45n = om45n/(2*pi)

btest = (om45p - om45n)/(2*pi)