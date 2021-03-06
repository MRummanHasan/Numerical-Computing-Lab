% ------Bisection Method------- %
clc;
clear;
% Input Area
TOL = 0.0001;
fx = '3*x+sin(x)-exp(x)';

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
max1 = input('enter number of iterations = ');

%bisection
for i=1:max1
    x = a;
    fa = eval(fx);
    
    x = b;
    fb = eval(fx);
    
    p = (a+b)/2;
    x = p;
    fp = eval(fx);
    
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