home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik Labor 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 1:
%     Messung des Stillstandsdrehmoment
%     Ziel: Bestimmung der Momentenkonstante k_m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% Einstellbare Werte 
%     -> Motorstrom, 
%     entspricht x-Werte
%     I_mot = 0 .. 2 A
I_mot = [0.099 0.149 0.203 0.243 0.299 0.403 0.504 0.593 0.700 0.798 0.899 1.000]; % Motorstrom in Ampere

%%%%%%%%%%%%%%%%%%%%
% Gemessene Werte
%     -> Kraft F 
% mit Hilfe Federkraftmesers
Force = [0.18 0.24 0.34 0.52 0.56 0.88 1.19 1.38 1.42 1.85 2.02 2.05];         % in N

Radius = 9.98;                                                                 % in mm

%%%%%%%%%%%%%%%%%%%%
% Berechnete Werte
%     -> Drehmoment (Motor in Stillstand betreiben)
%     entspricht y-Werte
M_mot = Radius.*Force % Drehmoment des Motors in mNm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [I_mot; Force; M_mot]
 % save LaTex code as file 
fid=fopen('task01.tex','wt'); 
Table_t = transpose(Table)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'I [A] & F [Nw] & Drehmoment [mNm] \\\\ \n');
fprintf(fid, '\\hline\n');
for r = 1:nrows
   row_strs = strings(1, ncols);
   for c = 1:ncols
       s = sprintf("$%.4f$", Table_t(r, c));
       row_strs(c) = s;
   end
   fprintf(fid, join(string(row_strs), ' & '));
   fprintf(fid, '\\\\\n');
end
fprintf(fid, "\\hline\n");

fprintf(fid, "\\end{tabular}\n");
fprintf(fid, '%%\n');
fclose(fid);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[ alpha_01, k_m ] = leastSquares(I_mot, M_mot);

fprintf( 'Momentenkonstante k_m: ')
k_m
fprintf( '\n' )

kennlinie_I_M = alpha_01 + k_m .* I_mot;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
% Motorkennlinie: 
% Drehmoment ueber Motorstrom
figure(1)
plot(I_mot, M_mot, 'or', 'linewidth', 2)
hold on
plot(I_mot, kennlinie_I_M, 'b', 'linewidth', 2)
title( 'Kennlinie: Drehmoment ueber Motorstrom' )
xlabel( 'I_{mot}  [A]' )
ylabel( 'M_{mot} [mNm]' )
saveas(gcf,'task01.png')

