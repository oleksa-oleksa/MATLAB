% Gegeben sind:
R = 100; % Ohm
Rm = 100; % Ohm
L = 9e-3; % mH
N = 500; % Windung
C1 = 230e-9; % nF
C2 = 66e-9; % nF

a = R*R/(L*L) - 2/(L*C1) - 1/(L*C2)
b = (C2 + C1) / (L*L*C1*C1*C2)

x1 = -a/2 + sqrt((a/2)^2 - b)
x2 = -a/2 - sqrt((a/2)^2 - b)

w01 = abs(sqrt (x1))

w02 = abs(sqrt (x2))

f01 = w01 / (2*pi)

f02 = w02 / (2*pi)