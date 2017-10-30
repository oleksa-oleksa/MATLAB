%%%%
%
%

clear
home

R1 = 10e3,
R2 = 2.2e3,
C1 = 2.2e-9,
C2=68e-9, 
f=1e3,
w=2*pi*f,
U1=4

%fprintf("\nAuswertungen\n")
tau1 = R1*C1
tau2 = R2*C2

Z1 = R1 / (1+(w*tau1)^2) -j* (w*tau1*R1)/(1+(w*tau1)^2)
Z2 = R2 / (1+(w*tau2)^2) -j* (w*tau2*R2)/(1+(w*tau2)^2)
Zges = Z1 + Z2


% Plotvorbereitung
fplot = logspace(2, 5, 100);
wplot = 2*pi*fplot;

Z1plot = 1./( (1/R1) .+ j*wplot*C1 );
Z2plot = 1./( (1/R2) .+ j*wplot*C2 );

C22 = 10e-9;
Z22plot = 1./( (1/R2) .+ j*wplot*C22 );

Vplot = Z2plot ./ (Z1plot .+ Z2plot);           % C2 = 68nF
Vplot2 = Z2plot ./ (Z1plot .+ Z22plot);         % C2 = 10nF

phase = U1 * Z2plot ./ (Z1plot .+ Z2plot);      % C2 = 68nF
phase2 = U1 * Z2plot ./ (Z1plot .+ Z22plot);    % C2 = 10nF

phasd = rad2deg(angle(phase));                  % C2 = 68nF
phasd2 = rad2deg(angle(phase2));                % C2 = 10nF

dbplot = 20*log(Vplot);                         % C2 = 68nF
dbplot2 = 20*log(Vplot2);                       % C2 = 10nF

freq = [ 100; 1e3; 10e3; 100e3];
mess1 = [-12; -18; -4/5 * 36; -6/5 * 36];
mess2 = [-1/10 * 36; -1/10*36; -1/5*36; 0];

umess1 = [0.15; 0.1; 0.02; 0.09]
umess2 = [0.11; 0.11; 0.12; 0.15]
v1 = 20*log(umess1 ./ U1)
v2 = 20*log(umess2 ./ U1)


figure


%semilogx(
%fplot, phasd, 'linewidth', 2, 
%freq, mess1, 'color', 'cyan','linestyle', 'none', 'o', 'linewidth', 2, 
%fplot, phasd2,'color', 'red', 'linewidth', 2, 
%freq, mess2, 'color', 'magenta', 'linestyle', 'none', 'x', 'linewidth', 2)

%title('Bodediagramm (Phase)', 'fontsize', 14)

%legend(
%'Idealverlauf fuer C_2 = 68nF',
%'Messung fuer C_2 = 68nF', 
%'Idealverlauf fuer C_2 = 10nF',
%'Messung fuer C_2 = 10nF',
%'location', 'southoutside')

%ylabel('\varphi [\circ]')


semilogx(
fplot, dbplot, 'linewidth', 2, 'r', 
freq, v1, 'linewidth', 2, 'linestyle', 'none', 'o', 'color', 'magenta',
fplot, dbplot2, 'linewidth', 2, 'b',
freq, v2, 'linewidth', 2, 'linestyle', 'none', 'x', 'color', 'cyan')


legend(
'v: Idealverlauf fuer C_2 = 68nF', 
'Messung fuer C_2 = 68nF',
'v: Idealverlauf fuer C_2 = 10nF',
'Messung fuer C_2 = 10nF')

ylabel('v [dB]')

xlabel('Frequenz [Hz]')

grid
title('Bodediagramm (Betrag)','fontsize', 14)
%print('betragBode', '-dpng')
%print('degreeBode','-dpng')

