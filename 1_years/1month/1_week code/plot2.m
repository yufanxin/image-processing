%连续函数
x1=0:pi/6:12;y1=cos(3*x1);
x2=0:pi/180:360;y2=cos(3*x2);
figure(1)
subplot(2,2,1);plot(x1,y1,'.','MarkerSize',5);xlim([0 2*pi])
subplot(2,2,2);plot(x1,y1,'LineWidth',2);xlim([0 2*pi])
subplot(2,2,3);plot(x2,y2,'o','MarkerSize',3);xlim([0 2*pi])
subplot(2,2,4);plot(x2,y2,'LineWidth',2);xlim([0 2*pi])

