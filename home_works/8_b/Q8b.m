x = 1:1:1024;
a=sin(2*pi*x/1024 + 23);
b=cos(2*pi*x*1000/1024);
c=cos(2*pi*x*128/1024+45);
figure;
stem(x,fft(a));
figure;
stem(x,fft(b));
figure;
stem(x,fft(c));
y(1,:)=2*a+3*b;
y(2,:)=4*b-2*c;
y(3,:)=3*c+a;
for i=1:3
    z(i,:)=fft(y(i,:));
    figure;
    stem(x,y(i,:));
    figure;
    stem(x,z(i,:));
end
clap=wavread('clap.wav');
guitar=wavread('guitar.wav');
drum=wavread('drum.wav');
figure;
stem(abs(fft(clap)));
figure;
stem(abs(fft(guitar)));
figure;
stem(abs(fft(drum)));



