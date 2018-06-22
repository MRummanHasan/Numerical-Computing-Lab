%
% Color Editor %
% RGB separate color representation
% author : github.com/MRummanHasan
%
imread('kungFu.jpg');
img = imread('kungFu.jpg');
imshow(img);

% % GreyScale
% img2 = rgb2gray(img);
% imshow(img2);

% % Black & White
% img3 = im2bw(img);
% imshow(img3);

% % Red = 1,
% % Green = 2,
% % Blue = 3

% img4 = imread('kungFu.jpg');
% img4(:,:,1) = 0; % eliminating Red
% imshow(img4);

% img5 = imread('kungFu.jpg');
% img5(:,:,2) = 0; % eliminating Green
% imshow(img5);

% img6 = imread('kungFu.jpg');
% img6(:,:,3) = 0; % eliminating Blue
% imshow(img6);