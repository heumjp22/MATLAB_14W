clear; clc; close all;

x = linspace(-5,5,600);
y = linspace(-5,5,600);
[X,Y] = meshgrid(x,y);
Z = exp(-0.06*(X.^2+Y.^2)).*sin(4*X).*cos(3*Y)+0.2*sin(X.*Y);
surf(X,Y,Z)
shading interp;
colormap(jet);
colorbar;
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Detailed Surface Plot with Oscillation and Damping')
view(45,30)
camlight headlight
lighting phong
[maxZ,max_idx] = max(Z(:))
[minZ,min_idx] = min(Z(:))
maxPoint = [X(max_idx),Y(max_idx),Z(max_idx)]
minPoint = [X(min_idx),Y(min_idx),Z(min_idx)]
