% Aufgabe 17
home
clear
close all

% G1
nom1 = [1 4];
dem1 = [1 3];
% G2
nom2 = [1 5 4];
dem2 = [1 4 8 0];
% G2
nom3 = [2 3];
dem3 = [1 2 -3];

tf_G1 = tf(nom1, dem1);
tf_G2 = tf(nom2, dem2);
tf_G3 = tf(nom3, dem3);

h1 = 1 * step(tf_G1);
h2 = 1 * step(tf_G2);
h3 = 1 * step(tf_G3);

subplot(3, 2, 1);
plot(h1);
subplot(3, 2, 3);
plot(h2);
subplot(3, 2, 5);
plot(h3);
subplot(3, 2, 2);
pzmap(tf_G1);
subplot(3, 2, 4);
pzmap(tf_G2);
subplot(3, 2, 6);
pzmap(tf_G3);
