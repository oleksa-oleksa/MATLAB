clear
home
close all

% Komplexe Zahlen graphish stellen
% Geben Betrag und Phasenwinkel
% Berechnen verschiedene Werten mit Komp.Zahlen

% Gegen sind:
z1 = 2.0 + j * 2.0;
z2 = 4.0 - j * 3.0;
z3 = -5.0 + j * 2.0;
z4 = -1.0 - j * 7.0;

% Zeichen
compass([z1, z2, z3, z4])

% Betrag berechnen fur jeden komplexe Zahl
z1b = abs (z1)
z2b = abs (z2)
z3b = abs (z3)
z4b = abs (z4)

% Phasenwinkel berechnen
z1p = angle(z1)
z2p = angle(z2)
z3p = angle(z3)
z4p = angle(z4)

% a) Komplexe Zahlen addieren
za = z1 + z2
zab = abs (za);
zap = angle(za)*(360/(2*pi));

% b)
zb = z1 * z3
zbb = abs (zb);
zbp = angle(zb)*(360/(2*pi));

% c)
zc = z2 / z3
zcb = abs (zc);
zcp = angle(zc)*(360/(2*pi));

% d)
zd = z1 * (z2 + z3) / z4
zdb = abs (zd);
zdp = angle(zd)*(360/(2*pi));

figure(2)
compass([za,zb,zc,zd])


% Zeigen Zahlen in der Eurelichen Form
% zaEurl = 6.08*e^-9,46
% zbEurl = 15,23*e^156,80
% zcEur = 0,92*e^164,93
% zdEurl = 0,56*e^8,13



