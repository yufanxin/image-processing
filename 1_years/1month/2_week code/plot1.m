% 编程实现RGB图到灰度图的转换、灰度图到二进制图的转换
data=imread('hallway.jpg');
subplot(221);
imshow(data);
gdata=rgb2gray(data); %handle with gray
subplot(222);
imshow(gdata);
n=graythresh(gdata);%寻找合适阈值
subplot(223);
bw=im2bw(gdata,n);%gray to BW
imshow(bw);
