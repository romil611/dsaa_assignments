close ALL;
clear;
w=200*pi;
t=0.001;
n=0:1:1000;
x=cos(w*n*t);
figure,plot(x);
j=1;
for i=1:100
    max_val=0;
    frame=x(j:j+9);
    result(i,:) = xcorr(frame,frame);    %autocorrelation
    j=j+10;
    for k=3:12
        if max_val < result(i,k)
            max_val=result(i,k);
            place(i)=k;
        end
    end
end
figure,plot(result);
figure,plot(place);