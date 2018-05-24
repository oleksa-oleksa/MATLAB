home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik Labor 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 4:
%     Berechnung & Messung der Reibungskonstante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% Einstellbare Werte 
%%%%%%%%%%%%%%%%%%%%%   
voltage = [1.00 1.10 1.21 1.36 1.64 1.72 2.15 2.56 3.03 3.53 4.04 4.52 5.06];

%%%%%%%%%%%%%%%%%%%%
% Gemessene und berechnete Werte
%%%%%%%%%%%%%%%%%%%%%
current = [0.038 0.039 0.039 0.039 0.039 0.040 0.040 0.040 0.041 0.041 0.042 0.042 0.043];
current = current * 1e3;

increments = [6 8 10 10 12 12 17 23 27 33 40 46 52];

omega = increments*pi;

km = 22.46*1e-3;
kmi = current.*km;

%c_r_new = kmi./omega;
%b = regress(c_r_new', [ones(size(omega')), omega'])

[intercept, slope] = leastSquares(omega, kmi);
kennlinie = slope * omega + intercept;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Export the result in Latex:
export_value = slope*1e4;
fid=fopen('task02_result.tex','wt');
fprintf(fid, "$%.2f", export_value);
fprintf(fid, "* 10^{-4}$ Nms");
fclose(fid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
figure(1)
plot(omega, kmi, 'or', 'linewidth', 2)
hold on
plot(omega, kennlinie, 'b', 'linewidth', 2)
grid on
title( 'Kennlinie: Reibungskonstante' )
xlabel( 'omega [1/s]' )
ylabel( 'kmi [mNA]' )
saveas(gcf,'task02.png')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [voltage; current; omega];
 % save LaTex code as file 
fid=fopen('task02.tex','wt'); 
Table_t = transpose(Table);
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'U [V] & i [mA] & omega [1/s] \\\\ \n');
fprintf(fid, '\\hline\n');
for r = 1:nrows
   row_strs = strings(1, ncols);
   for c = 1:ncols
       s = sprintf("$%.2f$", Table_t(r, c));
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