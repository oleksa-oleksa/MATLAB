clear
home

%Alle Spanungen im komplexen Netzwert berechnen
%Auch alle Ströme und Leistungen

U = 10; % Spannung
% 6 Widerstände des Netzwerk
R1 = 10e3;
R2 = 50;
R3 = 200;
R4 = 200;
R5 = 200;
R6 = 1;

Rges = p(R1, R2) + R3 + p(R4, R5) + R6;

I = U / Rges;

% R1 R2 R4 R5 sind PARALLEL U = U1 = U2...
% R3 R6 REIHEN I = I3 = I6...

U1 = U
U2 = U
U3 = R3 * I
U4 = U
U5 = U
U6 = R6 * I

I1 = U1 / R1
I2 = U2 / R2
I3 = U3 / R3
I4 = U4 / R4
I5 = U5 / R5
I6 = U6 / R6

% Gesamtleistung 
p = U * I 
