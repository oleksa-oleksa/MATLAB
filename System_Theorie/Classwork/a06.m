clear
close all
home
% Corellation-function. When phi != 0 ?
%=============

%= PLOT SETTINGS ==
T = 2;
T0 = 4 % Time from the task
a = 5 % Amplitude from the task
t_start = -5;
dt = 0.001;
t_end = 5;
t = t_start : dt : t_end;
t2 = 2*t_start : dt : 2*t_end;
%= END

u_t = a*(sigma_(t) - sigma_(t-T0));
g_t = 1/T * sigma_(t).*exp(-t/T);
y_t = dt*conv(u_t, g_t);

subplot(3,1,1); 
plot(t, u_t, 'Linewidth', 2);
subplot(3,1,2); 
plot(t, g_t, 'Linewidth', 2);
subplot(3,1,3);
plot(t2, y_t, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
