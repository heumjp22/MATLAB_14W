clear; clc; close all;

timeObs = [0 3 6 9 12 15 18 21 24];
windObs = [3.1 3.8 5.4 7.2 8.0 7.1 5.6 4.2 3.5];
timeHourly = 0:24;
windLinear = interp1(timeObs,windObs,timeHourly,'linear');
windSpline = interp1(timeObs,windObs,timeHourly,'spline');
diffWind = windSpline - windLinear;
maxDiff = max(abs(diffWind))

plot(timeObs,windObs,'o',timeHourly,windLinear,timeHourly,windSpline)
legend('Obs','Linear','Spline')
figure 
plot(timeHourly,diffWind)
