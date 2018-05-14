home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik
% Labor 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 2:
%     Messung des Ankerwiderstandes R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Zu messen:
I_mot = [1.019 1.108 1.200 1.321 1.406 1.499 1.602 1.703 1.802 1.893]; % Anzahl der Drehungen
U_mot = [3.529 3.570 3.634 3.826 3.888 4.032 4.316 4.373 4.516 4.549]; % Eingangsspannung

[ alpha_01, R_A ] = leastSquares(U_mot, I_mot);

kennlinie = alpha_01 + R_A.* U_mot;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [I_mot; U_mot]
 % save LaTex code as file 
fid=fopen('task02.tex','wt'); 
Table_t = transpose(Table)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'I [A] & U0 [V] \\\\ \n');
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
% Motorkennlinie: 
% Drehmoment ueber Motorstrom
figure(1)
plot(U_mot, I_mot, 'or', 'linewidth', 2)
hold on
plot(U_mot, kennlinie, 'b', 'linewidth', 2)
title( 'Kennlinie: Ankerwiderstand' )
xlabel( 'U_{mot} [V]' )
ylabel( 'I_{mot} [A]' )
saveas(gcf,'task02.png')
