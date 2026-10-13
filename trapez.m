function trapez(f,a,b)
    n=input('Hány részre osszuk az intervallumot? ');
    h=(b-a)/n;
    x=a:h:b;
    m=f(a)+f(b);
    for i=2:n   
        m=m+2*f(x(i));
    end
    m=h/2*m;
    fprintf('A közelítõ integrál %d részre osztva az intervallumot: %6f\n',n, m)
end