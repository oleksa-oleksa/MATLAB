home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik
% Labor 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 3:
%     Messung der Leerlaufkennlinie
%     Ziel: Bestimmung k_e
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% u_i ~ w (Winkelgeschwindigkeit)
% u_i(t) = k_e * w(t)
%
% u_0 = 0 .. 12V

%%%%%%%%%%%%%%%%%%%%
% Einstellbarer Wert
% x-Werte: Spannung
u_0 = [1.035 1.959 3.000 3.995 4.996 5.014 7.04 7.98 8.99 10.01 11.08 11.81]; % Motorspannung in V

%%%%%%%%%%%%%%%%%%%%
% Gemessene Werte
% y-Werte
% Motor nicht belasten -> Leerlauf
k = [7 19 34 48 63 77 90 101 115 128 142 152]; 

omega = k.*pi

[ alpha_03 k_e ] = leastSquares(u_0, omega);

kennlinie_leerlauf = alpha_03 + k_e .* u_0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [u_0; k; omega]
 % save LaTex code as file 
fid=fopen('task03.tex','wt'); 
Table_t = transpose(Table)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'U [V] & k / T [inc / ms] & omega [1 / s] \\\\ \n');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
% Leerlaufkennlinie: 
% Drehmoment ueber Motorstrom
figure(1)
plot(u_0, omega, 'or', 'linewidth', 2)
hold on
plot(u_0, kennlinie_leerlauf, 'b', 'linewidth', 2)
title( 'Leerlaufkennlinie eines Motors' )
xlabel( 'Spannung [V]' )
ylabel( 'w [1/s]' )
saveas(gcf,'task03.png')

