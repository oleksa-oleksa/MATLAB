% Aufgabe 14
% ?betragungsfunktion
% Found for the LTI-Systems their transfer functions
%
home
clear
close all

% x'(t) = A * x(t) + b * u(t)
% y(t) = c * x(t) + d * u(t) 

% Matrix
A = [-5 1; 1 0]; % System parameter A for x1 and x2
b = [1; -1]; % Parameter with u(t)
c = [0 1];
d = 0;

% LTI Objects schould be created with a ss-function
% Use ss to create state-space models (ss model objects) with real- or complex-valued matrices 
% or to convert dynamic system models to state-space model form.
% sys = ss(A,B,C,D) creates a state-space model object representing the continuous-time state-space model
% x = Ax+Bu
% y = Cx+Du
lti = ss(A, b, c, d);

% Use tf to create real- or complex-valued transfer function models (TF objects) or 
% to convert state-space or zero-pole-gain models to transfer function form.
lti_tf = tf(lti);
 
% [num,den] = tfdata(sys) returns the numerator(s) and denominator(s) of the 
% transfer function for the TF, SS or ZPK model.
% num and den have as many rows as outputs and as many columns as inputs.
[z, n] = tfdata(lti_tf); % cell-Array

% numerator and denominator (zaehler und nenner)
z_lti_tf = z{1, 1}
n_lti_tf = n{1, 1}