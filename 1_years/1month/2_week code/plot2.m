%图像的转置
I=rgb2gray(imread('office_6.jpg'));
figure,imshow(I);                   
title('原图');
T=affine2d([0 1 0;1 0 0;0 0 1]);%构造空间变换结构T.这里为转置变换矩阵
dst=imwarp(I,T);                %对原图像I进行转置变换
figure,imshow(dst);
title('转置变换后的图片');