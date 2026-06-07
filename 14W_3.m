clear; clc; close all;

n = 100000;

c1 = rand(1,n) < 0.97;
c2 = rand(1,n) < 0.95;
c3 = rand(1,n) < 0.96;
c4 = rand(1,n) < 0.92;
systemWorking = c1&c2&c3&c4;
reliabilityEst = mean(systemWorking)
reliabilityTrue = 0.97*0.95*0.96*0.92
absError = abs(reliabilityEst-reliabilityTrue)
failCounts = [sum(~c1),sum(~c2),sum(~c3),sum(~c4),sum(~systemWorking)]
bar(failCounts)
xticks(1:5)
xticklabels({'C1','C2','C3','C4','System'})
