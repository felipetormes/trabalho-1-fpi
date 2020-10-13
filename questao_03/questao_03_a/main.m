
%I = imread('boldandbrash.jpg');
%I = imnoise(I,'gaussian',0.05);
%I = imnoise(I,'salt & pepper', 0.02);

I=imread('deus.jpg');
I=imnoise(I,'gaussian',0.1);
I = imnoise(I,'salt & pepper', 0.04);

a = filtro_ATM(I,3,3);
b = filtro_ATM(I,5,6);
c = filtro_ATM(I,7,9);

subplot(2, 2, 1);
imshow(I);
title('Imagem ruidosa');

subplot(2,2,2);
imshow(a);
[SNR, PSNR] = calculo_SNR_PSNR(I,a);
title(strcat('PSNR: ', strcat(num2str(PSNR(:,:,1)), strcat('___', strcat('SNR: ', num2str(SNR))))));

subplot(2,2,3);
imshow(b);
[SNR, PSNR] = calculo_SNR_PSNR(I,b);
title(strcat('PSNR: ', strcat(num2str(PSNR(:,:,1)), strcat('___', strcat('SNR: ', num2str(SNR))))));

subplot(2,2,4);
imshow(c);
[SNR, PSNR] = calculo_SNR_PSNR(I,c);
title(strcat('PSNR: ', strcat(num2str(PSNR(:,:,1)), strcat('___', strcat('SNR: ', num2str(SNR))))));
