home
clear
close all

% Transform funktion for a DC Motor
% G(jw) = U_schunt / U_e
% G(jw) = R_schunt / (Rges + jwl)
% Laplace Transformation
% G(s) = R_shunt / (Rges * s)
% G(s) = 1 / (s + 4.22)

% Polynom as a Vector
%      s1 s0
num = [ 0 1]
dem = [1 4.22] 

%Create transfer function model
figure(1)
G_s = tf(num, dem);
b = step(G_s);
plot (b)
grid minor
title ('Step response')
grid on


w = logspace(-2, 2, 200);

figure(2)
bode(G_s)
grid minor
title ('Frequency')
grid on
