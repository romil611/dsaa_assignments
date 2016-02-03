a=rgb2gray(imread('img2.png'));
figure,imshow(a);
    q=3;
    b=padarray(a,[floor(q/2) floor(q/2)],'replicate','both');
    c=[-1,-1,-1;0,0,0;1,1,1];
    [len_x,len_y]=size(a);
    for i = 1:len_x
        for j=1:len_y
           temp(i+floor(q/2),j+floor(q/2))=trace((c*double(b(i:i+q-1,j:j+q-1))));
        end
    end
    b=temp(1+floor(q/2):len_x+floor(q/2),1+floor(q/2):len_y+floor(q/2));
    q=3;
    b2=padarray(a,[floor(q/2) floor(q/2)],'replicate','both');
    c=[-1,0,1;-1,0,1;-1,0,1];
    [len_x,len_y]=size(a);
    for i = 1:len_x
        for j=1:len_y
           temp(i+floor(q/2),j+floor(q/2))=trace((c*double(b2(i:i+q-1,j:j+q-1))));
        end
    end
    b2=temp(1+floor(q/2):len_x+floor(q/2),1+floor(q/2):len_y+floor(q/2));
    temp2=zeros(i,j);
    final=sqrt(double( (b .* b) + (b2 .* b2) ))/2;
    figure,imshow(final);     
    [len_x,len_y]=size(final);
    for i = 1:len_x
        for j=1:len_y
            if final(i,j)> 15 %65 for best , 150 for high, 15 for low
                temp2(i,j)=1;
            else
                temp2(i,j)=0;
            end
        end
    end
    final=temp2;
    figure,imshow(final);     
