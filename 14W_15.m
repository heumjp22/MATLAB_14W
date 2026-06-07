clear; clc; close all;

u = linspace(0,8*pi,500);
v = linspace(-pi,pi,180);
[U,V] = meshgrid(u,v);
X = (2+0.4*cos(V)).*cos(U);
Y = (2+0.4*cos(V)).*sin(U);
Z = 0.25*U + 0.4*sin(V);
surf(X,Y,Z)
shading interp;
colormap(parula);
colorbar;
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Twisted Parametric Ribbon Surface')
axis equal
axis tight
grid on
view(45,35)
exportgraphics(gcf,'twisted_ribbon.png','Resolution',300)
