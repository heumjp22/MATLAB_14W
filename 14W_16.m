clear; clc; close all;

rng(3);

t = linspace(0,60,6000);
signal = sin(0.5*t)+0.4*sin(3*t)+0.15*randn(1,6000);
trend = movmean(signal,200);
x = linspace(-5,5,300);
y = linspace(-5,5,300);
[X,Y] = meshgrid(x,y);
Z = exp(-0.05*(X.^2 + Y.^2)).*cos(3*X).*sin(2*Y);
tl = tiledlayout(2,2);
nexttile
plot(t,signal)
hold on
plot(t,trend)
xlabel('t')
ylabel('signal')
title('s(t)')
legend('Signal','Trend')
grid on
nexttile
surf(X,Y,Z)
shading interp;
colormap(parula)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Z')
grid on
colorbar
nexttile
contourf(X,Y,Z,50,'LineColor','none')
xlabel('X')
ylabel('Y')
colorbar
title('contour')
title(tl,'Integrated Visualization Dashboard')
exportgraphics(gcf,'visualization_dashboard.png','Resolution',300)
