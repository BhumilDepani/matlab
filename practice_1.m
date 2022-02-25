user_input = input("enter a number: ");
output_array = [];
array_counter = 1;
number_to_add = 1;
while number_to_add <= user_input
    temp_counter = number_to_add;
    while temp_counter ~= 0
        output_array(array_counter) = number_to_add;
        array_counter = array_counter + 1;
        temp_counter = temp_counter - 1;
    end
    number_to_add = number_to_add + 1;
end

output_array









