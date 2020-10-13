function I_out = resize3to7color(I_in)
%Entrada: I_in uma imagem rgb com larguras m por n
%Saída: I_out uma imagem rgb com larguras m*7/3 por n*7/3 resultado de uma 
%interpolação resize 7/3 de I_in

I_r = I_in(:,:,1); % Red channel
I_g = I_in(:,:,2); % Green channel
I_b = I_in(:,:,3); % Blue channel
I_out = cat(3, resize3to7(I_r), resize3to7(I_g), resize3to7(I_b));

