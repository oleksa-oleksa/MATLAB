home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik Labor 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 3:
%     Messung des Phasenwinkels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% Einstellbare Werte 
%     -> Frequency
%     entspricht x-Werte
frequency = [1 2 3]; 
% die gleiche Frequenz wird wiederholt
frequencies = repelem(frequency, 3)


%%%%%%%%%%%%%%%%%%%%
% Gemessene und berechnete Werte
% %%%%%%%%%%%%%%%%%%%%
    
dt = [1 2 3 1 2 3 1 2 3]

RA = 0.748; % aus erstem Versuch
Rges = 0.748 + 1; 

omega = frequencies.*2*pi;

% Winkel in Radiant
phi = omega.*dt; 

% Winkel in Grad
phi_grad = frequencies.*dt*360;

% Induktivitaet
L = tan(phi).*Rges./(frequencies.*2*pi)


[ alpha_01, L_ber ] = leastSquares(frequencies, phi_grad);
kennlinie = alpha_01 + L_ber .* frequencies;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table = [frequencies; dt; phi_grad]
 % save LaTex code as file 
fid=fopen('task01.tex','wt'); 
Table_t = transpose(Table)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'f [kHz] & Delta t [microsec]] & Winkel [grad] \\\\ \n');
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

fprintf( 'Gesuchte Wert:: ')
L_ber;
fprintf( '\n' )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot:
% Motorkennlinie: 
% Drehmoment ueber Motorstrom
figure(1)
plot(frequencies, phi_grad, 'or', 'linewidth', 2)
hold on
plot(frequencies, kennlinie, 'b', 'linewidth', 2)
title( 'Kennlinie: Phasenverschiebung' )
xlabel( 'Frequenz [kHz]' )
ylabel( 'Winkel(deg) [Grad]' )
saveas(gcf,'task01.png')

