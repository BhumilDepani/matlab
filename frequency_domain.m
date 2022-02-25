fs = 1200;
t = 0: 1/fs : 1;
x = sin(2 * pi * 80 * t) + sin(2 * pi * 150 * t);
y = x + randn(size(t));
subplot(2, 2, 1)
plot(t, y)
grid on

Y = fft(y, 256);

pyy = Y .* conj(Y) / 300;

f = fs / 256 * (0:127);
subplot(2,2,2);
plot(f, pyy(1:128));