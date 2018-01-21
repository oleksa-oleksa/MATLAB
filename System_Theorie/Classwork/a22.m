% Aufgabe 22
% + Simulink file
home
clear
close all

T = 10;
R = 1e3;
C = T / R;
s = tf('s');

G = 1 / ((1 + s * T)*(1 + s * T))

[A, b, c, d] = linmod('a22_sim')

G_all = ss(A, b, c, d);

bode(G, G_all)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                