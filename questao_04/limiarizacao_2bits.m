%limiarização em 2 bits/pixel na imagem do cameraman
I_1 = double(imread('./cameraman.tif'));
% re-quantiza em 2 bits/pixel - limiarização
I_q_1 = floor(I_1./max(max(I)).*(2^2));
figure, imshow(uint8(I_1)), title('Imagem cameraman original com 8 bits/pixel');
figure, imshow(uint8(I_q_1 .* 90)), title('Imagem cameraman limiarizada em 2 bits/pixel');
%-----------------------------------------------------------------------------------------------------------------
%limiarização em 2 bits/pixel na imagem da Lena
I_2 = double(imread('./lena.jpg'));
% re-quantiza em 2 bits/pixel - limiarização
I_q_2 = floor(I_2./max(max(I)).*(2^2));
figure, imshow(uint8(I_2)), title('Imagem lena original com 8 bits/pixel');
figure, imshow(uint8(I_q_2 .* 90)), title('Imagem lena limiarizada em 2 bits/pixel');
