clear
home

% Berechnen Sie den Strom I3, der durch den Widerstand R3
% in dem dargestellten Netzwerk flieﬂt

% Gegebene Werte sind:

U01 = 5 % Volt
U02 = 10 % Volt
I0 = 0.002 % mA
R1 = 50 % Ohm
R2 = 100 % Ohm
R3 = 150 % Ohm
R4 = 200 % Ohm
R5 = 250 % Ohm

% ====================

U0 = I0*R2;

% 5 Zweigstrom = 5 Gleichungen
% 3 Knoten = K-1 = 2 Gleichungen
% 3 Maschengleichungen

R_ = [-1 -1 -1 0 0; -R1 R2 0 0 0; 0 0 1 -1 -1; 0 -R2 R3 R4 0; -R1 0 R3 0 R5 ]

U_ = [ 0; U01-U0; 0; U0; U01-U02 ]

I_ = R_ \ U_

