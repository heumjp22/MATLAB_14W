clear; clc; close all;

x = linspace(-4,4,300);
y = linspace(-4,4,300);
[X,Y] = meshgrid(x,y);
Z1 = sin(X).*cos(Y);
Z2 = exp(-0.08*(X.^2 + Y.^2));
Z3 = sin(X.^2+Y.^2);
t = tiledlayout(1,3);
nexttile;
surf(X,Y,Z1)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Z_1 = sin(X)cos(Y)')
view(45,30)
nexttile;
surf(X,Y,Z2)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Z_2 = e^{-0.08(X^2+Y^2)}')
view(45,30)
nexttile;
surf(X,Y,Z3)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Z_3 = sin(X^2+Y^2)')
view(45,30)
title(t,'Comparison of Three Surface Structures')
