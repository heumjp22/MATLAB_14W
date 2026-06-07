clear; clc; close all;

n = 20000;
hasClaim = rand(1,n)<0.06;
claimAmount = 800 + 250*randn(1,n);
claimAmount(claimAmount<0) = 0;
claimPayment = hasClaim.*claimAmount;
totalPayment = sum(claimPayment)
meanPayment = mean(claimPayment)
meanClaimOnly = mean(claimPayment(hasClaim))
numLargeClaim = sum(claimPayment>=1200)

histogram(claimPayment)
figure
histogram(claimPayment(claimPayment>0))
