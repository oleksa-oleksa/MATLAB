home
clear
close all

% Labor 3. Simulation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k_m = 22.46e-3; % Nm/A
k_e = 23.7e-3; % Vs
R_A = 3.22; % Ohm
R_S = 1; % Ohm
L = 575.20e-6; % H

% By playing at home:
% j= 5e-6 and c_r = 1e-6 will produce more soft graph

%c_r = 9.03e-6
c_r = 2.5e-6; % Nms -- looks good in the integrator

% zu messen im Labor (?)
%J = 1e-6; % Bsp Wert geschaetzt (!) -- looks good in the integrator
J = 5.5e-6; % Bsp Wert geschaetzt (!) -- looks good in the integrator
%J = 1e-7; % Bsp Wert geschaetzt (!)

% Input Voltage
U0 = 10; % V

% load the file from PicoScope MAT:
%============================
load motor_picoscope.mat
motor_picoscope = (1:Length)*Tinterval + 0.1 - 0.0015 - 0.0002;
motor_picoscope = [motor_picoscope',A];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Export the result in Latex:
export_value = J*1e6;
fid=fopen('task01_result.tex','wt');
fprintf(fid, "$%.2f$", export_value);
fclose(fid);

% No Table for this assigment
% No Matlab Plot for this assigment
