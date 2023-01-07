line_V=[-1 2 -1;-1 2 -1;-1 2 -1];
line_H=[-1 -1 -1;2 2 2;-1 -1 -1];
x=imread('page.jpg');
y=mat2gray(x);
y=y(:,:,1);
v=(conv2(y,line_V));
h=(conv2(y,line_H));
[rv,cv]=find(v==0);
[rh,ch]=find(h==0);
a=find(rh==298);
b=find(ch==696);
L=2450;
W=1700;
coordinate_x=rh(a(end));
coordinate_y=ch(b(end));
imshow(y);hold on
rectangle('Position',[coordinate_x coordinate_y  L W],'EdgeColor','r','LineWidth',2,'LineStyle','-');%rectangle properties
