T = readtable('tempdata.csv');
disp(T)


time = T.time;
temperature = T.T;


% if temperature > 30
%     fprintf("lol")
% end

for i = 1:length(temperature)
    if (temperature(i) >= 40 && temperature(i) <= 41) || (temperature(i) >= 46 && temperature(i) <= 47)
        fprintf("At time %s temperature was %.1f\260C \n", time{i}, temperature(i)) 
    end 
end
