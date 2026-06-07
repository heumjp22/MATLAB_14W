clear; clc; close all;
rng(14);
request = poissrnd(18,30,12);
dailyTotal = sum(request,2);
busyDay = dailyTotal >= 240;
numBusyDay = sum(busyDay);
hourlyMean = mean(request);
plot(dailyTotal)
hold on
plot(find(busyDay),dailyTotal(busyDay),'ro')
xlabel('Day')
ylabel('Total Requests')
title('Daily Delivery Request Simulation')
