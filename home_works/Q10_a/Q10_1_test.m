a=rgb2gray(imread('me.jpg'));
figure,imshow(a);
    q=9;
    b=padarray(a,[floor(q/2) floor(q/2)],'replicate','both');
    c=[ 1, 0, 0, 0, 0, 0, 0, 0, 0;
        0, 1, 0, 0, 0, 0, 0, 0, 0;
        0, 0, 1, 0, 0, 0, 0, 0, 0;
        0, 0, 0, 1, 0, 0, 0, 0, 0;
        0, 0, 0, 0, 1, 0, 0, 0, 0;
        0, 0, 0, 0, 0, 1, 0, 0, 0;
        0, 0, 0, 0, 0, 0, 1, 0, 0;
        0, 0, 0, 0, 0, 0, 0, 1, 0;
        0, 0, 0, 0, 0, 0, 0, 0, 1]/9;
    for i = 1:length(a)
        for j=1:length(a)
            b(i+floor(q/2),j+floor(q/2))=trace((c*double(b(i:i+q-1,j:j+q-1))));
        end
    end
    b=b(1+floor(q/2):end-floor(q/2),1+floor(q/2):end-floor(q/2));
    figure,imshow(b);
    b=padarray(b,[floor(q/2) floor(q/2)],'replicate','both');
    for i =1:length(a)
        for j=1:length(a)
            d(i,j)=b(i+4,j+4)-b(i+5,j+5);
        end
    end
%     figure,imshow(d);