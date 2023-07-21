OriginalImage = imread('C:\Users\Student\Downloads\flower.jpg');
subplot(2,2,1); imshow(OriginalImage);
title("Original Image");

scale = 0.75;
ScaledImage = imresize(OriginalImage, scale);
subplot(2,2,2); imshow(ScaledImage); 
title("Scaled Image");

deg = 25;
RotatedImage = imrotate(OriginalImage, deg);
subplot(2,2,3); imshow(RotatedImage);
title("Rotated Image");

TranslateImage = imtranslate(OriginalImage, [25, 25], "OutputView", "full");
subplot(2,2,4); imshow(TranslateImage);
title("Translated Image");
