a=wavread('steve.wav');
%adding 'curch' effect
b=a(3000:end,:);
c=a(7000:end,:);
d=a(70000:end,:);
b=padarray(b,3000-1,'post');
c=padarray(c,7000-1,'post');
d=padarray(d,70000-1,'post');
final=a+0.5*b+0.05*c+0.005*d;
soundsc(final,44100);
wavwrite(final,44100,'steve_echo.wav');
figure;
plot(a);
figure;
plot(final);
final2=final-0.5*b-0.05*c-0.005*d;%to remove the echo(this is not the actual method)
%soundsc(final2,44100);
wavwrite(final2,44100,'steve_echoRemoved.wav');
figure(3);
plot(final2);
w1=fft(a');
w2=fft(final');
figure;
subplot(2,1,1)
stem(abs(w1))
subplot(2,1,2)
stem(angle( w1))
figure;
subplot(2,1,1)
stem(abs(w1))
subplot(2,1,2)
stem(angle( w2))