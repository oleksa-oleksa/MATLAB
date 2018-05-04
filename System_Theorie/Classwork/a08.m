clear
close all
home

% Model

R = 1e3 % Ohm
C = 1e-6 % Farad

Uc = 5 % Volt at t = 0

% signals
% u(t) = u_e(t) Input signal
% y(t) = u_a(t) Output signal
% Amount of state variables n = 1 => vector with one element

% Mesh rule
%U_c(t) = 1/(R*C) * U_e(t) - 1/(R*C) * Uc
% A_ = [- 1/(R*C)]
% b_ = [1/(R*C)]
% c_ = 1;

