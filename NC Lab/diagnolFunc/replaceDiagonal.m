%
%replace without built-in function
%
%
A =[1,2,3;
    4,5,6;
    7,8,9;];
B = [0,0,0];
fprintf('%i \n',s(1));

if(size(A,1) == size(B,2))
    for i=1:size(A,1)
        disp(A(i,i));
        A(i,i) = B(i);
    end
else
    disp('Array size dosenot match');
end
disp(A);
