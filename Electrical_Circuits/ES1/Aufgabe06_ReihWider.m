clear
home

% Teilspannungen in der Reihenschaltungen berechnen

% R1, R2, R3 sind drei Widerstände in der Reihenschaltung
R1 = 10;
R2 = 20;
R3 = 50;
U = 20; % Spannung Volt

Rges = R1 + R2 + R3; % Gesamter Widerdstand um Strom zu berechnen

I = U / Rges; % Strom um Teilspannuntgen zu berechnen

% Berechnung der Teilspannungen
U1 = R1 * I
U2 = R2 * I
U3 = R3 * I


