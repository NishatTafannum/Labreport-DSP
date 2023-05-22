clc;
clear all;

t=0:0.1:10;
x= sin(t);
y= sin(t-5);
x1=square(x);
y1=square(y);
corr=xcorr(x,y);

[max_val,max_idx]=max(abs(corr));
time_delay=(max_idx-1)/10;
lag=-length(x)+1:length(y)-1;

%ploting signals
figure(2);
subplot(2,1,1);
plot(t,x,'g');
hold on;
plot(t,y,'r');
xlabel('Time');
ylabel('amplitude');
title('Square signals');
grid on;

subplot(2,1,2);
plot(lag/10,corr);
xlabel('Time');
ylabel('amplitude');

title('correlated signal');
grid on;

fprintf('Time delay between x1,y1 is %.2f sec.\n',time_delay);

