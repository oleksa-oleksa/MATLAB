clear
home

% Gegeben sind
% Reiheschaltung
R = 50;
L = 0.1;
C = 30e-6;
U = 230;
f = 50;

% Bestimmen Sie komplexen Strom I
% und Wirk- und Bleidleistung

w = 2 * pi * f; % Kreisfrequenz
ZL = j * w * L;
ZC = 1 / (j * w * C);
Zges = R + ZL + ZC % Komplexer Gesamtwiderstand
ZgesB = abs (Zges); % Betrag

% Komplexer Strom
I = U / Zges
IB = abs (I) % Ampere

P = IB^2*R % Wirkleistung in Watt

% Blindleistunng
QL = IB^2*w*L
QC = IB^2 *(-1/(w*C))

% Scheinleistung

S = U * conj(I);
SB = abs(S)
S_Winkel = angle(S)*(180/pi)