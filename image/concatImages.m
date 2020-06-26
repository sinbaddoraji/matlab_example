% Shows how to concat 2 images vertically and horizontally
% 2020-06-25

img = imread('coloredChips.png');

imgV1 = [img; img];
imshow(imgV1);

imgV2 = cat(1, img, img);
imshow(imgV2);

imgH = cat(2, img, img);
imshow(imgH);
