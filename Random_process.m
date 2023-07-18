clear all;
close all;
clc;

v1=rp1(100,1000);           % Samples of Random Process #1
v2=rp2(100,1000);           % Samples of Random Process #2
v3=rp3(100,1000);           % Samples of Random Process #3

t=1:length(v1);

mv1=mean(v1);               % Ensemble mean of Random Process #1
mv2=mean(v2);               % Ensemble mean of Random Process #2
mv3=mean(v3);               % Ensemble mean of Random Process #3

sv1=std(v1);                % Standard deviation of Random Process #1
sv2=std(v2);                % Standard deviation of Random Process #1
sv3=std(v3);                % Standard deviation of Random Process #1

plot(t,mv1);
hold on;
plot(t,mv2,'r');
hold on;
plot(t,mv3,'y');
grid on;

figure;
plot(t,sv1);
hold on;
plot(t,sv2,'r');
hold on;
plot(t,sv3,'y');
grid on;                    % Stationary or Non stationary

ve1=rp1(1,1000);
ve2=rp2(1,1000);
ve3=rp3(1,1000);

cv1=xcorr(ve1,'unbiased');
cv2=xcorr(ve2,'unbiased');
cv3=xcorr(ve3,'unbiased');

t1=-((length(cv2)-1)/2):1:((length(cv2)-1)/2);

figure;
plot(t1,cv1);
hold on;
plot(t1,cv2,'r');
hold on;
plot(t1,cv3,'y');
grid on;