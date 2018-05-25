clear
home

%Welcher Widerstand abhängig von R 
% wird in dem dargestellten Netzwerk zwischen den 
% Anschlussklemmen A und B sowie zwischen C und D gemessen?

R = 1; % Alle Widertände sind gleich

Rab = p (R, R + p (R, R + p (R, 2*R)))

Rac = p ( p (R, 2*R), R + p (R, 2*R))
