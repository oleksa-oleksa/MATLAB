clear
home

% Mittlere Temperatur berechnen,
% auf welche die Wicklung aufgrund fliessenden Strom
% erwarmt sich hat.

R20 = 160; % Widerstand bei 20C
Rv = 188; % Neuer Widerstand
Alpha20 = 0.004; %C^-1

v = ((Rv - R20) / (R20 * Alpha20)) + 20