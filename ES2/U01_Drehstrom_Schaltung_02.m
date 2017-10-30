% Eine graphische Darstellung f?r die ?bungsabgabe
% f?r ES2 an der Beuth Hochschule 

% Constants
R1 = 75;        R2 = 100;       R3 = 150;       % Ohm
C = 30e-6;                                      %(Micro)Farrad
f = 50;                                         % Hz
w = 2*pi*f;                                     %

%====================
% GEMESSEN WAREN:
%UY = 40;                                        % Quellspannung in V
UY = 38.1;                                     %

U12 = UY * exp(j*0*pi/180);                     % Leiterspannungen
U23 = UY * exp(j*-120*pi/180);                  %
U31 = UY * exp(j*120*pi/180);                   %

%U1N = U12/(sqrt(3)*exp(j*(30*pi/180)));         % berechnet :)
%U2N = U23/(sqrt(3)*exp(j*(30*pi/180)));         %
%U3N = U31/(sqrt(3)*exp(j*(30*pi/180)));         %

U1N = 22.1*exp(j*(-30*pi/180));               % gemessen
U2N = 21.8*exp(j*(-154.5*pi/180));               %
U3N = 22.0*exp(j*(94.5*pi/180));

% SCHALTUNG 3

%Z_S2 = R2;          % komplexer Widerstand Schaltung 1

Z1N = R2;                     % Widerstand Strang 1, 2, 3
Z2N = R2;
Z3N = R2; 

%I_1 = U1N/Z1N,  I_2 = U2N/Z2N,  I_3 = U3N/Z3N   % Strangstr?me


I_1 = 230e-3*exp(j*(angle(U1N/Z1N))) ;
I_1b = abs (I_1)
I_2 = 239e-3*exp(j*(angle(U2N/Z2N))) ;
I_2b = abs (I_2)
I_3 = 241e-3*exp(j*(angle(U3N/Z3N))) ;
I_3b = abs (I_3)
Phi_I_N = (angle(I_1 + I_2 + I_3));              %Phasenwinkel Nullleiter   

%I_N = I_1 + I_2 + I_3;                          % Strom Nulleiter
I_N = 11e-3*exp(j*Phi_I_N); 
I_Nb = abs (I_N)

% quiver U12, U23, U31
figure('Name', 'Schaltung 2'), title ('Schaltung 2')
grid on, grid minor, axis equal
hold on
%--------------------------------------->
% 1st Leiter
refStart=0; arrow1 = U12;
quiver(real(refStart),imag(refStart),real(arrow1),imag(arrow1), 'Color', [0.6 0.6 0.6] ,'DisplayName','U12', 'LineWidth', 2);

%Strangspannung U1N
Strang1 = U1N;
quiver(real(refStart),imag(refStart),real(Strang1),imag(Strang1), 'Color', [1 0 0] ,'DisplayName','U1N', 'LineWidth', 2);

%Strangstrom I_1
Strom1 = I_1*100;
quiver(real(refStart+Strang1),imag(refStart+Strang1),real(Strom1),imag(Strom1), 'Color', [1 0.6 0] ,'DisplayName','I_1', 'LineWidth', 2);

%--------------------------------------->
% 2nd Leiter
refStart=refStart+arrow1; arrow2 = U23;
quiver(real(refStart),imag(refStart),real(arrow2),imag(arrow2),'Color', [0.4 0.2 0.2] ,'DisplayName','U23', 'LineWidth', 2);

%Strangspannung U2N
Strang2 = U2N;
quiver(real(refStart),imag(refStart),real(Strang2),imag(Strang2), 'Color', [0.3 0 1] ,'DisplayName','U2N', 'LineWidth', 2);

%Strangstrom I_2
Strom2 = I_2*100;
quiver(real(refStart+Strang2),imag(refStart+Strang2),real(Strom2),imag(Strom2),'Color', [0.2 0.8 0.6] ,'DisplayName','I_2', 'LineWidth', 2);

%--------------------------------------->
% 3rd Leiter
refStart=refStart+arrow2; 
arrow3 = U31;
quiver(real(refStart),imag(refStart),real(arrow3),imag(arrow3),'Color', [0.7 0.8 0.6] ,'DisplayName','U31', 'LineWidth', 2);

%Strangspannung U3N
Strang3 = U3N;
quiver(real(refStart),imag(refStart),real(Strang3),imag(Strang3), 'Color', [0 0.3 1] ,'DisplayName','U3N', 'LineWidth', 2);

%Strangstrom I_3
Strom3 = I_3*100;
quiver(real(refStart+Strang3),imag(refStart+Strang3),real(Strom3),imag(Strom3), 'Color', [0.8 0.3 0.4] ,'DisplayName','I_3', 'LineWidth', 2);

%--------------------------------------->
% Nullleiter
Strom4 = I_N*100;
quiver(real(refStart+Strang3),imag(refStart+Strang3),real(Strom4),imag(Strom4), 'k' ,'DisplayName','I_N', 'LineWidth', 2);

% switch off the Quivergroup Property AutoScale for all arrows
hAutoScale=findobj('-property','AutoScale');
set(hAutoScale,'AutoScale','off')

legend show

hold off

%-----------------------------------------------------------------------------------------------------