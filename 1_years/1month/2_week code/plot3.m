%图像类型转换
I=imread('indiancorn.jpg');
figure(1);
imshow(I);
X=rgb2gray(I);
figure(2);
imshow(X);
BW=dither(X);
figure(3);
imshow(BW); %筛选算法：gray to BW
n=graythresh(X)%寻找合适阈值
figure(4);
BW_1=imbinarize(X,n);
imshow(BW_1);