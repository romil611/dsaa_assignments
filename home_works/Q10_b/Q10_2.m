image = rgb2gray(imread('me.jpg'));
imshow(image);
fft1D=@(z) fft(z,[],1).';
X=fft1D(fft1D(image));
FFT = fftshift(X);
figure,imshow(angle(FFT)),colormap gray;
FFT = abs(FFT); 
FFT = log(FFT+1);
FFT = mat2gray(FFT);
figure,imshow(FFT,[]),colormap gray;



