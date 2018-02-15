%Simple Calculator Power
function value = powerFunc(x,y)
    value = x;
    for i = 1:y-1
        x = x * value;
        value = x;
    end

    return
end