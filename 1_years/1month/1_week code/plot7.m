% plot绘制包络线
clear all; clc; close all;
fs=400;                                 % 采样频率
N=400;                                  % 数据长度
n=0:1:N-1;
dt=1/fs;
t=n*dt;                                 % 时间序列
A=0.5;                                  % 相位调制幅值
x=(1+0.5*cos(2*pi*5*t)).*cos(2*pi*50*t+A*sin(2*pi*10*t));  % 信号序列
z=hilbert(x');                          % 希尔伯特变换
a=abs(z);                               % 包络线
figure;
plot(x);hold on ;plot(a); hold on; plot((-1)*a,'b')
%无信号处理库，运行错误
