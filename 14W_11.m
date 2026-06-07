clear; clc; close all;

t = linspace(0,80,12000);
y = exp(-0.04*t).*sin(2*t)+0.3*exp(-0.01*t).*cos(7*t);
figure('Color','w')
plot(t,y,'LineWidth',1.3)
hold on
yline(0)
xlabel('Time')
ylabel('Signal Amplitude')
title('High-Resolution Damped Oscillatory Signal')
xlim([0 80])
grid on
box on
set(gca,'FontSize',12,'LineWidth',1.2)
exportgraphics(gcf,'damped_signal.png','Resolution',300)
