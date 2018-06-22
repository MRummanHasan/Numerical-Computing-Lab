clc
clear all;
fx = 'sqrt(2*x+3)';
i = 0;
No = input('No of Iterations');
x = input('Enter Initial Guess');
while(1 < No)
    
        disp(x);
        x1 = eval(fx);
        if(abs(x1-x)<0.01)
            fprintf('Root = %d',x1);
            break;
        end
        i = i+1;
        x = x1;
end