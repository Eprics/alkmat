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
g(x) = x; 

ax = gca();
ax.XAxisLocation = "origin";
ax.YAxisLocation = "origin";
ax.XLim = [-3,3];
ax.YLim = [-3,3];
ax.NextPlot = "add";

fplot(g);
fplot(f);

%----------------futtatás--------------------
%------------fixpont keresés-----------------
fixpont(f,10^-4)
%zhn válasz
disp("Nagyon lassú, nem konvergens")

fixpont(@fgv1, 10^-4)
disp("nem konvergens")

%-------külsö fájlból, prezentációból-------
%---------4x^5 - x^3 + 2 = 0--------------
%--------------------------
fixpont(@fix1, 10^-4)
disp("x0=1 kezdőpontból végtelenbe tart")
fixpont(@fix2, 10^-4)
disp("x0=1 kezdőpontból a megoldás: -0.931717")
%mindegyik jó megoldás

%---------------------



