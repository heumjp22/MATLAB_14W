clear; clc; close all;

[X,Y] = meshgrid(1:5,1:5);
H = [12 14 16 15 13;
    13 18 22 20 16;
    15 23 31 25 18;
    14 20 26 24 17;
    11 15 18 16 14];
[Xq,Yq] = meshgrid(1:0.1:5,1:0.1:5);
HqLinear = interp2(X,Y,H,Xq,Yq,'linear');
HqSpline = interp2(X,Y,H,Xq,Yq,'spline');
t = tiledlayout(1,3);
nexttile;
surf(X,Y,H)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('H')
title('Original')
nexttile;
surf(Xq,Yq,HqLinear)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('H')
title('Linear')
nexttile
surf(Xq,Yq,HqSpline)
shading interp;
colorbar;
xlabel('X')
ylabel('Y')
zlabel('H')
title('Spline')
