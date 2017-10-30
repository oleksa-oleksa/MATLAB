clear
close all
home

% Gegeben sind:
% Parallelschaltung
 R =  1.4e3;
 L = 0.2e-3;
 C = 100e-12;
 
 om = 1 : 5 : 100;
 % Z1 = R + (1/(j*om*C));
 % Xl = j*om*L;
 Z = ((j*om*L) * (R + 1/(j*om*C))) / ((j*om*L) + (R + 1/(j*om*C)));
 plot (Z, om)