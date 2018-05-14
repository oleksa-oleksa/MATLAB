% Regelungstechnik
% Aufgabe 1
home
clear
close all

%= PLOT SETTINGS ==
T = 1/5; % tau from the task, time constant
%= END

% Polynom as a Vector
num = [ 0 0 1]
dem = [T 1 0] % Ts^2 + s in Nenner

Y_s = tf(num, dem)
step(Y_s);
xlabel('Time'), ylabel('Amplitude'), title('Signal'), grid on

% Generate logarithmically spaced vector
% y = logspace(a,b,n) generates n points 
% between decades 10^a and 10^b.
w = logspace(-2, 2, 200);

bode(Y_s, w)
grid minor
title ('Frequency')
