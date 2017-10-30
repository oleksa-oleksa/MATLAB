clear
home

% Reiheschaltung eines Widerstandes R und Induktivitat L
% Elektromotor
P = 7e3; % Wirkleistung
U = 220;
f = 50;
cos = 0.75;

% Zu berechnen sind:
% 1. Scheinleistung, Blindleistung
% 2. Widerstand R
% 3. Indukrivität

I = P / (U * cos);
phi = acos (cos); % phi in Rad
phiG = (phi*180)/pi;

% Blindleistung
Q = U * I * sin(phi)

% Scheinleistung
S = P + j*Q;
Sb = abs (S) % Betrag

% Reihe => Ir = Il = I;
Zges = U / I;
w = 2 * pi * f;

% Widerstände R und L 
R = P/I^2
L = Q / (I^2 * w)

