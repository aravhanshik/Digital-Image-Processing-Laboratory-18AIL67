OriginalImage = imread("C:\Users\Student\Downloads\bug.png");
figure(1); 
subplot(1,2,1); imshow(OriginalImage); title('Original Image');

GrayImage = rgb2gray(OriginalImage);
subplot(1,2,2); imshow(GrayImage); title('GrayScale Image');

BW1 = edge(GrayImage);
figure(2); 
subplot(2,2,1);imshow(BW1); title('Sobel Edge Detection');

BW2 = edge(GrayImage, "prewitt");
subplot(2,2,2); imshow(BW2); title('Prewitt Edge Detection');

BW3 = edge(GrayImage,"roberts");
subplot(2,2,3); imshow(BW3); title('Roberts Edge Detection');

BW4 = edge(GrayImage,"log");
subplot(2,2,4); imshow(BW4); title('LoG Edge Detection');

BW5 = edge(GrayImage,"canny");
figure(3);
subplot(2,2,1); imshow(BW5); title('Canny Edge Detection');

BW6 = edge(GrayImage,"canny_old");
subplot(2,2,2); imshow(BW6); title('Canny Old Edge Detection');

BW7 = edge(GrayImage,"zerocross");
subplot(2,2,3); imshow(BW7); title('Zerocross Edge Detection');

BW8 = edge(GrayImage,"approxcanny");
subplot(2,2,4); imshow(BW8); title('Aprox Canny Edge Detection');

Ent = entropy(GrayImage);
disp("Entropy ="); disp(Ent);

Entfil = entropyfilt(GrayImage);
figure(4); 
subplot(2,2,1); imshow(Entfil); title('Entropy Filtered Image');

Regfil = rangefilt(GrayImage);
subplot(2,2,2); imshow(Regfil); title('Region Filtered Image');

Stdfil = stdfilt(GrayImage);
subplot(2,2,3); imshow(Stdfil); title('Standard Filtered Image');

GLCM = graycomatrix(GrayImage);
Stats = graycoprops(GLCM);
disp(Stats);
