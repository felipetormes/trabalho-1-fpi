img_1 = imread('pout.tif');
img_2 = imread('cameraman.tif');

img_1_stretched = contrast_stretching_cinza(img_1, 80, 160, 5, 255);
img_2_stretched = contrast_stretching_cinza(img_2, 100, 200, 30, 250);

img_1_equalizada = equalizacao_histograma_cinza(img_1);
img_2_equalizada = equalizacao_histograma_cinza(img_2);

figure;
subplot(2,2,1); imshow(img_1); title('Imagem original');
subplot(2,2,2); imhist(img_1);
subplot(2,2,3); imshow(img_1_stretched); title('Contrast stretching');
subplot(2,2,4); imhist(img_1_stretched);

figure;
subplot(2,2,1); imshow(img_2); title('Imagem original');
subplot(2,2,2); imhist(img_2);
subplot(2,2,3); imshow(img_2_stretched); title('Contrast stretching');
subplot(2,2,4); imhist(img_2_stretched);

figure;
subplot(2,2,1); imshow(img_1); title('Imagem original');
subplot(2,2,2); imhist(img_1);
subplot(2,2,3); imshow(img_1_equalizada); title('Histograma equalizado');
subplot(2,2,4); imhist(img_1_equalizada);

figure;
subplot(2,2,1); imshow(img_2); title('Imagem original');
subplot(2,2,2); imhist(img_2);
subplot(2,2,3); imshow(img_2_equalizada); title('Histograma equalizado');
subplot(2,2,4); imhist(img_2_equalizada);