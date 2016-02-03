w=200*pi;
t=0.001;
n=0:1:1000;
x=cos(w*n*t);
figure,plot(x);
result=zeros(1,10);
j=1;
for i=1:100
    frame=x(j:j+9);
    result(i)=sum(frame.*frame);    %autocorrelation
    j=j+10;
end
figure,plot(result);
max_val=0;
place=0;
for i=3:12
    if max_val < result(i)
        max_val=result(i);
        place=i;
    end
end

place/1000


