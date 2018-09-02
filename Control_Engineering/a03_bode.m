% Regelungstechnik
% Aufgabe 3
home
clear
close all

% Theoretical part
w = sqrt(600)
T1 = 1/10;
T2 = 1/60;
phi_rad = atan(w*T1) - atan(w*T2)
phi_deg = atand(w*T1) - atand(w*T2)

% s = tf('s') to specify a TF model 
% using a rational function in the Laplace variable, s.
s = tf('s')
Gs = (1 + s/10) / (1 + s/60);


% Task 3_2. Bode Diagram plot
figure(1)
title('Gs Aufgabe 3')
bode(Gs)

% Step response of dynamic system
figure(2)
step(Gs)
grid on