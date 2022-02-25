clear;
clc;
close all;

c = 0.1:0.1:1;
l = 0.01 * 10^-3;
r = 100


f = sqrt((1 / l * c) - (r^2 ./ (4 * c .^ 2)));

plot(c, f)
grid on