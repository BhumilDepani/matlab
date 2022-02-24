clc
clear
close all
user_input = input("Please input a string: ", "s");
count_one = 0;
for i=1:length(user_input)
    if user_input(i) == '1'
        count_one = count_one + 1;
    end
end

disp(count_one)
