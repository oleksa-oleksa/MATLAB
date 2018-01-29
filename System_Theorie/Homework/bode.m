% Aufgabe 19
home
clear
close all

% Generate logarithmically spaced vector
% y = logspace(a,b,n) generates n points 
% between decades 10^a and 10^b.
w = logspace(-3, 2, 200);

%G_w = (10./(j * w)).*(1 + j*w)./(1 + j * w/0.1);
%G_w = (j*w)./(1 + j*w);
%G_w = j*w;
%G_w = 1./(1 + j*w)
G_w = 1+0.02*j*w

G_abs = abs(G_w);
G_absDB = 20 * log10(G_abs);
G_angle = rad2deg(angle(G_w));

% semilogx plot data as logarithmic scales for the x-axis.
subplot(2, 1, 1);
semilogx(w, G_absDB)
grid minor
title ('Amplitude')
subplot(2, 1, 2);
semilogx(w, G_angle)
grid minor
title ('Frequency')
