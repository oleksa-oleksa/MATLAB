clear
home 

% Teilströme durch die drei Widerstände
% in der Parallelschaltung

% R1, R2, R3 sind drei Widerstände in der Parallelschaltung
R1 = 10;
R2 = 20;
R3 = 50;
I = 2; % Gesamtstrom Amper

% Letwert für jeden Widerstand
G1 = 1 / R1;
G2 = 1 / R2;
G3 = 1 / R3;

% Gesamter Leitwert
Gges = G1 + G2 + G3;

U = I / Gges; % Spannung

% Teilströme berechnen:
I1 = U * G1
I2 = U * G2
I3 = U * G3
