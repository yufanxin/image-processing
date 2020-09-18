%bar函数-二维直方图
x=[-2 -1 0 ];
y=[6 8 7 4 5;4 8 1 12 0;4 6 21 1 3];
subplot(1,2,1),bar(x,y,'stacked') %堆叠条形图
xlabel('x'),ylabel('\Sigma y'),colormap(cool)
legend('因素1','因素2','因素3')
subplot(1,2,2),bar(x,y,'grouped') %水平
xlabel('y');ylabel('x')