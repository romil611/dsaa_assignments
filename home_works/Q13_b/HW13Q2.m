MSE_whole = zeros(1,10);
PSNR = zeros(1,10);

for xx = 1:10
	image = rgb2gray(imread('img2.png'));
	noisy_i = imnoise (image, 'salt & pepper' , xx / 50);
	filtered_i = medfilt2(noisy_i);
	[x , y] = size(filtered_i);
	errors = double(filtered_i);
	filtered_i = double(filtered_i);
	image = double(image);
	MAX = max(max(image));
	for i = 1:x
		for j = 1:x
			errors(i,j) = (filtered_i(i,j) - image(i,j)) .^ 2;
		end
    end
	MSE = sum(sum(errors));
	MSE = MSE / (x * y);
	MSE = sqrt(MSE);
	MSE_whole(xx) = MSE;
	PSNR(xx) = 10 * log10 ( MAX / MSE );
end
figure, plot(PSNR), xlabel('probhablity density * 50'), ylabel('PSNR');
figure, plot(MSE_whole), xlabel('probhablity density * 50'), ylabel('MSE');

