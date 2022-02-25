% Gaussian Destribution

x = 0:0.05:1;

sigma = 0.5;
mue = mean(x);

gaussian = (1 / (sigma * sqrt(2 * pi))) * exp((-1 / 2) * ((x - mue) / sigma).^2)

plot(x, gaussian)
grid on
