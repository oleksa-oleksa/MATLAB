clear
home

% Gegeben sind:
R = 10;
L = 0.1;
U = 230;
f = 50;
Winkel = 10;
phi = 10 * pi / 180;

% Zu berechnen sind:
% Wirk-, Blind-, ScheinLeistung
% komplexe Scheinlustung
% Kapazität C (geschaltet parallel)
% Strom mit und ohne Kompesation
% Geben umgesetze Leistung mit Kompensation an

% Ohne Blinkompesation
w = 2*pi*f;
Zges = R + j*w*L;
I = U / Zges;
IB = abs(I)
IPhase = angle(I)*(180/pi)

% Komplexe Schrenleistung
S = U * conj(I)

P = real(S)
QC = tan(phi) * P - imag(S);

C = -QC / (U^2*w)
ZC = 1 / (j*w*C);
Qkomp = P * tan(Winkel)

% UNRICHTIG
Iges = IB + U/ZC
