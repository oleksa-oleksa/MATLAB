clear
close all
home

% Gegeben sind:
% Parallel-schwingkreis
Zk = 1.6e3; % Kennwiderstand
f0 = 10e3;
Q = 80; % G?te

% Zu bestimmen sind L, C, R und b

Yk = 1 / Zk; % Kennleitwert
om0 = f0*2*pi;

C = Yk / om0

L = Zk / om0

G = Yk/Q;

R = 1/G

% Brandbreite
om45p = sqrt(om0^2 + (om0/(2*Q))^2) + om0/(2*Q)
om45n = sqrt(om0^2 + (om0/(2*Q))^2) - om0/(2*Q)

b = (om45p - om45n)/(2*pi)

btest = om0 / (2*pi*Q)