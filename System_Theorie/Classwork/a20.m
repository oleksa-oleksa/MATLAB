% Aufgabe 20
home
clear
close all

% part G1
% System as LTI-Object
num = [1 20 24];
dem = [2 8 16 0];

lti_G1 = tf(num, dem);

w = logspace(-2, 4, 200);

[abs1, angle1] = bode(lti_G1, w); % returns 3D-Array

% extracts vectors from 3D-Array
G1_abs = reshape(abs1, [1  length(w)]);
G1_abs = 20 * log10(G1_abs);
G1_angle = reshape(angle1, [1  length(w)]);

% semilogx plot data as logarithmic scales for the x-axis.
subplot(2, 2, 1);
semilogx(w, G1_abs)
grid minor
title('G1')
subplot(2, 2, 3);
semilogx(w, G1_angle)
grid minor
title('G1')

%=============================================
% Part G2
s = tf('s');
G2 = (4*s^2 + 13*s + 20) / ((2*s^2 + 8)*(s + 1));
[abs2, angle2, w2] = bode(G2); % returns 3D-Array

G2_w = reshape(w2, [1 length(w2)]);
G2_abs = reshape(abs2, [1  length(w2)]);
G2_abs = 20 * log10(G2_abs);
G2_angle = reshape(angle2, [1  length(w2)]);


subplot(2, 2, 2);
semilogx(w2, G2_abs)
grid minor
title('G2')
subplot(2, 2, 4);
semilogx(w2, G2_angle)
grid minor
title('G2')

%=============================================
% Part G3
figure(2)
s = tf('s');
G3 = exp(-s*5) / (1 + s*s + s);
title('G3')
bode(G3)


%================================
% Elementerkennlinie zeichnen
% Zerlegung des Systems in die V-Normallform
figure(3)
tf2vn(num, dem);
G1 = (s*s + 20*s + 24) / (2*s^3 + 8*s*s + 16*s);
G1_a = 1 / s;
G1_b = 1 + 0.053425*s;
G1_c = 1 + 0.77991*s;
G1_d = 1 + 2*0.70711*0.35355*s + 0.125*s^2;
title('G1 elementar Kennlinie')
bode(G1, G1_a, G1_b, G1_c, G1_d)