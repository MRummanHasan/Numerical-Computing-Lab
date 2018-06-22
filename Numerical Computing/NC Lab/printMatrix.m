%
%
%A =[1,2,3; 4,5,6; 7,8,9];
%
function printMatrix(A)
    for i=1:size(A,1)
        for j=1:size(A,2)
            fprintf('A(%i,%i) = %i \n', i, j, A(i,j));
        end
    end
end