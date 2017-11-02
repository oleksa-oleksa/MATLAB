clear
close all
home
% Corellation-function. When phi != 0 ?
%=============

%= PLOT SETTINGS ==
t_start = -5;
dt = 0.001;
t_end = 5;
t = t_start : dt : t_end;
t2 = 2*t_start : dt : 2*t_end;
%= END

s_1 = sigma_(t-1) - sigma_(t-3);
s_2 = sigma_(t-2) - 2*sigma_(t-3) + sigma_(t-4);

s_1_mirror = fliplr(s_1);

phi = dt*conv(s_1_mirror, s_2);

subplot(3,1,1); 
plot(t, s_1_mirror, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
subplot(3,1,2); 
plot(t, s_2, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
subplot(3,1,3);
plot(t2, phi, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
