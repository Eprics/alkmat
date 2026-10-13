%syms x;
%f(x) = sin(3*x) + nthroot(x,3);
%g(x) = log(6*x + 4) + 1/(x - 2); 

fplot(@fgv1)
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-4,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";
fplot(@fgv2)

%Futtatás f9
%intervallum felezö
intfel(@fg, -0.64, 0, 10^-4)
disp('13. lépésben a közelítõ megoldás: -0.626641')

intfel(@fg, 0, 0.9, 10^-4)
disp('14. lépésben a közelítõ megoldás: 0.178912')
%húr módszer
hur(@fg, -0.64, 0, 10^-4)
disp('8 lépésben a közelítõ gyök: -0.626686')

hur(@fg, 0, 0.9, 10^-4)
disp('14 lépésben a közelítõ gyök: 0.178974')
