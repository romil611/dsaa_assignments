a=im2double(rgb2gray(imread('camp.jpg')));
w=fspecial('motion',10,180);
q=imfilter(a,w,'circular');
figure,imshow(q);
e=deconvwnr(q,w,0);
figure,imshow(e);
w

