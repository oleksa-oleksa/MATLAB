% Regelungstechnik
% Aufgabe 8
home
clear
close all

s = tf('s')
Gs = 800000 / ((s + 10)*(s + 80)*(s + 100));

% From Task 5_1. Bode Diagram plot
% a: Bode Diagramm
figure(1)
title('Gs Aufgabe 5')
bode(Gs)
grid on

% Die Regelstrecke soll mit einem PI-Regler in ihren Eigenschaften verbessert werden, 
% das verwendete Messglied hat die Übertragungsfunktion GM(s) = 1.

% b: Dimensionieren Sie die Zeitkonstante des Reglers so, 
% dass ein Überschwingen von maximal 20% entsteht und der Regelvorgang im Wesentlichen 
% in 0,072 sek. abgeschlossen ist.

% Werte aus vorgegegene Bode Diagramm ablesen:
% omega_c : wenn 0Db
omega_c1 = 80;

% Dimensionieren:
Mp = 0.2;
Tset = 0.072;

% Berechnung:
d = sqrt(log(Mp)^2 / (pi^2 + log(Mp)^2));
alpha = atan(sqrt(1 - d^2) / d);


