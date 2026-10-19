function szelo2(f,v,t)
a = v(1);
b = v(2);
    p=b-f(b)*(b-a)/(f(b)-f(a));
    l = 1;
    while abs(f(p))>=t && l < 100 
        if f(a)-f(b) == 0
            fprintf('Nem található megoldás, a szelõ párhuzamos az x tengellyel!\n')
            return
        end
        p=b-f(b)*(b-a)/(f(b)-f(a));
        fprintf('%d. lépésben a közelítõ gyök: %6f\n',l,p)
        a=b;
        b=p;
        l=l+1;
    end
end
