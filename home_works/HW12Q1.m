img1 = rgb2gray(imread('me1.jpg'));
img2 = rgb2gray(imread('me2.jpg'));
dft_1 = fft2 ( img1 );
dft_2 = fft2 ( img2 );
i_swapped1 = ifft2 ( abs(dft_1) .* (cos(angle(dft_2)) + i * sin (angle(dft_2))));
i_swapped2 = ifft2 ( abs(dft_2) .* (cos(angle(dft_1)) + i * sin (angle(dft_1))));
figure, imshow(abs(i_swapped1), [min(min(abs(i_swapped1))) max(max(abs(i_swapped1)))]), colormap gray;
figure, imshow(abs(i_swapped2), [min(min(abs(i_swapped2))) max(max(abs(i_swapped2)))]), colormap gray;
