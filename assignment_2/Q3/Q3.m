 C=imread('second.png'); 
 C = imresize (C, [400,400]);
 figure
 imagesc(C);
 S=imread('first.png'); 
 S = imresize (S, [400,400]);
 figure
 imagesc(S);
[r1 c1 g1]=size(C);
for values =1:3
  CDCT=dct2(C(:,:,values));
  CDCTR= real(CDCT);
  for i=1:r1 
    for j=1:c1 
      if(CDCTR(i,j)<=40)
        b=bitget(S(i,j,values),5:8);
        x=C(i,j,values);
        for value= 1:4
          x=bitset(x,value,b(value));  
        end
        C(i,j,values)=x;
        TM(i,j,values)=1;    
      else
        TM(i,j,values)=0;     
      end   
    end    
 end
end 
figure
imagesc(C);
title('First image hidden in Second image');
E=zeros(r1,c1,3);
n=1;
for value =1:3
  for i=1: r1 
     for j=1:c1 
        if(TM(i,j,value)==1)      
          b=bitget(C(i,j,value),1:4);
          x=E(i,j,value);
          for values = 5:8
            x=bitset(x,values,b(values-4)) ;
          end
          E(i,j,value)=x/255;
        else
          E(i,j,value)=rand;
          if E(i,j,value)>0.3
            E(i,j,value)=0.3;
          elseif E(i,j,value)==0
            E(i,j,value)=rand;
          end
        end
     end
  end
end   

figure
  imagesc(E); 
  title('Extracted Image');
