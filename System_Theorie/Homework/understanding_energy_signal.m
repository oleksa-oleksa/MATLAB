clear
close all
home

% this is a file created to understand the properties energy for the theory of signals
% created by Oleksandra Baga 15.11.2017

%= PLOT SETTINGS ==
t_start = -10;
dt = 0.001;
t_end = 10;
t = t_start : dt : t_end;
%= END

%s1 = (3*t)/4;
s1 = t.*(sigma_(t)-sigma_(t-3));
%s1 = ((3*t)/4).*(sigma_(t)-sigma_(t-4));
e1 = s1.^2;

plot(t, e1, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
axis([t_start t_end -50 50])