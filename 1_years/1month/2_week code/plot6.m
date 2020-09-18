img=imread('1.jpg'); %读取矩阵
img=im2double(img); %将图像映射到[0,1]区间
[m,n,dim]=size(img); %读取图像的长宽、维数等信息
subplot(131),imshow(img),title('原图');

%原图的RGB
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);

%RGB2YIQ
Y=zeros(m,n);%亮度
I=zeros(m,n);%彩度
Q=zeros(m,n);%浓度
matrix=[0.299 0.587 0.114;0.596 -0.275 -0.321;0.212 -0.523 0.311];

%用for循环实现图像每一个点的矩阵变换，即实现模型变换
for i=1:m
    for j=1:n
        tmp=matrix*[R(i,j) G(i,j) B(i,j)]';
        Y(i,j)=tmp(1);
        I(i,j)=tmp(2);
        Q(i,j)=tmp(3);
    end
end
YIQ=cat(3,Y,I,Q);
subplot(132),imshow(YIQ),title('YIQ');%显示变换后的图形

%YUV2RGB
matrix=inv(matrix);%求逆
for i=1:m
    for j=1:n
        tmp=matrix*[Y(i,j) I(i,j) Q(i,j)]';
        R(i,j)=tmp(1);
        G(i,j)=tmp(2);
        B(i,j)=tmp(3);
    end
end

%将R,G,B三个分量赋予到img矩阵中
img(:,:,1)=R;
img(:,:,2)=G;
img(:,:,3)=B;
subplot(133),imshow(img),title('反变换');%得到反变换的图形
