a=imnoise(rgb2gray(imread('camp.jpg')),'salt & pepper');
% a=a(100:00,100:200);
figure,imshow(a);
for q =[3,5,11,15]
    b=padarray(a,[floor(q/2) floor(q/2)],'replicate','both');
    temp=b;
    [len_x,len_y]=size(a);
    for i = 1:len_x
        for j=1:len_y
            c=b(i:i+q-1,j:j+q-1);
            d=[];
            for k=1:q
                d=[d c(k,:)];
            end
            d=sort(d);
            temp(i+floor(q/2),j+floor(q/2))=d(1,floor(q*q/2)+1);
        end
    end
    temp=temp(1+floor(q/2):end-floor(q/2),1+floor(q/2):end-floor(q/2));
    figure,imshow(temp);     
end