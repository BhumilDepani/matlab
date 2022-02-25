clc
clear
close all

A = input("Enter you input: ");

[row, column] = size(A);

if row ==1 || column == 1
    y = 1;
else
    y = 0;
end

disp(y)

