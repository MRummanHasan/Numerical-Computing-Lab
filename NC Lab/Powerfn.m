%Simple Calculator Power
function value = powerFunc(x,y)
        val = x;
    for i = 1:y-1
        x = x * val;
        value = x;
    end

    return
end