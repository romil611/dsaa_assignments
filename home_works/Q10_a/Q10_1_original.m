a=imnoise(rgb2gray(imread('me.jpg')),'gaussian');
figure,imshow(a);
% for q =floor(1.5+6*rand(1,4))*2 +1
    q=3;
    b=padarray(a,[floor(q/2) floor(q/2)],'replicate','both');
    c=ones(q)/(q^2);
    for i = 1:length(a)
        for j=1:length(a)
            b(i+floor(q/2),j+floor(q/2))=trace((c*double(b(i:i+q-1,j:j+q-1))));
        end
    end
    b=b(1+floor(q/2):end-floor(q/2),1+floor(q/2):end-floor(q/2));
    figure,imshow(b);     
% end