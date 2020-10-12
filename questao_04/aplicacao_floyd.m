% Aplicação do algoritmo Floyd-Steinberg Dithering na imagem do cameraman
I_1 = double(imread('./cameraman.tif'));
figure, imshow(uint8(I_1)), title('Imagem cameraman original com 8 bits/pixel'),
I_Floyd_1 = Floyd_Steinberg(I_1, 2);
figure, imshow(I_Floyd_1,[]), title('Imagem cameraman após algoritmo de Floyd-Steinberg Dithering com 2 bits/pixel');
%-----------------------------------------------------------------------------------------------------------------
% Aplicação do algoritmo Floyd-Steinberg Dithering na imagem da Lena
I_2 = double(imread('./lena.jpg'));
figure, imshow(uint8(I_2)), title('Imagem lena original com 8 bits/pixel'),
I_Floyd_2 = Floyd_Steinberg(I_2, 2);
figure, imshow(I_Floyd_2,[]), title('Imagem lena após algoritmo de Floyd-Steinberg Dithering com 2 bits/pixel');