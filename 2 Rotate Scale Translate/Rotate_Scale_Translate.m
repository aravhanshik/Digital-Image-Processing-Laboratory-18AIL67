OriginalImage = imread('C:\Users\Student\Downloads\flower.jpg');
subplot(2,2,1); imshow(OriginalImage);
title("Original Image");

TranslateImage = imtranslate(OriginalImage, [50, 50], "OutputView", "full");
subplot(2,2,2); imshow(TranslateImage);
title("Translated Image")

scale = 0.5;
ScaledImage = imresize(TranslateImage, scale);
subplot(2,2,3); imshow(ScaledImage);
title("Translated Image + Scaled Image")

deg = 25;
RotatedImage = imrotate(ScaledImage, deg);
subplot(2,2,4); imshow(RotatedImage);
title("Translated Image + Scaled Image + Rotated Image")
