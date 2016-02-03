x=wavread('drum.wav');         
y=wavread('guitar.wav');

%soundsc(x,44100); 
soundsc(y,44100);
%moving avg
for n=2:length(x),
        y1(n)=sum(x(n-1:n))/2;  
end

for n=2:length(y),
	y2(n)=sum(y(n-1:n))/2;
end
soundsc(y2,44100);



for n=101:length(x),
        y1(n)=sum(x(n-100:n))/101;  
end

for n=101:length(y),
	y2(n)=sum(y(n-100:n))/101;
end

soundsc(y2,44100);