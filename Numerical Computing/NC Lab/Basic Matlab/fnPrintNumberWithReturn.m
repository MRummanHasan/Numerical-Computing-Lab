function fact = fnPrintNumberWithReturn(a)
    a = input('number ? ');
    fact = 1;
    for i = 1:a
        fact = fact * i;        
    end
    disp(fact);
end