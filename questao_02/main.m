%% Imagem em tons de cinza 1
%%img = imread('pout.tif');
%%contrast_stretching_plot(img, 80, 160, 5, 255, 255);
%%equalizacao_histograma_plot(img);

%% Imagem em tons de cinza 2
%%img = imread('cameraman.tif');
%%contrast_stretching_plot(img, 100, 200, 30, 250, 255);
%%equalizacao_histograma_plot(img);

%% Imagem colorida 1
img = imread('coloredChips.png');
img_hsv = rgb2hsv(img);
v_channel = img_hsv(:,:,3);

%%contrast_stretching_plot(v_channel, 0.5, 0.9, 0.39, 0.73, 1);
%%img_hsv(:,:,3) = contrast_stretching(v_channel, 0.5, 0.9, 0.39, 0.73, 1);
%%rgb_img = hsv2rgb(img_hsv);
%%subplot(1,2,1); imshow(img); title('Imagem original');
%%subplot(1,2,2); imshow(rgb_img); title('Imagem modificada');

equalizacao_histograma_plot(v_channel*255);
img_hsv(:,:,3) = equalizacao_histograma(v_channel*255);
rgb_img = hsv2rgb(img_hsv);
subplot(1,2,1); imshow(img); title('Imagem original');
subplot(1,2,2); imshow(rgb_img); title('Imagem modificada');

%%img_red_channel = img(:,:,1);
%%img_green_channel = img(:,:,2);
%%img_blue_channel = img(:,:,3);

%%contrast_stretching_plot(img_red_channel, 120, 240, 10, 200, 255);
%%contrast_stretching_plot(img_green_channel, 120, 240, 50, 210, 255);
%%contrast_stretching_plot(img_blue_channel, 100, 220, 50, 200, 255);

%% Imagem colorida 2
%%img = imread('./colours-colors.jpg');
%%img_hsv = rgb2hsv(img);
%%v_channel = img_hsv(:,:,3);

%%contrast_stretching_plot(v_channel, 0.5, 0.9, 0.39, 0.73, 1);
%%img_hsv(:,:,3) = contrast_stretching(v_channel, 0.5, 0.9, 0.39, 0.73, 1);
%%rgb_img = hsv2rgb(img_hsv);
%%subplot(1,2,1); imshow(img); title('Imagem original');
%%subplot(1,2,2); imshow(rgb_img); title('Imagem modificada');

%%img_red_channel = img(:,:,1);
%%img_green_channel = img(:,:,2);
%%img_blue_channel = img(:,:,3);

%%contrast_stretching_plot(img_red_channel, 10, 240, 40, 220, 255);
%%contrast_stretching_plot(img_green_channel, 30, 160, 50, 210, 255);
%%contrast_stretching_plot(img_blue_channel, 10, 240, 25, 230, 255);