x=rand(1,10000);
b=[];
z(1:100000)=0;
m=100;
for i=1:100000
    if i<1001
        b(i)=x(i);
    else
        b(i)=0.97*b(i-m);
    end
end
soundsc(b,44100);