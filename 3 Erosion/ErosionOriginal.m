OriginalImage=imread("C:\Users\Student\Downloads\tiger.jpg");
figure(1);
subplot(3,2,1);
imshow(OriginalImage);
title("Original Image");

blackwhite=im2bw(OriginalImage);
subplot(3,2,2);
imshow(blackwhite);
title("Black & White");

SE1 = strel('disk',5,4);
ErodedImage1 = imerode(blackwhite,SE1);
subplot(3,2,3);
imshow(ErodedImage1);
title("Erosion Disk 5 Radius 4 lines");

sub = imabsdiff(blackwhite,ErodedImage1);
subplot(3,2,4);
imshow(sub);
title("Subtracted Image");

SE2 = strel('square',5);
ErodedImage2 = imerode(blackwhite,SE2);
subplot(3,2,5);
imshow(ErodedImage2);
title("Erosion Square 5");

sub1=imabsdiff(blackwhite,ErodedImage2);
subplot(3,2,6);
imshow(sub1);
title("Subtracted Image");

SE3 = strel('disk',5,4);
DilatedImage1 = imdilate(blackwhite,SE3);
figure(2);
subplot(3,2,1);
imshow(OriginalImage);
title("Original Image");
subplot(3,2,2);
imshow(blackwhite);
title("Black & White");
subplot(3,2,3);
imshow(DilatedImage1);
title("Dilation Disk 5 Radius 4 Lines");

sub2=imabsdiff(blackwhite,DilatedImage1);
subplot(3,2,4);
imshow(sub2);
title("Subtracted Image");

SE4 = strel('square',5);
DilatedImage2 = imdilate(blackwhite,SE4);
subplot(3,2,5);
imshow(DilatedImage2);
title("Dilation square 5");

sub3 = imabsdiff(blackwhite,DilatedImage2);
subplot(3,2,6);
imshow(sub3);
title("Subtracted Image");
