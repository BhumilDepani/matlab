function [A, M, D] = arithmetic2(a, b)
    A = add(a, b)
function c = add(a, b)
    M = multi(a, b)
    c = a + b
    fprintf("in add")
end
    function d = multi(a, b)
        d = a * b
        fprintf("In multi")
    end
D = a/b
fprintf("final Division")
end