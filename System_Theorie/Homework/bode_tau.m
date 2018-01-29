home
clear
close all

G = tf([2e-3, 0], [2e-3, 1]);
t = linspace(0, 10, 500);
u = 1-exp(-t/8);
lsim(G, u, t);