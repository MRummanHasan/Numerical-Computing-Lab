a = 1;
b = 3;
i = 1;
disp(a);
disp(b);
for i=1:5
   c = a+b;
   a = b;
   b = c;
   disp(c);
end