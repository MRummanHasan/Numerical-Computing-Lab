function f = evenCheck(n)
%     if(mod(n,2) == 0)
%         f = 1;
%         return;
%     else
%         f = 0;
%         return;
%     end
    f = ~mod(n,2);
end