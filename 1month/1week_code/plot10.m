%pie函数 :饼图
x=[1 2 3 4];
explode=[0 1 0 0];
figure(1)
pie(x,explode) %按占比分
colormap jet
figure(2)
pie3(x,explode) %3维
colormap hsv