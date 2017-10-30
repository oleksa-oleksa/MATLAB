clear
home

% Gegeben sind
A = 16;
lan = 120;
U0 = 250;
UVer = 230;
cos_phi = 0.85;
pkup = 0.0179;

% Wie gross ist ubertragene Leistung, damit
% die Spannung nicht unter 230 sinkt
Rleit = pkup*lan/A
Winkel = acos (cos_phi);

UR = UVer * 0.85
UL = UVer * sin (Winkel)

Uleit = sqrt(U0^2 - UL^2) - UR;
UleitB = abs (Uleit)

% Komplexen Strom
I = UleitB/Rleit;
IB = abs(I)

P = abs(UVer * IB * cos_phi)/1000 % KWatt 
