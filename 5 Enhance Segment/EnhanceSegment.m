img=imread("C:\Users\Student\Downloads\flower.jpg");

gray=rgb2gray(img);
enhanced1=imadjust(gray);
figure(1);
subplot(1,2,1);imshow(img);title("ORIGINAL IMAGE");
subplot(1,2,2);imshow(enhanced1);title("ENHANCED");

img2=imread("C:\Users\Student\Downloads\flower.jpg");
enhanced2=imadjust(img2,[0.2,0.3,0;0.5,0.6,1],[]);
figure(2);
subplot(1,2,1);imshow(img2);title("ORIGINAL IMAGE");
subplot(1,2,2);imshow(enhanced2);title("ENHANCED");

sharp=imsharpen(img);
figure(3);
subplot(1,2,1);imshow(img);title("ORIGINAL IMAGE");
subplot(1,2,2);imshow(sharp);title("SHARPENED");

hist=histeq(gray);
figure(4);
subplot(1,2,1);imshow(gray);title("ORIGINAL IMAGE");
subplot(1,2,2);imshow(hist);title("ENHANCED IMAGE");

img3=imread("C:\Users\Student\Downloads\flower.jpg");
figure(5);
subplot(1,2,1);imshow(img3);title("ORIGINAL IMAGE");
bw=im2bw(img3);
se=strel("disk",5,4);
dilate=imdilate(bw,se);
edges=imabsdiff(bw,dilate);
filled=imfill(edges,"holes");
final=bsxfun(@times,img3,cast(filled,"like",img3));
subplot(1,2,2);imshow(final);title("SEGMENTED IMAGE");
