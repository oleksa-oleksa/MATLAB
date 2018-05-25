clear
home

% Leistung von Motor der Pumpe und
% Strom, der durch der Wicklung des Motors fliesst

Vol = 80; %m^3 des Wassers pro Stunde
t = 3600; % eine Stunde in Sekunden
g = 9.81; % eine konstante = die Beschleunigung
h = 5; % m, die Hoehe des belegtes Becken
U = 200; % Volt, die Spannungsquelle fuer Motor

Grad = 0.8; % eine gegebene Mass fuer Effiziens

m = 1000 * Vol; % masse des Wassers, um weiter in der Formel zu benutzen 

Pmec = (m * g * h ) / 3600;

Pel = Pmec / Grad % Leistung des Motor, die er vom Spannungsquelle ernnimmt

I = Pel / U % Strom, der durch der Wicklung fliesst