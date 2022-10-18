clc
clear all
close all
A=2;
B=0;
C=4;
D=2;
E=6;
F=2;
G=2;
H=1;

a1=F+1;
a2=F+3;
a3=F+2;
a4=F+4;

f1=G+5;
f2=G+7;
f3=G+1;
f4= G+2;

time_duration = 0.2;
a = [a1 a2 a3 a4];
f = [f1 f2 f3 f4]; 
analog_t = 0:0.0001:time_duration;
analog_sig = a(1)*sin(2*pi*f(1)*analog_t) + a(2)*cos(2*pi*f(2)*analog_t) + a(3)*sin(2*pi*f(3)*analog_t)+ a(4)*sin(2*pi*f(4)*analog_t);
figure
subplot(1,2,1)
plot(analog_t, analog_sig,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')

fs = 250;
ts = 1/fs;

samp_t = 0:1/fs:time_duration;
samp_sig = a(1)*sin(2*pi*f(1)*samp_t) + a(2)*cos(2*pi*f(2)*samp_t) + a(3)*sin(2*pi*f(3)*samp_t + pi/4);
subplot(1,2,2)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])




