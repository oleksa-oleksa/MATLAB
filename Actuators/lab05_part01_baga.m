home
clear
close all

% Labor 5. Simulation P-Regler
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ML = 0;
R_A = 3.71;
Cr = 7.2352*10^-6;
L = 353.29*10^-6;
ke = 0.017;
km = 0.05;
J = 0.8e-5;
Ud = 0.7;
R_S = 1;

w_soll = 450; % rad/s

% load the file from PicoScope MAT:
%============================
load motor_picoscope_PRegler.mat
motor_picoscope = (1:Length)*Tinterval - 0.005;
motor_picoscope = [motor_picoscope',A];

% No export value for this assigment
% No Table for this assigment
% No Matlab Plot for this assigment
