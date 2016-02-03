close ALL;
image = rgb2gray(imread('as.jpg'));

mean_filter = fspecial('average');
% figure, imshow(abs(image), [min(min(abs(image))) max(max(abs(image)))]), colormap gray;

MSE_whole = zeros(1,10);
PSNR = zeros(1,10);
it = 1;

for xx = 1:10
	image = rgb2gray(imread('as.jpg'));
	noisy_i = imnoise (image, 'gaussian' , 0 , xx / 10);

%	figure, imshow(abs(noisy_i), [min(min(abs(noisy_i))) max(max(abs(noisy_i)))]), colormap gray;

	filtered_i = imfilter (noisy_i, mean_filter);

%	figure, imshow(abs(filtered_i), [min(min(abs(filtered_i))) max(max(abs(filtered_i)))]), colormap gray;

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

figure, plot(PSNR);
figure, plot(MSE_whole);

