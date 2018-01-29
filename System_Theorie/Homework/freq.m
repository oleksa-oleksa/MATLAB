home
clear
close all

c1 = 0.5e-6;
c2 = 1.5e-6;
r = 1000;

tau = (c1 + c2)*r;

nom = [0.8 40];
dem = [1 5];
tf2fn(nom, dem)