% 1 Aufgabe
R_1 = 10; %Ohm
C_1 = 318e-6;
f = 50;

%==============

w = 2*pi*f;

Zc = 1/(j*w*C_1)

Z_1 = R_1 + Zc
Z_1_b = abs (Z_1)

Z_1_winkel = angle(Z_1)*(360/(2*pi))
Z_1_phi = atan (10/10)* (180 /pi)

smt = abs ((Z_1) *exp(j*-45))

figure('Name', 'Schaltung 1'), title ('Schaltung 1')
grid on, grid minor, axis ([-15 15 -15 15])
xlabel('Real'); ylabel('Imag');
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
hold on
quiver(0, 0, real(Z_1),imag(Z_1), 0, 'Color', [1 0 0] ,'LineWidth', 2)


%============
% Komplexer Spannungsteiler

Z1_2 = 100 + j*50;
Z2_2 = 80 - j*110
U0 = 220

U2 = U0 * abs(Z2_2) / abs(Z1_2 + Z2_2)

U22 = 220 * 136,01 / (118 + 136)

ZU = 17600 -j*24200;
Zges = 180 - j*60;

U_2_k = ZU /Zges
U_2_phi = atan (-91.4/129.13)* (180 /pi)
U_2_phi_2 = angle(U_2_k)*(360/(2*pi))

s2t = abs ((U_2_k) *exp(j*-35.54))



