% Aufgabe 15
home
clear
close all

% Polynom as a Vector
num = 10
dem = [1 0.6 1.05 0.1]

% sys = tf(Numerator,Denominator) creates a continuous-time transfer function 
% with numerator(s) and denominator(s) specified by Numerator and Denominator. 

% Use tf to create real- or complex-valued transfer function models (TF objects)
lti_tf = tf(num, dem);

% a,b,c,d] = ssdata(sys) extracts the matrix (or multidimensional array) data A, B, C, D from the state-space model (LTI array) sys. 
[A, b, c, d] = ssdata(lti_tf)

zstm = ss(lti_tf)
