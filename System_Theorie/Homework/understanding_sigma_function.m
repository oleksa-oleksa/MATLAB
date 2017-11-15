clear
close all
home

% this is a file created to understand the properties of the sigma-function for the theory of signals
% created by Oleksandra Baga 15.11.2017

%= PLOT SETTINGS ==
t_start = -5;
dt = 0.001;
t_end = 5;
t = t_start : dt : t_end;
%= END

% Here are sigma-functions with different agruments and combinations

%signal_with_sigma = sigma_(t+1); % Positive occurs EARLIER
%signal_with_sigma = sigma_(t-1); % Negative is DELAY

% Commutative property works
% signal_with_sigma = sigma_(t+1) + sigma_(t+3)
%signal_with_sigma = sigma_(t+3) + sigma_(t+1)

%signal_with_sigma = sigma_(t+3) + 2*sigma_(t+1)
%signal_with_sigma = 3*sigma_(t-3)
%signal_with_sigma = 3*sigma_(t-3) + 2*sigma_(t+1)

%signal_with_sigma = -2*sigma_(t+4) + 5*sigma_(t+3) - 4*sigma_(t-1) + 3*sigma_(t-3);

% negative amplitude - mirror function understanding
%signal_with_sigma = sigma_(-2-t); % same as t-(-2) => t+2
signal_with_sigma = sigma_(-2-t);
%signal_with_sigma = sigma_(-(t-3));


plot(t, signal_with_sigma, 'Linewidth', 2);
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
axis([t_start t_end -5 5])