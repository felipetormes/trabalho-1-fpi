function I_out = BilinearInterpolation(I_in)
%Entrada: I_in uma imagem em tons de cinza com larguras m por n
%Saída: I_out uma imagem em tons de cinza com larguras 2*m - 1 por 2*n - 1
%resultado de uma interpolação bilinear com fator dois de I_in

%Inicialização da matriz da imagem de saída
[m,n]=size(I_in);
I_out = zeros(2*m - 1,2*n - 1);

%Escrita dos valores originais
x = 1;
y = 1;
for i=1:m
    for j=1:n
        I_out(x,y) = I_in(i,j);
        y = y + 2;
    end;
    y = 1;
    x = x + 2;
end;

%Escrita dos valores médios das colunas
x = 1;
y  = 1;
for i=1:m
    for j=1:n - 1
        I_out(x,y + 1) = (1/2)*(I_out(x,y) + I_out(x,y + 2));
        y = y + 2;
    end;
    y = 1;
    x = x + 2;
end;

%Escrita dos valores médios das linhas
x = 1;
for i=1:m - 1
    for j=1:2*n - 1
        I_out(x + 1,j) = (1/2)*(I_out(x,j) + I_out(x + 2,j));
    end;
    x = x + 2;
end;

