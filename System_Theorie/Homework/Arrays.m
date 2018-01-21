clear
close all
home
% Learn how to work with arrays

% PART A ===============================
% The vector A with first 50 natural digits 
a_ = 1:50

%================================
% Reversed vector B
b_ = fliplr(a_)

% Array of all zeros, lenght is 100 elements
c_ = zeros(1, 100);

% PART B =========================
% collect all array in one
d_ = [a_, b_, c_];

d_size = size(d_)

d_short = d_(1:d_size(2)-50)
