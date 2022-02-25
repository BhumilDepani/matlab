x = 3;
y = 4;

w = (x^2 * y^3) / (x - y)^2

z = 2 / (y^2 * (x + y)^2)


%----------------------------------------------------------------
% To convert temperature from Fahrenheit to Kelvin


fahrenheit = input("Enter the temperature in Fahrenheit: ");
kelvin = ((5/9) * (fahrenheit - 32)) + 273


%----------------------------------------------------------------
%To find Cartesian Distance between 2 user given points

x1 = input("Enter value of x1: ");
x2 = input("Enter value of x2: ");
y1 = input("Enter value of y1: ");
y2 = input("Enter value of y2: ");

distance = sqrt((x1 - x2)^2 + (y1 - y2)^2)
