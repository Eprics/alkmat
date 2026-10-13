function fixpont(f,a,t)
%    a=input('Kérem a kezdöpontot: ');
    l=1; %l=0 , 0tól 100ig írja ki
    while abs(f(a)-a)>t & l<100 % l<=100 vagy l<101
        a=f(a);
        fprintf('A %d lépésben a közelítõ megoldás: %6f\n',l,a) %ha l=0, l+1
        l=l+1; % két sor megcserélése, ha l=0, 1töl írja ki
    end
end