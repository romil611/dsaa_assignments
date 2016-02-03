t = (0:1023)/1024;
for i= rand(1,3)
x = sin(2*pi*64*i*t);
y = fft(x);
z = abs(y)
figure;
plot(m);

x = circshift(x,40);
y = fft(x);
z = abs(y);
figure;
plot(z);
end
