% Regelungstechnik
% Aufgabe 5
home
clear
close all

s = tf('s')
Gs = 800000 / ((s + 10)*(s + 80)*(s + 100));

% Task 5_1. Bode Diagram plot
figure(1)
title('Gs Aufgabe 5')
bode(Gs)
grid on