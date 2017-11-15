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
s2 = t.*(sigma_(t-2)-sigma_(t-4));
s3 = s1 - s2;
e_total = s3.^2;
E = dt * sum(e_total)

s4 = s1.*s2;
corr = dt * sum(s4)

plot(t, s1, 'Linewidth', 2);
hold on
plot(t, s2, 'Linewidth', 2);
%plot(t, s3, 'Linewidth', 2);
%hold on
%plot(t, e_total, 'Linewidth', 2);
%hold on
plot(t, s4, 'Linewidth', 2);
hold on
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
axis([t_start t_end -20 20])