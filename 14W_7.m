clear; clc; close all;

rng(7);
t = linspace(0,30,300);
trueSignal = 2*sin(0.4*t)+0.7*cos(1.5*t);
obsSignal = trueSignal + 0.25*randn(1,300);
missingidx = randperm(300,45);
obsSignal(missingidx) = NaN;
valid = ~isnan(obsSignal);
recLinear = interp1(t(valid),obsSignal(valid),t,'linear');
recSpline = interp1(t(valid),obsSignal(valid),t,'spline');
rmseLinear = sqrt(mean((recLinear-trueSignal).^2))
rmseSpline = sqrt(mean((recSpline-trueSignal).^2))

plot(t,trueSignal,t,obsSignal,t,recLinear,t,recSpline)
legend('True','Obs','Linear','Spline')
