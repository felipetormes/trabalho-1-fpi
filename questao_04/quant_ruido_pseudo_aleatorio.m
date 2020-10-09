% quantização com ruído pseudo aleatório em 2 bits/pixel imagem do cameraman
I_1 = double(imread('./cameraman.tif'));
% re-quantiza em 2 bits/pixel com ruído pseudo-aleatório
[sx_1,sy_1] = size(I_1);
A_1 = max(max(I_1))/5;
I_noise_1 = rand(sx_1,sy_1) .* A_1;
I_qn_1 = floor((I_1 + I_noise_1)./max(max(I_1 + I_noise_1)).*(2^2));
figure, imshow(uint8(I_1)), title('Imagem cameraman original com 8 bits/pixel');
figure, imshow(uint8(I_qn_1 .* 90)), title('Imagem cameraman em 2 bits/pixel aplicado algoritmo de dithering');
%-----------------------------------------------------------------------------------------------------------------
%quantização com ruído pseudo aleatório em 2 bits/pixel imagem da Lena
I_2 = double(imread('./lena.jpg'));
% re-quantiza em 2 bits/pixel com ruído pseudo-aleatório
[sx_2,sy_2] = size(I_2);
A_2 = max(max(I_2))/5;
I_noise_2 = rand(sx_2,sy_2) .* A_2;
I_qn_2 = floor((I_2 + I_noise_2)./max(max(I_2 + I_noise_2)).*(2^2));
figure, imshow(uint8(I_2)), title('Imagem lena original com 8 bits/pixel');
figure, imshow(uint8(I_qn_2 .* 90)), title('Imagem lena em 2 bits/pixel aplicado algoritmo de dithering');










