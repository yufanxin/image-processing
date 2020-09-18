%指定线宽，标记大小，颜色
x=-pi:pi/10:pi;
y=tan(sin(x))-sin(tan(x));
plot(x,y,'--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',8);
% Marker: 'none'-标记  MarkerSize -标记大小 MarkerEdgeColor -标记的边框颜色 MarkerFaceColor - 标记的颜色
title('Yfx');
hold on