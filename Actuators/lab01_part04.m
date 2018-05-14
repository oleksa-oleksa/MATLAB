home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik
% Labor 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 4:
%     Messung der Kennlinie des Leistungsverstaerkers
%     Ziel: Verstaerkung A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eingangsspannung Leistungsverstaerker: -12 .. 12V
% Ausgangsspannung mit Multimeter messen

%%%%%%%%%%%%%%%%%%%%
% Einstellbarer Wert
% x-Werte
u_eingang_pos = [11.97 6.90 6.50 5.96 5.66 5.407 5.016 4.714 4.447 4.063 3.737 3.475 3.265 2.961 2.570 2.194 1.871 1.462 1.133 0.799 0.416 0.261 0.062];
u_eingang_neg = [-0.104 -0.369 -0.740 -1.00 -1.519 -2.081 -2.994 -4.018 -5.070 -6.004 -6.185 -6.63 -11.99];

u_eingang_ges = [u_eingang_pos, u_eingang_neg]
%%%%%%%%%%%%%%%%%%%%
% Gemessene Werte
% y-Werte
u_ausgang_pos = [13.66 13.66 12.95 11.90 11.33 10.82 10.04 9.43 8.90 8.12 7.48 6.95 6.53 5.92 5.123 4.370 3.738 2.911 2.250 1.581 0.815 0.500 0.103 ];
u_ausgang_neg = [-0.228 -0.744 -1.497 -2.018 -3.055 -4.186 -6.008 -8.07 -10.17 -12.05 -12.42 -13.10 -13.11];

u_ausgang_ges = [u_ausgang_pos, u_ausgang_neg];

[ alpha_01, V ] = leastSquares(u_eingang_ges, u_ausgang_ges);
kennlinie = alpha_01 + V.* u_eingang_ges;

fprintf( 'Verstaerkung V:')
V
fprintf( '\n' )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [u_eingang_ges; u_ausgang_ges]
 % save LaTex code as file 
fid=fopen('task04.tex','wt'); 
Table_t = transpose(Table)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'U Ein [V] & U Aus [V] \\\\ \n');
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


fprintf( '\nVerstaerkung V des Leistungsverstaerkers:\n' )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
% Leerlaufkennlinie: 
% Drehmoment ueber Motorstrom
figure(1)
plot(u_eingang_ges, u_ausgang_ges, 'or', 'linewidth', 2)
hold on
plot(u_eingang_ges, kennlinie, 'b', 'linewidth', 2)
title( 'Verstaerkung V des Leistungsverstaerkers' )
xlabel( 'U Eingang [V]' )
ylabel( 'U Ausgang [V]' )
saveas(gcf,'task04.png')





