% Regelungstechnik
% Aufgabe 6
home
clear
close all

s = tf('s')
Gs = 160 / ((s - 40)*(s + 40));

% Task 6. Bode Diagram plot
figure(1)
title('Gs Aufgabe 6')
bode(Gs)
grid on