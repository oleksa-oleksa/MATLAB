%-----------------------------------------------------------------------
% Musterlösung Übung Systemtheorie
% © Prof. Dr. Volker Sommer, Beuth Hochschule für Technik Berlin
%-----------------------------------------------------------------------

clear
home
close all

T = 0.1;                           % Abtastzeit
z = [1];
n = conv([1 0],[1 1]);
G = tf(z,n)                        % kontinuierliche Übertragungsfunktion

% Diskretisierung mittels Sprunginvarianztransformation
Gz_1 = c2d(G,T,'zoh')
% Diskretisierung mittels Tustinscher Näherung
Gz_2 = c2d(G,T,'tustin')

% Vergleich der Sprungantworten
t = 0:0.01:20*T;                    % "kontinuierlicher" Zeitvektor
y = step(G,t);
plot(t,y,'b');
hold on
td = 0:T:20*T;                      % diskreter Zeitvektor
y1 = step(Gz_1, td);
y2 = step(Gz_2, td);
stairs(td,y1,'r');                  % Treppenfunktion zeichnen
stairs(td,y2,'g');
