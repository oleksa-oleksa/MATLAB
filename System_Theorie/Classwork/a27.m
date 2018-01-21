% Aufgabe 27
%-----------------------------------------------------------------------
% Musterlösung Übung Systemtheorie
% © Prof. Dr. Volker Sommer, Beuth Hochschule für Technik Berlin
%-----------------------------------------------------------------------

% verwendet die Simulink-Datei "SYT_A27_mod.mdl"

clear
home
close all

% Die rekursive Differenzengleichung kann direkt am Ausgang des Summationsgliedes
% abgelesen werden: y(k) = 3*y(k-1) + u(k)

% Bestimmung der Übertragungsfunktion
K = 3;
T = 1;
a27_sim	                            % Öffnen des Simulink-Modells
[A,b,c,d] = dlinmod('a27_sim')	    % zeitdiskretes Zustandsmodell aus Simulink-Modell erzeugen
sys_d = ss(A,b,c,d,T);                  % Erzeugen eines LTI-Objektes
Gz = tf(sys_d)                          % Umwandlung in z-Übertragungsfunktion

% Stoßantwort des Systems
k = 1:4;
g = impulse(Gz, k);
stem(k, g,'b', 'linewidth', 2)