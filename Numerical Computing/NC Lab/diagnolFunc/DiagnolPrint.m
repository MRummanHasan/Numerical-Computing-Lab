A =[1,2,3,7; 4,5,6,7; 7,8,9,7; 1,1,1,3];

s = size(A);
fprintf('%i \n',s(1));

for i=1:s(1)
    for j=1:s(2)
        if(i==j)
            fprintf('A(%i,%i) = %i \n', i, j, A(i,j));
        end
    end
end