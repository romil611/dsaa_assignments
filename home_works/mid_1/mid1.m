%On the day when the paper were shown I was asked to show the code for Q1.B) becuase sir said he
%didn't undertand my code so here it is

a=imread('b.png');  %were supposed to write a sudo code so this step is allowed in the code
x=rgb2gray(a);      %this is also allowed because we generally(in the class and in examples) deal with gray images (code would work without this also)
n=size(x);          %given in question
n=n(1,1);           %given in question



for i=1:n                               %the code i actually wrote in exam(as it is)
y((2*i)-1,1:2:2*n)=x(i,:);              %the code i actually wrote in exam(as it is)
y(2*i,1:2:2*n)=x(i,:);                  %the code i actually wrote in exam(as it is)
end                                     %the code i actually wrote in exam(as it is)
for i=1:1:n-1                           %the code i actually wrote in exam(as it is)
y(:,2*i)=y(:,2*i -1)/2+y(:,2*i+1)/2;    %the code i actually wrote in exam(as it is)
end                                     %the code i actually wrote in exam(as it is)
y(:,2*n)=y(:,2*n-1);                    %the code i actually wrote in exam(as it is)



figure;     %this is just to compare the output and not actaully part of the code
imshow(y);  %this is just to compare the output and not actaully part of the code
figure;     %this is just to compare the output and not actaully part of the code
imshow(x);  %this is just to compare the output and not actaully part of the code
