clear
home

% Berechnen Sie für den dargestellten aktiven Zweipol 
% die Ersatzspannungs- sowie die Ersatzstromquelle 
% bezüglich der Klemmen AB

% Gegeben Werten sind:
R1 = 50; % Ohm
R2 = 20; % Ohm
R3 = 30; % Ohm
U01 = 12; % Volt
U02 = 5; % Volt

% ==============================
R23 = R2 + R3;

% Leerlaufspannung
UL1 = U01 * (R23 / (R1 + R23));
UL2 = U02 * (R1 / (R1 + R23));
UL = UL1 + UL2

% Kurzschlussstrom
Ikurz1 = U01 / R1;
Ikurz2 = U02 / R23;
Ikurz = Ikurz1 + Ikurz2 % mA

Rers = UL / Ikurz

R_ = [-1 -1; -R1 R23];
U_ = [0; U01-U02];
I_ =  R_ \ U_;

% Die Ströme aus Matrix sind: 
I1 = -0.07;
I2 = 0.07;

ULcheck = U01 + I1*R1
