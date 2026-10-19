%% feladat 1
syms x;
f(x) = (log(x+1))^3;
g(x) = x^4 - 4;

fplot(f)
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-2,2];
ax.YLim = [-5,2];
ax.NextPlot = "add";
fplot(g)

%% feladat 2

hur(@fg, -0.9, -0.5, 10^-4)
disp("20 lépésben a közelítő gyök: -0.784667")

[x1,y1] = lagrange()
plot(x1, y1', '*')