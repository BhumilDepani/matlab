x = 0:1:10;

y = x.^2 - 10.*x + 15;

plot(x,y)



%--------------------------------------------------------
% Plot sine graph


x = 0:0.1:6;

y = sin(x);
figure
plot(x, y)
grid on


%------------------------------------------------------------

x = 0:0.1:15;
y = 2 * sin(x) .* exp(-0.2 * x)

figure
plot(x,y)
grid on