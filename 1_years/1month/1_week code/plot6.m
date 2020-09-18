%linspace的使用
x=linspace(5,100,20);
y=cos(3*x);
plot(x,y,'--r');
title('linspace');
xlabel('x');
ylabel('cos(3x)');
% 用法：linspace(x1,x2,N)　　
%功能：linspace是Matlab中的一个指令，用于产生x1,x2之间的N点行矢量。其中x1、x2、N分别为起始值、中止值、
% 元素个数。若缺省N，默认点数为100。在matlab的命令窗口下输入help linspace或者doc linspace可以获得该函数的帮助信息