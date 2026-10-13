fplot(@fgv1)
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-4,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";
fplot(@fgv2)

%%Newton módszer
syms x;
f(x) = (sin(3*x) + nthroot(x,3)) - (log(6*x + 4) + 1/(x - 2));
%%derivált
diff(f)

newton(@fg, @dfg, 10^-4)
disp("x0=1 kp: 2. lépés után a közelítõ megoldás: 0.927924")
disp("x0=5 kp: nem konvergens")

%%Szelőmódszer
szelo(@fg, 0.5, 1.5, 10^-4)
hur(@fg, 0.5, 1.5, 10^-4)
disp("[0.5, 1.5]: 9. lépésben a közelítõ gyök: 0.927934")
szelo(@fg, 100, 200, 10^-4)

%%Lagrange
x1 = [-1; 1; 2; 3]
y1 = [-2; 0; -2; 2]
lagrange(x1,y1)

syms x;
l(x) = 2 + 0*x - 3*x^2 + 1*x^3;

fplot(l);
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-4,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";
plot(x1, y1, "*")