% Constants
R1 = 75; R2 = 100; R3 = 150; % Ohm
C = 30e-6; %(Micro)Farrad
f = 50; % Hz
w = 2*pi*f; %

%UY = 40; % Quellspannung in V
UY = 39.5; %

U12 = UY * exp(j*0*pi/180); % Leiterspannungen
U23 = UY * exp(j*-120*pi/180); %
U31 = UY * exp(j*120*pi/180); %

%U1N = U12/(sqrt(3)*exp(j*(30*pi/180))); % berechnet :)
%U2N = U23/(sqrt(3)*exp(j*(30*pi/180))); %
%U3N = U31/(sqrt(3)*exp(j*(30*pi/180))); %

%U1N = 18*exp(j*(-30*pi/180)); % gemessen
%U2N = 26.6*exp(j*(-150*pi/180)); %
%U3N = 22.25*exp(j*(90*pi/180));

% SCHALTUNG 7

%I_1 = U1N/Z1N, I_2 = U2N/Z2N, I_3 = U3N/Z3N % Strangstr?me
I12 = U12/R1;
I23 = U23/R2;
I31 = U31/R3;
%I_x1 = I12 - I31; 
%I_x2 = I23 - I12; 
%I_x3 = I31 - I23; % Strangstr?me


I_1 = 740e-3*exp(j*(angle(U12/R1 - U31/R3))) ;
I_2 = 854e-3*exp(j*(angle(U23/R2 - U12/R1))) ;
I_3 = 656e-3*exp(j*(angle(U31/R3 - U23/R2))) ;
%Phi_I_N = (angle(I_1 + I_2 + I_3)); %Phasenwinkel Nullleiter 
%Phi_U_N = (angle(I_1*Z1N + I_2*Z2N + I_3*Z3N)); %
%I_N = I_1 + I_2 + I_3; % Strom Nulleiter
%I_N = 114e-3*exp(j*Phi_I_N); 
%U_N = 4.36*exp(j*Phi_U_N);

% quiver U12, U23, U31
figure('Name', 'Schaltung 7'), title ('Schaltung 7')
grid on, grid minor, axis equal

hold on
%--------------------------------------->
% 1st Leiter
refStart=0; arrow1 = U12;
a = quiver(real(refStart),imag(refStart),real(arrow1),imag(arrow1), 'Color', [0.6 0.6 0.6] ,'DisplayName','U12', 'LineWidth', 2);

%--------------------------------------->
% 2nd Leiter
refStart=refStart+arrow1; arrow2 = U23;
b = quiver(real(refStart),imag(refStart),real(arrow2),imag(arrow2),'Color', [0.7 0.6 0.6] ,'DisplayName','U23', 'LineWidth', 2);

%--------------------------------------->
% 3rd Leiter
refStart=refStart+arrow2; 
arrow3 = U31;
c = quiver(real(refStart),imag(refStart),real(arrow3),imag(arrow3),'Color', [0.7 0.8 0.6] ,'DisplayName','U31', 'LineWidth', 2);

%--------------------------------------->
%Str?me

%Leiterstrom I12
Strom12 = I12*39.5;

d = quiver(0, 0 , real(Strom12), imag(Strom12), 'Color', [1 0 1] ,'DisplayName','I_12', 'LineWidth', 2);

%Leiterstrom I23
Strom23 = I23*39.5;
e = quiver(real(arrow1),imag(arrow1),real(Strom23),imag(Strom23),'Color', [1 0.3 1] ,'DisplayName','I_23', 'LineWidth', 2);

%Leiterstrom I31
Strom31 = I31*39.5;
f = quiver(19.69,imag(arrow2),real(Strom31),imag(Strom31), 'Color', [1 0 0.7] ,'DisplayName','I_31', 'LineWidth', 2);

%--------------------------------------->

%Strangstrom I_1
Strom1 = I_1*39.5;
g = quiver(0, 0 , real(Strom1), imag(Strom1), 'Color', [1 0 0] ,'DisplayName','I_1', 'LineWidth', 2);

%Strangstrom I_2
Strom2 = I_2*39.5;
h = quiver(real(arrow1),imag(arrow1),real(Strom2),imag(Strom2),'Color', [1 0.3 0] ,'DisplayName','I_2', 'LineWidth', 2);

%Strangstrom I_3
Strom3 = I_3*39.5;
k = quiver(19.69,imag(arrow2),real(Strom3),imag(Strom3), 'Color', [1 0 0.3] ,'DisplayName','I_3', 'LineWidth', 2);

%--------------------------------------->

%Verbindung I_1
UV1 = (I12-I_1)*39.5;
quiver(real(Strom1), imag(Strom1), real(UV1), imag(UV1), 'Color', [0.5 0.5 0.5], 'LineStyle' , '-.', 'LineWidth', 2);

%Verbindung I_2
UV2 = (I23-I_2)*39.5;
X2 = 7.595;
Y2 = -15.015;
quiver(X2 ,Y2, real(UV2), imag(UV2), 'Color', [0.5 0.5 0.5], 'LineStyle' , '-.', 'LineWidth', 2);

%Verbindung I_3
UV3 = (I31-I_3)*39.5;
X3 = 22.92;
Y3 = -6.1;
quiver(X3 , Y3 , real(UV3), imag(UV3), 'Color', [0.5 0.5 0.5], 'LineStyle' , '-.', 'LineWidth', 2);


%--------------------------------------->
% Nullleiter
%Strom4 = I_N*100;
%quiver(real(refStart+Strang3),imag(refStart+Strang3),real(Strom4),imag(Strom4), 'k' ,'DisplayName','I_N');
%Volt = U_N;
%quiver(real(refStart+Strang3),imag(refStart+Strang3),real(Volt),imag(Volt), 'm' ,'DisplayName','U_N');

% switch off the Quivergroup Property AutoScale for all arrows
hAutoScale=findobj('-property','AutoScale');
set(hAutoScale,'AutoScale','off')

%legend show

hold off

%-----------------------------------------------------------------------------------------------------

