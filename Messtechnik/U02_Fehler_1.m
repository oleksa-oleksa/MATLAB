% Bestimmung von Str?men und Spannungen
R1 = 4.7e3; % Ohm 
R2 = 6.5e3; % Ohm
R = 330; % Ohm
U = 30; % Volr V

% R1 ist zu R2 parallel geschaltet 

R12 = R1*R2 / (R1 + R2)

% Superposition
Rges = R + R12
I = (U / Rges)*1000

% Stromteiler
I1 = R2 * I / (R1 + R2)

I2 = R1 * I / (R1 + R2)

Ua = R12 * U / (R + R12)