% clear
% close all
% home

% Nennwerte
P2 = 380*2.9*cos(0.75);
Wirk_nen = P2/1e3;
I_nen = 2.9;
n2_nen = 1435;
cos_phi_nen = 0.75;
P2_nen = 806.32;
M_nen = 5.36;

%======
% zu 2

I1_2 = [1.92 2.1 2.3 2.48 2.66 2.92 3.05 3.24 3.38];
n2_2 = [1492 1474 1462 1447 1439 1428 1420 1409 1406];
Wirk_2 = [0.00 0.34 0.42 0.49 0.56 0.61 0.63 0.68 0.65];
cos_phi_2 = [0.32 0.49 0.60 0.68 0.73 0.77 0.79 0.81 0.82];
P2_2 = [0.00 231.42 382.56 545.23 715.42 896.78 995.80 1157.68 1177.29];

% Graphik a
figure 
title ('I1 = f(P2)')
grid on, grid minor
xlabel('P2'), ylabel('I1')
hold on
plot(P2_2, I1_2, 'LineWidth', 2, 'Color', [0.2 0.4 0.9])
hold on
plot(P2_nen, I_nen, 'X', 'LineWidth', 2)


figure 
title ('n2 = f(P2)')
grid on, grid minor
hold on
xlabel('P2'), ylabel('n2')
plot(P2_2, n2_2, 'LineWidth', 2, 'Color', [0.2 0.4 0.9])
hold on
plot(P2_nen, n2_nen, 'X', 'LineWidth', 2)


figure 
title ('Wirkungsgrad = f(P2)')
grid on, grid minor
hold on
xlabel('P2'), ylabel('Wirkungsgrad')
plot(P2_2, Wirk_2, 'LineWidth', 2, 'Color', [0.2 0.4 0.9])
hold on
plot(P2_nen, Wirk_nen, 'X', 'LineWidth', 2)


figure 
title ('cos phi = f(P2)')
grid on, grid minor
hold on
xlabel('P2'), ylabel('cos phi')
plot(P2_2, cos_phi_2, 'LineWidth', 2, 'Color', [0.2 0.4 0.9])
hold on
plot(P2_nen, cos_phi_nen, 'X', 'LineWidth', 2)


% ==================================
% zu 3

n2_3 = [1456.00 1327.00 1238.00 1140.00 1050.00 952.00 843.00];
M_3 = [0.00 1.50 2.50 3.60 4.75 6.00 7.85];

figure 
title ('n2 = f(M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n2')
plot(M_3, n2_3, 'LineWidth', 2, 'Color', [1 0.2 0.2])
hold on
plot(M_nen, n2_nen, 'X', 'LineWidth', 2)


% ==================================
% zu 4

n2_4 = [1452.00 1432.00 1403.00 1364.00 1338.00 1296.00 1270.00];
M_4 = [0.42 0.63 1.05 1.52 2.00 2.53 3.31];

figure 
title ('n2 = f(M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n2')
plot(M_4, n2_4, 'LineWidth', 2, 'Color', [0.2 1 0.6])
hold on
plot(M_nen, n2_nen, 'X', 'LineWidth', 2)

% ==================================
% zu 5

n2_5 = [1477.00 1450.00 1428.00 1401.00 1383.00 1359.00 1339.00];
M_5 = [0.32 0.87 1.45 2.08 2.75 3.47 4.54];

figure 
title ('n2 = f(M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n2')
plot(M_5, n2_5, 'LineWidth', 2, 'Color', [0.5 0.2 1])
hold on
plot(M_nen, n2_nen, 'X', 'LineWidth', 2)





