img = imread("C:\Users\Student\Downloads\tiger.jpg");
figure(1);
subplot(3,3,1);
imshow(img);
title("Original Image");

b2w = im2bw(img);
subplot(3,3,2);
imshow(b2w);
title("Black & White");

% Erosion with diamond-shaped structuring element
SE1 = strel('diamond', 5);
eroded_diamond = imerode(b2w, SE1);
subplot(3,3,3);
imshow(eroded_diamond);
title("Erosion with Diamond");

% Erosion with disk-shaped structuring element
SE2 = strel('disk', 5);
eroded_disk = imerode(b2w, SE2);
subplot(3,3,4);
imshow(eroded_disk);
title("Erosion with Disk");

% Erosion with octagon-shaped structuring element
SE3 = strel('octagon', 6);
eroded_octagon = imerode(b2w, SE3);
subplot(3,3,5);
imshow(eroded_octagon);
title("Erosion with Octagon");

% Erosion with line-shaped structuring element
SE4 = strel('line', 5, 30);
eroded_line = imerode(b2w, SE4);
subplot(3,3,6);
imshow(eroded_line);
title("Erosion with Line");

% Erosion with rectangle-shaped structuring element
SE5 = strel('rectangle', [5 10]);
eroded_rectangle = imerode(b2w, SE5);
subplot(3,3,7);
imshow(eroded_rectangle);
title("Erosion with Rectangle");

% Erosion with square-shaped structuring element
SE6 = strel('square', 5);
eroded_square = imerode(b2w, SE6);
subplot(3,3,8);
imshow(eroded_square);
title("Erosion with Square");

% Erosion with cube-shaped structuring element
SE7 = strel('cube', 5);
eroded_cube = imerode(b2w, SE7);
subplot(3,3,9);
imshow(eroded_cube);
title("Erosion with Cube");


figure(2);
subplot(3,3,1);
imshow(img);
title("Original Image");
subplot(3,3,2);
imshow(b2w);
title("Black and White");

% Dilation with diamond-shaped structuring element
SE8 = strel('diamond', 5);
dilated_diamond = imdilate(b2w, SE8);
subplot(3,3,3);
imshow(dilated_diamond);
title("Dilation with Diamond");

% Dilation with disk-shaped structuring element
SE9 = strel('disk', 5);
dilated_disk = imdilate(b2w, SE9);
subplot(3,3,4);
imshow(dilated_disk);
title("Dilation with Disk");

% Dilation with octagon-shaped structuring element
SE10 = strel('octagon', 6);
dilated_octagon = imdilate(b2w, SE10);
subplot(3,3,5);
imshow(dilated_octagon);
title("Dilation with Octagon");

% Dilation with line-shaped structuring element
SE11 = strel('line', 5, 30);
dilated_line = imdilate(b2w, SE11);
subplot(3,3,6);
imshow(dilated_line);
