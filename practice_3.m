clc
clear
close all

user_input = input("Please enter a number: ");

output_array = zeros(user_input, user_input);

for row = 1:user_input
    for column = 1:user_input
        output_array(row, column) = row*column;
    end
end
disp(output_array)