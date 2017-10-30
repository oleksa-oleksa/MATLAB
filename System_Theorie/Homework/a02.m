clear
close all
home
% Draw sinus signal
%=============
inc = 0.01;
t = 0 : inc : 5;

s = 2*sin(2*pi*t - pi/2);
plot(t,s)
xlabel('Amplitude'), ylabel('Time'), title('Sinus function'), grid on
