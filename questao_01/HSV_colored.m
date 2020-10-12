imread('coloredChips.png')
i = rgb2hsv(ans);
h = i(:,:,1);
s = i(:,:,2);
v = i(:,:,3);
imshow(i);
imshow(h);
imshow(s);
imshow(v);
subplot(3,1,1); imhist(h);
subplot(3,1,2); imhist(s);
subplot(3,1,3); imhist(v);
