clear
home

% Innenwwiderstand einer Battarie
% Gegeben sind:
U0 = 12; % Klemmespannung bei Leerlauf
Ilast = 5; % Strom bei Belastung
Ulast = 11.3; % Klemmespannung bei Belastung

%================
% Maschegleichung:
% -U0 +Ilast*Ri +Ulast = 0

% Ri aus Maschegleuchung:
Ri = (U0 - Ulast)/Ilast

% Belastungstrom Ilast2, bei welchem ist die Klemmespannung
% auf 80% der Leerspanung abgesunken
Ulast2 = 0.8 * U0;

Ilast2 = (U0 - Ulast2)/Ri

% Quellenkennlinie stellen I(U) grafish dar

U = 0 : 0.1 : U0;
I = U0 / Ri - U * 1/Ri
plot (U, I)
