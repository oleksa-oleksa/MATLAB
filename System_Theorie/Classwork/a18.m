% Aufgabe 18
home
clear
close all

% G(s) 
s = tf('s');

% System description:
sys = (3*s + 12)/(((s*s) + 2*s +4)*(s + 6));

% Shows Polls and Nulls
pzmap(sys)

% H(s) from G(s) 
H = sys * (1/s)

% partial fraction decomposition from H(s) 
[z , n] = tfdata(H);
[r, p ,k] = residue(z{1,1}, n{1,1});

% r p k show
r
p
k

% Term mit Polst bei s= -6 abziehen (siehe notiz)
H1 = H - r(1)/(s - p(1))

% Compare with Sprungantwort (step response)
figure(2)
impulse(H, H1)