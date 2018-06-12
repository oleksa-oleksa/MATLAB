home
clear
close all

% Labor 3. Simulation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ML = 0;
R = 3.71;
Cr = 7.2352*10^-6;
L = 353.29*10^-6;
ke = 0.017;
km = 0.05;
J = 0.8e-5;
Ud = 0.7;
Rshunt = 1;

% Input Voltage
U_H = 15; % V aus Aufgabe
i_soll = 0.5; % A

% Formule for Simulink
% Transistors turned on:
% -U_H + R_S * I

% Transistors turned off => diods
% U_H - 2 * 0.7 - R_S * I% 

%  Total Function
% ((u && (i_soll >= 0)) * (U_H)) + ((!u && (i_soll >= 0)) * (-U_H-0.7*2)) + ((!u && (i_soll < 0)) * (-U_H)) + ((u && (i_soll < 0)) * (U_H+0.7*2))

% No export value for this assigment
% No Table for this assigment
% No Matlab Plot for this assigment
