originalImage = imread('C:\Users\Student\Downloads\flower.jpg');

ResizedImage = imresize(originalImage, [500 500]);

[rows, ncolumns, numberOfColorChannels] = size(ResizedImage);
[Y,X]=ndgrid(1:rows,1:ncolumns);
Jf=ncolumns+1-Y;

Q1=(Y<X & X<Jf);
Q2=(Y<X & X>Jf);
Q3=(Y>X & X>Jf);
Q4=(Y>X & X<Jf);

mask = Q1 | Q2 | Q3 | Q4;
TBRL= bsxfun(@times, ResizedImage, cast(mask, 'like', ResizedImage));

imshow(TBRL);
