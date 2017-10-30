% erstellt von Oleksandra Baga

% Ubung 02 Elektrische Systeme - 2

% Matrizen zur graphisch Darstellung der Kennlinien

% 3.2
% Graphische Darstellung Durchlasskennlinie If

If_2 = [1800 1400 800 400 200 100 50 20 10 5];
Uf_2 = [1.23 1.14 1.01 0.91 0.85 0.81 0.77 0.73 0.70 0.68];

% Durchlasskennlinie
figure 
title ('Durchlasskennlinie')
grid on, grid minor
hold on
xlabel('Uf'), ylabel('If')
plot(Uf_2, If_2, 'LineWidth', 2, 'DisplayName','If = f (Uf)')

% ==================================
% 2.3
% Steuerkennlinien fur arithmetischen
% und geometrischen Mittelwert

% Vom Messprotokoll

Winkel = [0
          10
          20
          30
          40
          50
          60
          70
          80
          90
          100
          110
          120
          130
          140
          150
          160
          170
          180];

Ud_3 = [18.6
        18.4
        18.0
        17.3
        16.5
        15.3
        13.8
        12.4
        10.7
        9.2
        7.7
        6.1
        4.7
        3.4
        2.1
        1.2
        0.5
        0.1
        0.01];
    
Ueff_3 = [30.7
          30.5
          30.1
          29.8
          28.6
          27.5
          26.1
          24.4
          22.4
          20.4
          17.9
          15.2
          12.4
          9.6
          6.6
          4.1
          1.9
          0.5
          0.3];
      
      
% Matrizen f?r graphische Darstellung

S1 = [1.00
      0.99
      0.97
      0.93
      0.89
      0.82
      0.74
      0.67
      0.58
      0.49
      0.41
      0.33
      0.25
      0.18
      0.11
      0.06
      0.03
      0.01
      0.00];

S2 = [1.00
      0.99
      0.98
      0.97
      0.93
      0.90
      0.85
      0.79
      0.73
      0.66
      0.58
      0.50
      0.40
      0.31
      0.21
      0.13
      0.06
      0.02
      0.01];
  
% 3.3
% Graphische Darstellung Steuerkennlinie S1 und S2

% S1
figure 
title ('Steuerkennlinie S1')
grid on, grid minor
hold on
xlabel('Winkel'), ylabel('S1')
plot(Winkel, S1, 'LineWidth', 2, 'DisplayName', 'Steuerkennlinie S1', 'Color', [0.8 0 0])

% S2
figure 
title ('Steuerkennlinie S2')
grid on, grid minor
hold on
xlabel('Winkel'), ylabel('S2')
plot(Winkel, S2, 'LineWidth', 2, 'DisplayName', 'Steuerkennlinie S1', 'Color', [0 0.8 0])

% 3.4
% Graphische Darstellung Ff

Ff = [1.65
      1.66
      1.67
      1.72
      1.73
      1.80
      1.89
      1.97
      2.09
      2.22
      2.32
      2.49
      2.64
      2.82
      3.14
      3.42
      3.80
      5.00
      30.00];

% Ff
figure 
title ('Formfaktor Ff')
grid on, grid minor
hold on
xlabel('Winkel'), ylabel('Ff')
plot(Winkel, Ff, 'LineWidth', 2, 'DisplayName', 'Formfaktor Ff', 'Color', [0.4 0.3 0.6])


% 3.5
% Kontrollrechnungen

Udach = sqrt(2) * 40
Ud40 = (Udach/(2*pi)) * (1 + cosd(40))
Ud90 = (Udach/(2*pi)) * (1 + cosd(90))
Ud130 = (Udach/(2*pi)) * (1 + cosd(130))

Ueff40 = Udach/2 * sqrt (1 - (((40 * pi) / 180 - sind(80)/2)/pi))
Ueff90 = Udach/2 * sqrt (1 - (((90 * pi) / 180 - sind(180)/2)/pi))
Ueff130 = Udach/2 * sqrt (1 - (((130 * pi) / 180 - sind(260)/2)/pi))

Ff40 = Ueff40/Ud40
Ff90 = Ueff90/Ud90
Ff130 = Ueff130/Ud130

S1_40 = Ud40 / 18.6
S1_90 = Ud90 / 18.6
S1_130 = Ud130 / 18.6

S2_40 = Ueff40 / 30.7
S2_90 = Ueff90 / 30.7
S2_130 = Ueff130 / 30.7



