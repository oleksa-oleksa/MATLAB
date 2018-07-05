% PI-Regler

clear
close all
home

Cr = 7.2352*10^-6;
k_m = 22.46e-3; % Nm/A
k_e = 23.75e-3; % Vs
R_A = 3.22; % Ohm
R_S = 1; % Ohm
L = 618e-6; % H

% Werte die veraendert wurden
c_r = 1.15e-6; % Nms
J = 5.29e-6;

w_soll = 250; % rad/s
% 80 inc


% Die Werte von Aufgabestellung im Labor (von 29.06.2018)
w_0 = 25;
%w_0 = 2 * pi * 50;
D = 0.7;

% kp should be new for PI Control Block
k_p = (2 * D * w_0 * J * R_A - k_e * k_m- R_A * Cr) / k_m
k_i = (w_0*w_0 * J * R_A) / k_m 


% Settings for Picoscope
% 50 ms/div
% +- 5V
% Einzeln Trigger


% load the file from PicoScope MAT:
%============================
%load motor_picoscope_PI_Regler.mat
%motor_picoscope = (1:Length)*Tinterval - 0.005;
%motor_picoscope = [motor_picoscope',A];

