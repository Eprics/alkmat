%-----------fgv változó-------------
syms x;
fgv2(x) = log(6*x + 4) + 1/(x - 2); 
fgv2(1) % függvény futtatása
%-----------------------------------
fplot(@fgv1);
fplot(fgv2);
% Edit > axes properties
% File > Save as (jpg)
ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-3,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";
%------------------------------------
syms x;
f(x) = sin(3*x) + nthroot(x,3);
g(x) = log(6*x + 4) + 1/(x - 2); 

fplot(f);

ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-3,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";

fplot(g);
%------------------------------------





