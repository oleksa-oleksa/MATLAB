% Regelungstechnik
% Aufgabe 3
home
clear
close all

s = tf('s')
Gs = (1 + s/10) / (1 + s/60);

figure(1)
title('Gs Aufgabe 3')
bode(Gs)