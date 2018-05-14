home
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aktorik Sensorik
% Labor 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aufgabe 5:
%     Messung der Belastungskennlinie des Motors
%     Ziel: 3 Belastungskennlinien aufnehmen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kennlinien fuer 3V, 6V, 12V aufnehmen

Radius = 9.98; 

Force_3V = [0.02 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.06 2.1];
Inc_3V  = [69 66 65 63 62 60 60 59 55 55 53 52 51 48 47 47 41 41 38 37 37 27 20]; 

Force_6V = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.12];
Inc_6V  = [38 28 26 23 22 20 19 18 18 14 12 2]; 

Force_12V = [0.02 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.14];
Inc_12V  = [159 155 152 151 148 148 145 141 141 139 135 135 132 130 126 124 120 120 118 116 114 111 106];

M_mot_3V = Radius.*Force_3V % Drehmoment des Motors in Nm
M_mot_6V = Radius.*Force_6V
M_mot_12V = Radius.*Force_12V

omega_3V = Inc_3V.*pi
omega_6V = Inc_6V.*pi
omega_12V = Inc_12V.*pi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table1 = [Force_3V; Inc_3V; M_mot_3V; omega_3V]
 % save LaTex code as file 
fid=fopen('task051.tex','wt'); 
Table_t = transpose(Table1)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'Force 3V [Nw] & k / T [inc / ms] & $M_M$ 3V [mNm]  & omega 3V [1/s] \\\\ \n');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table2 = [Force_6V; Inc_6V; M_mot_6V; omega_6V]
 % save LaTex code as file 
fid=fopen('task052.tex','wt'); 
Table_t = transpose(Table2)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'Force 6V [Nw] & k / T [inc / ms] & $M_M$ 6V [mNm]  & omega 6V [1/s] \\\\ \n');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating table for the Latex Protocol
Table3 = [Force_12V; Inc_12V; M_mot_12V; omega_12V]
 % save LaTex code as file 
fid=fopen('task053.tex','wt'); 
Table_t = transpose(Table3)
[nrows,ncols] = size(Table_t); 
fprintf(fid, "\\begin{tabular}{ |c|c||c|c| }\n");
fprintf(fid, "\\hline\n");
fprintf(fid, 'Force 12V [Nw] & k / T [inc / ms] & $M_M$ 12V [mNm]  & omega 12V [1/s] \\\\ \n');
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
plot(M_mot_3V, omega_3V, 'r', 'linewidth', 2)
hold on
plot(M_mot_6V, omega_6V, 'b', 'linewidth', 2)
hold on
plot(M_mot_12V, omega_12V, 'g', 'linewidth', 2)
title( 'Belastungskennlinie' )
xlabel( 'Drehmoment [mNm]' )
ylabel( 'w [1/s]' )
saveas(gcf,'task051.png')

figure(2)
plot(M_mot_3V, omega_3V, 'r', 'linewidth', 2)
title( 'Belastungskennlinie' )
xlabel( 'Drehmoment [mNm]' )
ylabel( 'w [1/s]' )
saveas(gcf,'task052.png')

figure(3)
plot(M_mot_6V, omega_6V, 'b', 'linewidth', 2)
title( 'Belastungskennlinie' )
xlabel( 'Drehmoment [mNm]' )
ylabel( 'w [1/s]' )
saveas(gcf,'task053.png')

figure(4)
plot(M_mot_12V, omega_12V, 'g', 'linewidth', 2)
title( 'Belastungskennlinie' )
xlabel( 'Drehmoment [mNm]' )
ylabel( 'w [1/s]' )
saveas(gcf,'task054.png')