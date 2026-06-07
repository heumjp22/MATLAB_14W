clear; clc; close all;

tObs = [0 1.2 2.8 4.5 7.0 8.1 9.7 12.0];
cObs = [5 6.4 9.1 8.6 6.8 5.9 5.2 4.8];
tq = 0:0.1:12;
cqLinear = interp1(tObs,cObs,tq,'linear');
cqSpline = interp1(tObs,cObs,tq,'spline');
deltaC = diff(cqLinear);
[~,idxMaxChange] = max(abs(deltaC))
changeInterval = [tq(idxMaxChange),tq(idxMaxChange+1)]
plot(tObs,cObs,'o',tq,cqLinear,tq,cqSpline)
hold on
plot(changeInterval,[cqLinear(idxMaxChange),cqLinear(idxMaxChange+1)],'ro','MarkerSize',8,'LineWidth',2)
legend('Observed','Linear','Spline','Max Change Interval')
