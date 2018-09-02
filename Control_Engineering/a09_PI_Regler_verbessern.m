% Regelungstechnik
% Aufgabe 9

% Gegeben ist eine Regelstrecke mit der Übertragungsfunktion
% Gs =  10 / ((1 + s/10)*(1 + s/100))

% Die Regelstrecke soll mit einem PI-Regler in ihren Eigenschaften verbessert werden, 
% das verwendete Messglied hat die Übertragungsfunktion GM(s) = 1.

% a)Erstellen Siedas Bode-Diagramm der Regelstrecke mit 
% Hilfe asymptotischer Näherungen.

s = tf('s');
% Gegebene Ubertragunsfunktion
Gs =  10 / ((1 + s/10)*(1 + s/100))
figure(1)
title('Gs Aufgabe 9')
bode(Gs)
grid on

% Manual Bode zeichnen, berechnungen
V = 20 * log10(10);
w1 = 10; % von (1 + s/10 ablesen)
w2 = 100; % von (1 + s/100 ablesen)
% Zeichnen: Linie1: 20db bis w1, dann -20db / dec
%           Linie2: 20db bis w2, dann -20db / dec
%           Insgesampt: -20db ab w1 und dann -40db ab w2

% Von Dozent:
% Verbessern:
Mp = 0.1;
phi_R_SOLL = 69 - 106 * Mp; % grad!
tr = 0.048;
wc = 1.44 / tr;
[M, phi] = bode(Gs, wc); % phi in grad!

phi_R_IST = phi - (-180);

% phi von regler berechnen
% das muss negativ sein

phi_R = phi_R_SOLL - phi_R_IST;

TN = tan ((phi_R + 90) * pi / 180) / wc;

G_strich = (1 + s * TN) / s;
L_strich = G_strich * Gs;

% TN = 1; Lösungsweg 2 zu grob 
% Wer geben die Gischwindigkeit gegen
% Stabilität auf
% Das System is zwar schnell hier, aber brauch ~ Sekunden um SOLL zu
% erreichen

% Was soll man mit TN machen?

% In Aufgabe steht: Erstellen Sie zusätzlich zu den vorhandenen Kurven 
% zum direkten Vergleich sowohl im Bode-Diagramm wie im Diagramm 
% zur Sprungantwort die Kurven für einen PI-Regler 
% mit der 10 fachen Zeitkonstante
% also neue TN = TN * 10;

TN = TN * 10;
% dann kriegen wir Mp fast 70% und können wir den richtigen Regler nicht
% entwerfen
