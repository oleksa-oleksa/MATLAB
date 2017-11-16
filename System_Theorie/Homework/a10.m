% Task 10 : Fourier Transformation
home
clear
close all

%= PLOT SETTINGS ==
t_start = 0;
dt = 0.1;
t_end = 50;
t = t_start : dt : t_end;
%= END

% rectangular pulse signal given in the task
s = 3*(sigma_(t)-sigma_(t-2));
plot(t, s, 'Linewidth',2);

% ===== Fourie ====== 
% Y = fft(X) computes the discrete Fourier transform (DFT) 
% of X using a fast Fourier transform (FFT) algorithm
S = fft(s)*dt;

% Y = fftshift(X) rearranges a Fourier transform X 
% by shifting the zero-frequency component to the center of the array.
S = fftshift(S); 
%=============
% Vector for frequency
fr_max = 1/(2*dt);
df = 1/t_end;
f = -fr_max : df : fr_max;
omega = 2 * pi * f; % spectrum in omega

% Compensation dt/2
S_compensated = S.*exp(-j*omega*(dt/2));

% Plot the s, abs and angle 
subplot( 3, 1, 1);
plot(t, s, 'Linewidth',2);
subplot( 3, 1, 2);
plot(omega, abs(S_compensated), 'Linewidth',2);
subplot( 3, 1, 3);
plot(omega, angle(S_compensated), 'Linewidth',2);

