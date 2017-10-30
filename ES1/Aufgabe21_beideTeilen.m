clear
home

R1 = 50;
R2 = 50;
R3 = 200;
R4 = 200;
L1 = 3e-3;
L2 = 10e-3;
C = 5e-6;
f = 50;

% Kreisfrequenz:
w = 2*pi*f;

% Komplexe Widerst?nde bestimmen
Z1 = 50;
Z2 = 50;
Z3 = 200;
Z4 = 200;

Xl1kom = j*w*L1;

Xl2kom = j*w*L2;
 
Xckom = 1/(j*w*C);
%Xckom = j*Xc;

% Widerst?nde an Zweige zusammenfassen
Z1ers = Z1 + Xl1kom;
Z2ers = Z2 + Xl2kom;

% Spannungen hat gleiche F
U1a = 30;
U2a = 30 * exp(i * 45 * (pi / 180));

% Z=5, K=3 --> 2 Knotengleichungen + 3 Maschengleichungen:
Z = [1 1 -1 1 0
    0 -1 0 -1 -1
    Z1ers 0 0 -R4 Xckom
    Z1ers 0 R3 0 0
    0 -Z2ers -R3 0 Xckom];
U = [0; 0; -U2a; -U1a; U1a];

I = Z \ U;

I1 = I(1)
I2 = I(2)
I3 = I(3)
I4 = I(4)
I5 = I(5)

% Zeitabh?ngige Str?me
t = linspace(0, 4 * 1/f ,500);

i1a = sqrt(2) * imag(I1 * exp(1i * w * t));
i2a = sqrt(2) * imag(I2 * exp(1i * w * t));
i3a = sqrt(2) * imag(I3 * exp(1i * w * t));
i4a = sqrt(2) * imag(I4 * exp(1i * w * t));
i5a = sqrt(2) * imag(I5 * exp(1i * w * t));

% plot(t, i1a, t, i2a, t, i3a, t, i4a, t, i5a) 

%=======================
% Teil b
% Welche Werte ergeben Str?me, falls die beiden Spannungen
% eine unterschidliche Frequenz zeigen

% Quelle U1 mit w
U1b = 30;
Zersb1 = Z1ers + R3 % Parallel geschaltet
Zersb2 = Z1ers + R4;
Z2ges = Zersb1 + Zersb2 + Xckom;

% Mit Rges kann man Iges berechnen
I2ges = U1b / Z2ges;
I1b1 = R3*I2ges/(Z1ers + R3)
I2b1 = Z1ers*I2ges/(Z1ers + R3)
I3b1 = Z4*I2ges/(Z2ers + R4)
I4b1 = Z2ers*I2ges/(Z2ers + R4)
I5b1 = I2ges

% Quelle U2 mit 3w
U2b = 30 * exp(i * 30 * (pi / 180));

Xl1kom3 = j*3*w*L1;
Xl2kom3 = j*3*w*L2;
Xckom3 = 1/(j*3*w*C);

Z1ers3 = R1 + Xl1kom3;
Z2ers3 = R2 + Xl2kom3;
Ers1_3 = (Z1ers3*R3)/(Z1ers3 + R3);
Ers2_3 = Xckom3 + Ers1_3;
Ers3_3 = Z2ers3*Ers2_3/(Z2ers3+Ers2_3);
Ers4_3 = R4 + Ers3_3;

% Mit Rges kann man Iges berechnen
I21ges = U2b / Ers4_3; 
I2b2 = I21ges*Z2ers3/(Ers3_3 + Z2ers3);
I3ges = I21ges*Ers3_3/(Ers3_3 + Z2ers3);
I4b2 = I21ges;
I5b2 = I3ges;
I1b2 = I3ges*Z1ers3/(Z1ers3 + R3);
I3b2 = I3ges*R3/(Z1ers3 + R3);

I1b = I1b1 + I1b2
I2b = I2b1 + I2b2
I3b = I3b1 + I3b2
I4b = I4b1 + I4b2
I5b = I5b1 + I5b2

% Zeitabh?ngige Str?me
t2 = linspace(0, 4 * 1/f ,500);

i1b = sqrt(2) * imag(I1b * exp(1i * 3 * w * t));
i2b = sqrt(2) * imag(I2b * exp(1i * 3 * w * t));
i3b = sqrt(2) * imag(I3b * exp(1i * 3 * w * t));
i4b = sqrt(2) * imag(I4b * exp(1i * 3 * w * t));
i5b = sqrt(2) * imag(I5b * exp(1i * 3 * w * t));

figure (2)
plot(t2, i1b, t2, i2b, t2, i3b, t2, i4b, t2, i5b) 
