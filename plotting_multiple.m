x = 0:pi/100:6*pi;

y = sin(x);
subplot(2, 3, 2);
plot(x, y);

y_cos = cos(x);
subplot(2, 3, 5);
plot(x, y_cos);

