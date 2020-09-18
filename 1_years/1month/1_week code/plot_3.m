%图形添加注释
x=-pi/2:0.01:pi/2;
y=x+sin(x)+exp(x);
plot(x,y,'g','LineWidth',10)
grid on %显示网格
title('y的函数图像');
xlabel('x');
ylabel('y');
legend('y=x+sinx+e^{x}');