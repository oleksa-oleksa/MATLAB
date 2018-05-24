home
clear
close all
% Labor 2. Aufgabe 3:
%     Messung des Phasenwinkels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Einstellbare Werte 
%     -> Frequency
%     entspricht x-Werte
freq = [1 1.1 1.2 1.3 1.4 1.5 1.6 1.7]; 
freq = freq*1e3;
freq = [freq freq]; 

%%%%%%%%%%%%%%%%%%%%
% Gemessene und berechnete Werte
% %%%%%%%%%%%%%%%%%%%%

dt1 = [75.78 69.64 59.08 53.75 49.07 43.62 42.84 42.06] 
dt2 = [76.11 72.22 57.77 55.31 52.2 46.08 42.52 38.63] 

dt_for_table = [dt1 dt2];
dt = [dt1 dt2] * 1e-6;

Ra = 3.22; % aus erstem Versuch
Rges = Ra + 1; 

omega = freq.*2*pi;
% Winkel in Radiant
phi = omega.*dt; 
% Winkel in Grad
phi_grad = freq.*dt*360;

% Induktivitaet
% = (tan(phi)*Rges)/(phi)
L = tan(phi).*Rges./(omega);
L_mean = sum(L)/length(L);

L_new = tan(phi).*Rges./omega;
b = regress(L_new', [ones(size(omega')), omega'])

[intercept, slope] = leastSquares(freq, phi_grad);
kennlinie = intercept + slope .* freq;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Export the result in Latex:
export_value = b(1)*1e6;
export_si = '\\mu H $'
fid=fopen('task01_result.tex','wt');
fprintf(fid, "$%.2f", export_value);
fprintf(fid, export_si);
fclose(fid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
figure(1)
plot(freq, phi_grad, 'or', 'linewidth', 2)
hold on
plot(freq, kennlinie, 'b', 'linewidth', 2)
grid on
title( 'Kennlinie: Phasenverschiebung' )
xlabel( 'Omega [1/s]')
ylabel( 'R * tan(phi)')
saveas(gcf,'task01.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [freq; dt_for_table; phi_grad];
 % save LaTex code as file 
fid=fopen('task01.tex','wt'); 
Table_t = transpose(Table);
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'f [kHz] & Delta t [microsec]] & Winkel [grad] \\\\ \n');
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