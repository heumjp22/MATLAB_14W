clear; clc; close all;
n = 50000;
batteryLife = 9.5 + 1.2*randn(1,n);
lowBattery = batteryLife < 8;
normalBattery = batteryLife>=8 & batteryLife<11;
excellentBattery = batteryLife>=11;
gradeCounts = [sum(lowBattery),sum(normalBattery),sum(excellentBattery)]
gradeRatio = [mean(lowBattery),mean(normalBattery),mean(excellentBattery)]
histogram(batteryLife,50)
hold on
xline(8)
xline(11)
figure 
bar(gradeCounts)
xticks(1:3);
xticklabels({'Low','Normal','Excellent'})
