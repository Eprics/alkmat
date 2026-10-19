%% feladat 1
syms x;
f(x) = log(2-x);
g(x) = 2 - 3*x - x^4;

fplot(f)
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-4,4];
ax.YLim = [-4,4];
ax.NextPlot = "add";
fplot(g)

%% feladat 2
a = [-2, -1];
szelo2(@fg2, a, 10^-4)
disp("8. lépésben a közelítő gyök: -1.516774")

b = [0, 1];
szelo2(@fg2, b, 10^-4)
disp("4. lépésben a közelítő gyök: 0.511225")

%% feladat 3
x1 = [-1, 0, 1, 2]
y1 = f(x1)
disp("a 2 pontban nincs értelmezve nigger")
newtonintp(x1,y1)
