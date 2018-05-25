clear
home

% Durch Strommessgerat Widerstand berechnen

% Gegeben sind:
Umax = 0.2; % Volt
Imax = 2; % Amper
Imess = 10;

%======================
Ri = Umax / Imax

Ishunt = Imess - Imax;

Rshunt = Umax / Ishunt
