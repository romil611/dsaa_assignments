a=audioread('explosion.wav');
b=audioread('gun6.wav');
a=a(:,1)';   %make it mono row matrix audio sound to make handling easier
b=b(:,1)';
len_a=length(a);
len_b=length(b);
b=padarray(b,[0 len_a-len_b],'post');
c=a+b;
d=a-b;
e=2*a;
%wavplay(a,44100);
%wavplay(b,44100);
%wavplay(c,44100);
%wavplay(d,44100);
%wavplay(e,44100);
figure(1);
plot(a);
figure(2);
plot(b);
figure(3);
plot(c);
figure(4);
plot(d);
figure(5);
plot(e);


FrequenciesRandon = 100:1:1000;

nf = 3;
Fs = 44100;                     
T=10;

EndSignal=[];

for j = 1 : nf
    t  = 0 : 1/Fs : T/nf;          
    f=randsample(FrequenciesRandon,1);
    
    data(j,:) = sin(2*pi*f*t);        
    EndSignal= [EndSignal data(j,:)];
%     wavplay(data,Fs);
   figure;
    subplot(1,3,j),plot(data(j,:)),title(f),axis([0 ,1000, -1, 1]);
    
end
figure;
plot(EndSignal);


len_data=length(data(1,:));
if len_data < len_a
    for j=1:3
        data(j,:)=padarray(data(j,:),[0 len_a-len_data],'post');
    end
else
    c=padarray(c,[0 -len_a+len_data],'post');
    d=padarray(d,[0 -len_a+len_data],'post');
    e=padarray(e,[0 -len_a+len_data],'post');
end

figure;
plot(c+data(1,:));
figure;
plot(d+data(2,:));
figure;
plot(e+data(3,:));










