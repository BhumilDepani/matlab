clc
clear
close all
A = input("input the vector: ");
output_array = zeros(1, 2*length(A));

for i = 1:length(A)
    output_array(2*i -1) = A(i);
    output_array(2*i) = A(i);
end

disp(output_array)
