clear
close all
home
% Draw signals and find the energy
%=============

% Energy in signal processing terms - 
% the computation of the area under the square of the function

%= PLOT SETTINGS ==
T = 2; % second
t_start = -3;
dt = 0.001;
t_end = 10;
t = t_start : dt : t_end;
%= END

% Part a 
s_1 = sigma_(t).*exp(-t/T);
E_1 = dt * sum(s_1.^2)
% using the subplot function -
% display multiple plots in different subregions of the same window.
subplot(2,3,1); % 2 rows, 3 columns, place into the first cell
% plot(t,s, linewidth, T)
plot(t, s_1, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on

% Part b 
s_2 = sigma_(t/2 - T);
subplot(2,3,2); 
plot(t, s_2, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on

% Part c 
s_3 = (t - T).*sigma_(t - T);
subplot(2,3,3); 
plot(t, s_3, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on

% Part d 
s_4 = (sigma_(t) - sigma_(t-4)).*cos(((2*pi)/8)*(t-2));
subplot(2,3,4); 
plot(t, s_4, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
E_4 = dt * sum(s_4.^2) 

% Part e 
s_5 = sigma_(T-t);
subplot(2,3,5); 
plot(t, s_5, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on

% Part f 
s_6 = 2 * sigma_(1-t.^2);
subplot(2,3,6); 
plot(t, s_6, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
E_6 = dt * sum(s_6.^2) 
