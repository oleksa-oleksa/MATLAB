n_1 = [186 386 590 793 996 1200 1400 1603 1770];
Ua_1 = [25 50 75 100 125 150 175 200 220];

% 1
figure 
title ('n = F (Ua)')
grid on, grid minor
hold on
xlabel('Ua'), ylabel('n')
plot(Ua_1, n_1, 'LineWidth', 2, 'DisplayName','n = F (Ua)')

% 2 ==========================================

n_2 = [1750 1723 1697 1676 1663 1643 1640 1630 1610];
M_2 = [0.00 0.20 0.49 0.60 0.71 0.80 0.86 0.82 0.74];
Wirk_2 = [0.00 0.49 0.66 0.70 0.72 0.73 0.72 0.68 0.62];
Iamot_2 = [165 300 500 600 700 800 900 1000 1100];

% 2_1 M
figure 
title ('n = F (M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n')
plot(M_2, n_2, 'LineWidth', 2, 'DisplayName','n = F (M)', 'Color', [0.8 0 0])

% 2_2 Iamot
figure 
title ('Wirkungsgrad = F (Ia')
grid on, grid minor
hold on
xlabel('Ia mot'), ylabel('n')
plot(Iamot_2, Wirk_2, 'LineWidth', 2, 'DisplayName','Wirkungsgrad = F (Ia)', 'Color', [0.8 0 0])

% ==========================

n_3 = [1500 1467 1433 1420 1403 1390 1373 1367 1353];
M_3 = [0.00 0.16 0.52 0.62 0.72 0.78 0.83 0.82 0.67];
Wirk_3 = [0.00 0.43 0.66 0.68 0.70 0.69 0.68 0.66 0.57];
Iamot_3 = [150 250 500 600 700 800 900 1000 1100];

% 3_1 M
figure 
title ('n = F (M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n')
plot(M_3, n_3, 'LineWidth', 2, 'DisplayName','n = F (M)', 'Color', [0 0.8 0])

% 3_2 Iamot
figure 
title ('Wirkungsgrad = F (Ia')
grid on, grid minor
hold on
xlabel('Ia mot'), ylabel('n')
plot(Iamot_3, Wirk_3, 'LineWidth', 2, 'DisplayName','Wirkungsgrad = F (Ia)', 'Color', [0 0.8 0])

% ==========================

n_4 = [1500 1453 1437 1427 1413 1397 1383 1367 1360];
M_4 = [0.00 0.17 0.27 0.37 0.45 0.53 0.60 0.65 0.68];
Wirk_4 = [0.00 0.46 0.54 0.60 0.63 0.65 0.66 0.65 0.64];
Iamot_4 = [146 300 400 500 600 700 800 900 1000];

% 4_1 M
figure 
title ('n = F (M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n')
plot(M_4, n_4, 'LineWidth', 2, 'DisplayName','n = F (M)', 'Color', [0.4 0.3 0.6])

% 4_2 Iamot
figure 
title ('Wirkungsgrad = F (Ia')
grid on, grid minor
hold on
xlabel('Ia mot'), ylabel('n')
plot(Iamot_4, Wirk_4, 'LineWidth', 2, 'DisplayName','Wirkungsgrad = F (Ia)', 'Color', [0.4 0.3 0.6])

% ==========================

n_5 = [1250 1227 1203 1193 1177 1167 1153 1133 1123];
M_5 = [0.00 0.20 0.34 0.47 0.58 0.67 0.74 0.78 0.74];
Wirk_5 = [0.00 0.44 0.53 0.59 0.63 0.64 0.65 0.63 0.60];
Iamot_5 = [143 300 400 500 600 700 800 900 1000];

% 5_1 M
figure 
title ('n = F (M)')
grid on, grid minor
hold on
xlabel('M'), ylabel('n')
plot(M_5, n_5, 'LineWidth', 2, 'DisplayName','n = F (M)', 'Color', [0.2 0.4 0.9])

% 5_2 Iamot
figure 
title ('Wirkungsgrad = F (Ia)')
grid on, grid minor
hold on
xlabel('Ia mot)'), ylabel('n')
plot(Iamot_5, Wirk_5, 'LineWidth', 2, 'DisplayName','Wirkungsgrad = F (Ia)', 'Color', [0.2 0.4 0.9])