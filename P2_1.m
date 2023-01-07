identity=[0 0 0;0 1 0;0 0 0];
line_V=[-1 2 -1;-1 2 -1;-1 2 -1];
line_H=[-1 -1 -1;2 2 2;-1 -1 -1];
avg_moving=[0.1111 0.1111 0.1111;0.1111 0.1111 0.1111;0.1111 0.1111 0.1111];
gauss=[0.0113 0.0838 0.0113;0.0838 0.6193 0.0838;0.0113 0.1111 0.0113];
outline=[-1 -1 -1;-1 8 -1;-1 -1 -1];
blur=[0.0625 0.125 0.0625;0.125 0.25 0.125;0.0625 0.125 0.0625];
sharpen=[0 -1 0;-1 5 -1;0 -1 0];
house=imread('house.jpg');
R=house(:,:,1);
G=house(:,:,2);
B=house(:,:,3);
a1=uint8(conv2(R,sharpen));a2=uint8(conv2(G,sharpen));a3=uint8(conv2(B,sharpen));
b1=uint8(conv2(R,blur));b2=uint8(conv2(G,blur));b3=uint8(conv2(B,blur));
c1=uint8(conv2(R,outline));c2=uint8(conv2(G,outline));c3=uint8(conv2(B,outline));
d1=uint8(conv2(R,gauss));d2=uint8(conv2(G,gauss));d3=uint8(conv2(B,gauss));
e1=uint8(conv2(R,avg_moving));e2=uint8(conv2(G,avg_moving));e3=uint8(conv2(B,avg_moving));
f1=uint8(conv2(R,line_H));f2=uint8(conv2(G,line_H));f3=uint8(conv2(B,line_H));
g1=uint8(conv2(R,line_V));g2=uint8(conv2(G,line_V));g3=uint8(conv2(B,line_V));
h1=uint8(conv2(R,identity));h2=uint8(conv2(G,identity));h3=uint8(conv2(B,identity));
A=cat(3,a1,a2,a3); %sharpen kernel
B=cat(3,b1,b2,b3); %blur kernel
C=cat(3,c1,c2,c3); %outline kernel
D=cat(3,d1,d2,d3); %gauss kernel
E=cat(3,e1,e2,e3); %avg moving kernel
F=cat(3,f1,f2,f3); %line_H kernel
G=cat(3,g1,g2,g3); %line_V kernel
H=cat(3,h1,h2,h3); %identity kernel
type=input('Which Kernel?');
if(type==1)
   disp('sharpen');
   imshow(A);
elseif(type==2)
    disp('blur');
    imshow(B);
elseif(type==3)
    disp('outline');
    imshow(C);
elseif(type==4)
    disp('gauss');
    imshow(D);
elseif(type==5)
    disp('avg moving');
    imshow(E);
elseif(type==6)
    disp('line H');
    imshow(F);
elseif(type==7)
    disp('line V');
    imshow(G);
elseif(type==8)
    disp('Identity');
    imshow(H);
else
    disp('No kernel found');
end

