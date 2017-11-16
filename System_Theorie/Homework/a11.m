% A plot of the magnitude and phase of the Fourier transform of a function.
home
clear
close all

%= PLOT SETTINGS ==
t_start = 0;
dt = 0.1;
t_end = 100;
t = t_start : dt : t_end;
%= END

% rectangular pulse signal given in the task
s = 3*(sigma_(t)-sigma_(t-2));

% ===== Fourie ====== 
% Y = fft(X) computes the discrete Fourier transform (DFT) 
% of X using a fast Fourier transform (FFT) algorithm
S = fft(s)*dt;

% Y = fftshift(X) rearranges a Fourier transform X 
% by shifting the zero-frequency component to the center of the array.
S = fftshift(S); 

fr_max = 1/(2*dt);
df = 1/t_end; %change df to be smaller in order to make t_end bigger

% Vector for frequency
f = -fr_max : df : fr_max;
omega = 2 * pi * f;

% Compensation dt/2
S_compensated = S.*exp(-j*omega*(dt/2));
%========= SPECTRUM ============

%==== CASE 1
% The signal S will be squared
Y1 = S.^2;

% ===== CASE 2
% In time domain
y2 = dt*conv(s, s);
y2 = y2 (1 : length(s));
Y2 = fft(y2)*dt;
Y2 = fftshift(Y2);

% Plot the s, abs and angle 
% ====== Y1 ======
subplot( 3, 2, 1);
plot(omega, Y1, 'Linewidth',2);
subplot( 3, 2, 3);
plot(omega, abs(Y1), 'Linewidth',2);
subplot( 3, 2, 5);
plot(omega, angle(Y1), 'Linewidth',2);

% ====== Y2 ======
subplot( 3, 2, 2);
plot(omega, Y2, 'Linewidth',2);
subplot( 3, 2, 4);
plot(omega, abs(Y2), 'Linewidth',2);
subplot( 3, 2, 6);
plot(omega, angle(Y2), 'Linewidth',2);
