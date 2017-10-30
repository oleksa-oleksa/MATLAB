clear
home

% Berechnen Sie die Ersatzquelle für den rechts der Klemmen A-B

R1 = 1e3; % Alle R sind in Ohm
R2 = 10;
R3 = 70;
R4 = 40;
U01 = 20; % Alle U sind in Volt
U02 = 60;
U03 = 100;

% ===========================

% Berechnung von Ul mit Uberlagerungsprinzip
R134 = 1 / (1 / R1 + 1 /R3 + 1 / R4);

UL1 = U01 * R134 / (R2 + R134);

%============================
R124 = 1 / (1 / R1 + 1 /R2 + 1 / R4);

UL2 = U02 * R124 / (R3 + R124);

%============================
R123 = 1 / (1 / R1 + 1 / R2 + 1 / R3);

UL3 = U03 * R123 / (R4 + R123);

UL = UL1 + UL2 + UL3

%============================
% Berechnung von Ik mit Uberlagerungsprinzip
Ik1 = U01 / R2;
Ik2 = U02 / R3;
Ik3 = U03 / R4;
Ik = Ik1 + Ik2 + Ik3

Rges = 1 / (1/R1 + 1/R2 + 1/R3 + 1/R4)

%=========================

Uers = UL
Rers = Rges
UL/Ik

R = 0 : 5 : 500;
U = Uers * R./(R + Rers);
plot (R, U);


