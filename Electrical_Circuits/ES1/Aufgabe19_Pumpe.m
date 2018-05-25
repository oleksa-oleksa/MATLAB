clear
home

% Verschiedene Werte fur Pimpe berechnen
U = 100;        % Volt
P = 500;        % Watt
d = 100;        % Meter
S = 5;          % Ampere/mm²
rcu = 0.01786;  % Ohm * mm²/m
etac = 95;      % Wirkungsgrad;


% Teil a) =======================
I = P/U;
A = I/S;
RL = rcu * 2*d/A;
UQ = RL * I + U

% Teil b) ========================
Pv = I^2 * RL;
RP = U/I;
eta = P / (P + Pv)

% Teil c) ======================
RLc = RP/0.95 - RP;
Ac = rcu * 2 * d / RLc

% Teil d) =====================
RPd = RL;
Id = UQ/2 * RL;
PPd = Id^2 * RL;
etad = RPd/(RPd+RPd)