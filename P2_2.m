avg_moving=[0.1111 0.1111 0.1111;0.1111 0.1111 0.1111;0.1111 0.1111 0.1111];
gauss=[0.0113 0.0838 0.0113;0.0838 0.6193 0.0838;0.0113 0.1111 0.0113];
kobe=imread('kobe.jpeg');
x=imresize(kobe,1/5);
y=imresize(x,5,'nearest');
R=y(:,:,1);
G=y(:,:,2);
B=y(:,:,3);
a1=uint8(conv2(R,avg_moving));a2=uint8(conv2(G,avg_moving));a3=uint8(conv2(B,avg_moving));
b1=uint8(conv2(R,gauss));b2=uint8(conv2(G,gauss));b3=uint8(conv2(B,gauss));
A=cat(3,a1,a2,a3);  %qualify with avg moving kernel
B=cat(3,b1,b2,b3);  %qualify with guassian kernel
        %% Showing the images
figure(1)  %resized 1/5 image
imshow(x);
figure(2)  %reconstructed image
imshow(y);
figure(3)  %avg moving
imshow(A)
figure(4)  %gauss
imshow(B);