% Shows how to mask a color image
% 2020-06-25


% rgbImage: 3-channel color image
rgbImage = imread('coloredChips.png');

% mask: image mask e.g. from color filter
mask = (rgbImage(:,:,3) > 220);


% Mask the image using bsxfun() function
maskedRgbImage = bsxfun(@times, rgbImage, cast(mask, 'like', rgbImage));


tmpImg = [rgbImage; maskedRgbImage];
imshow(tmpImg);