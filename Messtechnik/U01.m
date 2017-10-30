% Messtechnik
% Ubung 01

% 1.1 Kennlinie fur Widerstand R

Ir = [ 1.02 2.07 3.01 3.98 4.97 6.07 7.04 8.05 8.99 9.47];
Ur = [ 1.02 2.07 3.01 3.98 4.97 6.07 7.04 8.05 8.99 9.47];

% Graphik
figure 
title ('Kennlinie Widerstand R')
grid on, grid minor
hold on
xlabel('Ur'), ylabel('Ir')
plot(Ur, Ir, 'LineWidth', 2, 'DisplayName','Strom/Spannungs-Kennlinie ')

% 1.2. Siliziumdiode

Id = [0 0.29 0.87 1.50 2.27 3.08 3.87 4.29 4.72 5.19 5.61];
Ud = [0 0.704 1.196 1.508 1.779 2.001 2.179 2.264 2.341 2.421 2.489];

% Graphik
figure 
title ('Kennlinie Siliziumdiode')
grid on, grid minor
hold on
xlabel('Ud'), ylabel('Id')
plot(Ud, Id, 'LineWidth', 2, 'DisplayName','Strom/Spannungs-Kennlinie', 'Color', [0.8 0 0])


% 1.3. Z-Dioide
Iz = [-17.5 -15 -10 -5 -0.75 -0.5 0 0.5 1 2 3 4];
Uz = [-5.58 -5.57 -5.51 -5.47 -5.44 -5.41 -4.56 0.692 0.721 0.750 0.764 0.775];

% Graphik
figure 
title ('Kennlinie Z-Diode')
grid on, grid minor
hold on
xlabel('Uz'), ylabel('Iz')
plot(Iz, Uz, 'LineWidth', 2, 'DisplayName','Strom/Spannungs-Kennlinie', 'Color', [0 0.8 0])

% ===============================================

% 2.1 Ideale Spannungsquelle
Iiq = [50 100 150 200];
Uiq = [9.92 9.86 9.80 9.74];

% Graphik
figure 
title ('Belastungslinie')
grid on, grid minor
hold on
xlabel('I'), ylabel('U')
plot(Iiq, Uiq, 'LineWidth', 2, 'Color', [0 0.3 0.7])

% 2.2 Realle Spannungsquelle

Irq = [50 100 125 150 175 200];
Urq = [9.32 8.68 8.37 8.04 7.73 7.41];

% Graphik
figure 
title ('Belastungslinie')
grid on, grid minor
hold on
xlabel('I'), ylabel('U')
plot(Irq, Urq, 'LineWidth', 2, 'Color', [0.6 0 0.7])

% 3.1 Reele Stromquelle

Urst = [5 10 15 20 25 30];
Irst = [104.0 103.5 103.4 103.1 102.6 102.4];

% Graphik
figure 
title ('Belastungslinie')
grid on, grid minor
hold on
xlabel('U'), ylabel('I')
plot(Urst, Irst, 'LineWidth', 2, 'Color', [0.3 0.6 0.7])


