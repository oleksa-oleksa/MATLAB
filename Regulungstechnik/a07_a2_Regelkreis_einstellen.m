% Verschiedene Regelstrecken sollen mit Hilfe von Reglern eingestellt werden. 

% a)Bestimmen Sieden notwendigen Phasenrand φR und die Durchtrittsfrequenz ωc 
% der Übertragungsfunktion des offenen Regelkreises, wenn 

% 1. das Überschwingen maximal 40% betragen darf 
% und die Führungssprungantwort im Wesentlichen in 0.02 Sekunden den Endwert erreichen soll.

% Wie groß ist dann die Einstellzeit für das Erreichen des 5%-Bandes?

Mp = 0.4; % (20%)
Trise = 0.02; %s

% d - ? phi - ? w_c - ? Tset - ?

phi = 69 - 106 * Mp

% log(X) returns the natural logarithm ln(x)
d = sqrt(log(Mp)^2 / (pi^2 + log(Mp)^2))

% Approximation
% omega_c = 1.44 / Trise

% Exactly
% ===================================

% Trise = (1 / omega_0) * exp(d * alpha / sqrt(1-d^2))
% => omega_0 = exp(d * alpha / sqrt(1-d^2) / Trise
alpha = atan(sqrt(1 - d^2) / d);

omega_0 = exp(d * alpha / sqrt(1 - d^2)) / Trise

omega_c = omega_0 * sqrt(sqrt(4 * d^4 + 1) - 2 * d^2)

Tset = 3 / (d * omega_0)
