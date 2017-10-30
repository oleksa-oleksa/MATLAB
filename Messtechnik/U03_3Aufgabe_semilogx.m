close all
clear
home

R1 = 10e3;
R2 = 2.2e3;
C1 = 2.2e-9;
C2 = 68e-9;
f = 1e3;
U1 = 4;

w = 2*pi*f
Z_c1 = 1/(j*w*C1) 
Z_c2 = 1/(j*w*C2)

Z_1 = R1 * Z_c1 / (R1 + Z_c1)

Z_2 = R2 * Z_c2 / (R2 + Z_c2)

Z_2b = sqrt(116.80^2 + (-109.79)^2)

U_2_phi = atan (-0.2903/0.4904)* (180 /pi)

% =========

V1_1 = 20 * log10(0.0375)
V1_2 = 20 * log10(0.025)
V1_3 = 20 * log10(0.005)
V1_4 = 20 * log10(0.0225)

V2_1 = 20 * log10(0.0275)
V2_2 = 20 * log10(0.0275)
V2_3 = 20 * log10(0.03)
V2_4 = 20 * log10(0.0375)


w = [0.1 1 10 100]
V1 = [-28.51 -32.04 -46.02 -32.96];
phi1 = [12 18 29 43];

V2 = [-31.21 -31.21 -30.46 -28.52];
phi_2 = [3.6 3.6 7.2 0]

%==========================

w = [0.1 1 10 100]
V1 = [-28.51 -32.04 -46.02 -32.96];
phi1 = [12 18 29 43];

V2 = [-31.21 -31.21 -30.46 -28.52];
phi2 = [3.6 3.6 7.2 0]

figure('Name', 'Bode-Diagramm'), title ('Bode-Diagramm')
grid on, grid minor
xlabel('Frequenz in kHz'); ylabel('|V| in dB');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
semilogx(0, 0, w, V1, 'LineWidth', 2, 'DisplayName','Amplitudenverst?rkung')


figure('Name', 'Bode-Diagramm'), title ('Bode-Diagramm')
grid on, grid minor
xlabel('Frequenz in kHz'); ylabel('Phase (Grad)');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
semilogx(0, 0, w, phi1, 'LineWidth', 2, 'DisplayName','Phasenverschiebung')


% ==================

figure('Name', 'Bode-Diagramm'), title ('Bode-Diagramm')
grid on, grid minor
xlabel('Frequenz in kHz'); ylabel('|V| in dB');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
semilogx(0, 0, w, V2, 'LineWidth', 2, 'DisplayName','Amplitudenverst?rkung', 'Color', [0 0.8 0.7])


figure('Name', 'Bode-Diagramm'), title ('Bode-Diagramm')
grid on, grid minor
xlabel('Frequenz in kHz'); ylabel('Phase (Grad)B');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
semilogx(0, 0, w, phi2, 'LineWidth', 2, 'DisplayName','Phasenverschiebung', 'Color', [0 0.8 0.7])


