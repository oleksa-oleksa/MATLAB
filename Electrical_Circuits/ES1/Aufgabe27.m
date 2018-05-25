clear
home

% Gegeben sind:
U0 = 20;
f = 50;
R1 = 200;
R = 10;
C = 5e-6;
L = 40e-3;

w = 2*pi*f; % Kreisfrequenz

% Gesamtwiderstand
Z_lr = R + j*w*L;
Z_c = 1/(j*w*C);
Z_clr = Z_lr*Z_c/(Z_lr + Z_c);
Z_ges = R1 + Z_clr;

% Mit gesampten Widerstand kann man
% den Strom I1 berechnen
I1 = U0 / Z_ges;
I1b = abs(I1)
I1phase = angle(I1)*(180/pi)


% Ströme mit Hilfe Stromteiler Regel berechnen
I2 = I1 * Z_lr / (Z_lr + Z_c);
I2b = abs (I2)
I2phase = angle(I2)*(180/pi)

I3 = I1 * Z_c / (Z_lr + Z_c);
I3b = abs (I3)
I3phase = angle(I3)*(180/pi)