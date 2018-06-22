
rw = input('Enter row = ');
col = input('Enter col = ');
m = []; %empty array initialized

for i=1:rw
    for j=1:col
        fprintf('Input A(%i,%i) = ',i,j);
        val = input('');
        m(i,j) =  val;
    end
end
disp(m);
