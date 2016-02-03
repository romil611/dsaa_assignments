a=read_my_file('201330112',',');
open = str2double(a(:,3));
high = str2double(a(:,4));
low = str2double(a(:,5));
close = str2double(a(:,6));

days = 7;
alphas=7;
open_new=[];
close_new=[];
low_new=[];
high_new=[];

x1 = Q2_alpha(open,alphas);
x2 = Q2_alpha(high,alphas);
x3 = Q2_alpha(low,alphas);
x4 = Q2_alpha(close,alphas);
open_len=length(open);
high_len=length(high);
low_len=length(low);
close_len=length(close);



for i=1:days
    open_new(i,1)=x1'*open(open_len-alphas+i:99+i,1);
    open(100+i,1)=open_new(i,1);
end
for i=1:days
    high_new(i,1)=x2'*high(high_len-alphas+i:99+i,1);
    high(100+i,1)=high_new(i,1);
end
for i=1:days
    low_new(i,1)=x3'*low(low_len-alphas+i:99+i,1);
    low(100+i,1)=low_new(i,1);
end
for i=1:days
    close_new(i,1)=x4'*close(close_len-alphas+i:99+i,1);
    close(100+i,1)=close_new(i,1);
end
for i=1:107
    avg(i,1)=(open(i,1)+high(i,1)+low(i,1)+close(i,1))/4;
end

figure;
plot(low);
figure;
plot(open);
figure;
plot(close);
figure;
plot(high);
figure;
plot(avg);
avg(101:107,1)