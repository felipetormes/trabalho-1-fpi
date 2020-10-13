function I_out = ColorBilinearInterpolation(I_in)
%Entrada: I_in uma imagem rgb com larguras m por n
%Saída: I_out uma imagem rgb com larguras 2*m - 1 por 2*n - 1 resultado de
%uma interpolação bilinear com fator dois de I_in

I_r = I_in(:,:,1); % Red channel
I_g = I_in(:,:,2); % Green channel
I_b = I_in(:,:,3); % Blue channel
I_out = cat(3, BilinearInterpolation(I_r), BilinearInterpolation(I_g), BilinearInterpolation(I_b));