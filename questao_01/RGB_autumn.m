i = imread('autumn.tif');
r = i(:,:,1);
g = i(:,:,2);
b = i(:,:,3);
a = zeros(size(i, 1), size(i, 2));
just_r = cat(3, r, a, a);
just_g = cat(3, a, g, a);
just_b = cat(3, a, a, b);
imshow(i); % para imagem original.
imshow(just_r); % para imagem em vermelho
imshow(just_g); %para imagem em verde
imshow(just_b); %para imagem em azul.
subplot(3,1,1); imhist(r);
subplot(3,1,2); imhist(g);
subplot(3,1,3); imhist(b);
