function y = Floyd_Steinberg(x,k)
%FLOYD_STEINBERG: algoritmo da difusão de erros de Floyd-Steinberg.
% Y = FLOYD_STEINBERG(X) algoritmo da difusao de erros de Floyd-Steinberg
% em uma imagem em tons de cinza X. X deve ter tipo double, e estar no 
% intervalo [0,255]. Y tem intervalo [0, 3].
[M,N] = size(x);
y = zeros(M,N);
x = [ zeros(M,1) x/255 zeros(M,1); zeros(1,N+2)];
x = x.*3; %amplia intervalo para [0,3]
x_save = x;
%Filtra e limiariza.
%limiares ambrangendo todas possibilidades
T1 = 0.25;
T2 = 0.5;
T3 = 0.75;

%Scanea a imagem e gera meios tons
for i = 1 : M
    for j = 2 : N + 1
        if ((k-1)*x_save(i,j)+x(i,j)) >= T3
            q = 3;
        elseif ((k-1)*x_save(i,j)+x(i,j)) >= T2
            q = 2;
        elseif ((k-1)*x_save(i,j)+x(i,j)) >= T1
            q = 1;
        else
            q = 0;
        end
        e(i,j) = x(i,j) - q;
        x(i,j+1) = x(i,j+1)+e(i,j)*7/16;
        x(i+1,j-1) = x(i+1,j-1)+e(i,j)*3/16;
        x(i+1,j) = x(i+1,j)+e(i,j)*5/16;
        x(i+1,j+1) = x(i+1,j+1)+e(i,j)*1/16;
        y(i,j-1) = q;
    end
end