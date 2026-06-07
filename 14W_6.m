clear; clc; close all;

n = 1000;
m = 100;

steps = rand(n,m)<0.56;
steps = 2*steps - 1;
walks = cumsum(steps);
plot(walks)
finalPosition = walks(end,:);
meanFinal = mean(finalPosition)
stdFinal = std(finalPosition)
rightDriftRatio  = mean(finalPosition>=100)
figure 
histogram(finalPosition,30)
