clear
close all
home

% Gegeben sind:
% Symmetricher Verbraucher, Dreieckschaltung

Uleit = 400; % Volt
f = 50; % Hz
R = 8; % Reiheschalting mit L
L = 0.3;
cos_phi = 0.95;
% Zu berechnen sind:
% Leiterstr?me, gesamte Scheinleistung, Kapazit?t eines Kondensators

om = 2*pi*f; % Kreisfrequenz
Xl = j*om*L;
Z = R + Xl;

% Leiterspannungen = Strangspannungen
U12 = Uleit * exp (j*30);
U23 = Uleit * exp (-j*90);
U31 = Uleit * exp (j*150);

% Stranstrome
I12 = U12/Z;
I23 = U23 /Z;
I31 = U31/Z;

% Leiterstr?me (gesuchten)
I1 = I12 - I31;
I2 = I23 - I12;
I3 = I31 - I23;
I1b = abs(I1)
I2b = abs(I2)
I3b = abs(I3)

% Komplexe Scheinleistung
Ileit = Uleit / Z;
S = sqrt(3) * Uleit * conj(Ileit)
P = Ileit * Z;

% Einf?gen eines Kondensators C parallel
% f?r Blindleistungkompensation

winkel = acos (cos_phi);

% tan_phi = (Ql + Qc)/P => Qc = tan_phi * P - Ql
Ql = Ileit^2 * Xl;
Qlb = abs (Ql);
Qc = tan (winkel) * P - Ql;
Qcb = abs (Qc);
% gesuchte Kapazit?t
C = -Qc / (om * Uleit^2); % negative Leistung
Cb = abs (C)

