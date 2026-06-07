clear; clc; close all;

n = 3000;
interArrival = exprnd(1.2,1,n);
arrival = cumsum(interArrival);
service = exprnd(0.9,1,n);
startTime = zeros(size(arrival));
finishTime = zeros(size(arrival));
startTime(1) = arrival(1);
finishTime(1) = startTime(1)+service(1);
for i =2:length(arrival)
    startTime(i) = max(finishTime(i-1),arrival(i));
    finishTime(i) = startTime(i) + service(i);
end
waitingTime = startTime - arrival;
meanWait = mean(waitingTime);
maxWait = max(waitingTime);
longWaitRatio = mean(waitingTime>=5);
histogram(waitingTime,40)
title('Waiting Time Distribution in a Data Center Queue')
