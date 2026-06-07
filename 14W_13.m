clear; clc; close all;

x = linspace(-8,8,800);
y = linspace(-8,8,800);
[X,Y] = meshgrid(x,y);
Z = (cos(2*X).*sin(3*Y))./(1+0.1*(X.^2 + Y.^2));
contourf(X,Y,Z,70,'LineColor','none')
colormap(parula);
colorbar;
axis equal;
grid on
box on
xlabel('X coordinate')
ylabel('Y coordinate')
title('High-Resolution Filled Contour of a Damped Oscillatory Field')
set(gca,'FontSize',12,'LineWidth',1.2)
