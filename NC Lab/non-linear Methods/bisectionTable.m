% ------Bisection tableArrethod------- %
clc;clear;
% Input Area
TOL = 0.0001;fx = '3*x+sin(x)-exp(x)';
while(1)
    a = input('enter first value: ');
    b = input('enter second value: ');
    
    x = a;
    fx1 = eval(fx);
    x = b;
    fx2 = eval(fx);
    
    if fx1*fx2 < 0
        disp('root lies between these interval');
        break;
    end
    disp('wrong interval. try again!');
end
tableArrax1 = input('enter number of iterations = ');

%bisection
tableArr = [];

for i=1:tableArrax1
    tableArr(i,1) = i;
    
    x = a;
    fa = eval(fx);
    tableArr(i,2) = a;
    tableArr(i,3) = fa;
    
    x = b;
    fb = eval(fx);
    tableArr(i,4) = b;
    tableArr(i,5) = fb;
    
    p = (a+b)/2;
    x = p;
    fp = eval(fx);
    tableArr(i,6) = p;
    tableArr(i,7) = fp;
    
    if abs(fp)< TOL
        fprintf('The root is %f \n ', p);
        break;
    end
    
    if fp*fa < 0
        b=p;
    else
        a=p;
    end
end
% fprintf('  iteration      a        fa        b         fb         p        fp\n');
% disp(tableArr);

for i=1:size(tableArr,1)
    fprintf('%.0f \t %.2f \t %.2f \t %.2f \t %.2f \t %.2f \t %.2f \t \n',tableArr(i,1),tableArr(i,2),tableArr(i,3),tableArr(i,4),tableArr(i,5),tableArr(i,6),tableArr(i,7));
end