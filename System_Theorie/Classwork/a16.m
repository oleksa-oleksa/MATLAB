% Aufgabe 16
home
clear
close all

% G1
nom1 = [0 0 1 2]
dem1 = [1 4 3 0]

% G2
nom2 = [0 4 20 24]
dem2 = [2 8 16 0]

% G2
nom3 = [0 0 0 1]
dem3 = [1 1 0 0];

% Produkform
[null1, pol1, k1] = tf2zp(nom1, dem1) % k ist Verstärkung
                                   % null - Nullstelle
                                   % pol - Polstelle
[null2, pol2, k2] = tf2zp(nom2, dem2)
[null3, pol3, k3] = tf2zp(nom3, dem3)

% Partialbrichform
[r1, p1, m1] = residue(nom1, dem1)
[r2, p2, m2] = residue(nom2, dem2)
[r3, p3, m3] = residue(nom3, dem3)

% V-Normalform
tf2fn(nom1, dem1)
tf2fn(nom2, dem2)
tf2fn(nom3, dem3)

