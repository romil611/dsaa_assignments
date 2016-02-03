a1=imread('images_noise1.jpg');
a2=imread('images_noise2.png');
a1=im2double(a1);
a2=im2double(a2);
figure,imshow(a1);
figure,imshow(a2);
c=[1,1,1,1;
   1,1,1,1;
   1,1,1,1]/16;
for i=1:3
    a1=conv2(a1,c);
    a2=conv2(a2,c);
    figure,imshow(a1);
    figure,imshow(a2);
end

