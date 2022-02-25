A = input("enter a vector array: ");

len = length(A);
output_array = zeros(1, len);
for i = 1:len
    output_array(i) = A(len+1-i);
end

disp(output_array)


