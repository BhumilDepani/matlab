clc
clear
close all

N = input("Enter a number: ");
number = [];
number_square = [];
counter = 1;
for i = 2:2:N
    number(counter) = i;
    number_square(counter) = i^2;
    counter = counter + 1;
end

T = table(number', number_square');
disp(T)
