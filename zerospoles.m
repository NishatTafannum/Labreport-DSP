clc;
close all;

% Define the numerator and denominator coefficients of the transfer function
num = [1 0 1];
den = [1 -0.5 0.25];

% Compute the zeros and poles
zeros_tf = roots(num);
poles_tf = roots(den);

% Plot the zeros and poles in the z-plane
figure;
zplane(zeros_tf, poles_tf);
title('Zeros and Poles');
