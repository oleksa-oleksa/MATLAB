clear
close all
home
% Corellation-function. When phi != 0 ?
%=============

%= PLOT SETTINGS ==
T = 2;
T0 = 4 % Time from the task
a = 5 % Amplitude from the task
t_start = -10;
dt = 0.001;
t_end = 10;
t = t_start : dt : t_end;
t2 = 2*t_start : dt : 2*t_end;
%= END

u_t = a*(sigma_(t) - sigma_(t-T0));
u_t_moved = a*(sigma_(t-T) - sigma_(t-T-T0));
y_t = dt*conv(u_t, u_t_moved);


plot(t2, y_t, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
