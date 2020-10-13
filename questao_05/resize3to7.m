function I_out = resize3to7(I_in)
%Entrada: I_in uma imagem em tons de cinza com larguras m por n
%Saída: I_out uma imagem em tons de cinza com larguras m*7/3 por n*7/3
%resultado de uma interpolação resize 7/3 de I_in

%Inicialização da matriz da imagem de saída
[m,n]=size(I_in);
I_out = zeros(floor(m/3)*7,floor(n/3)*7);

%Escrita dos valores originais em blocos 7x7
x = 1;
for i = 1:m
    y = 1;
    for j = 1:n
        I_out(x,y) = I_in(i,j);
        y = y + 2;
        if mod(y,7) == 0
            y = y + 1;
        end;
    end;
    x = x + 2;
    if mod(x,7) == 0
        x = x + 1;
    end;
end;

%Escrita dos blocos 2x2 com valore na esquerda superior de cada bloco
x = 1;
for i = 1:m
    y = 1;
    for j = 1:n
        I_out(x + 1,y) = I_out(x,y);
        I_out(x,y + 1) = I_out(x,y);
        I_out(x + 1,y + 1) = I_out(x,y);
        y = y + 2;
        if mod(y,7) == 0
            y = y + 1;
        end;
    end;
    x = x + 2;
    if mod(x,7) == 0
        x = x + 1;
    end;
end;

%Escrita nas colunas finais dos blocos 7x7
y = 7;
for j=1:n/3
    for i = 1:floor(m/3)*7
        I_out(i,y) = I_out(i,y - 1);
    end;
    y = y + 7;
end;

%Escrita nas linhas finais dos blocos 7x7
x = 7;
for i=1:m/3
    for j = 1:floor(n/3)*7
        I_out(x,j) = I_out(x - 1,j);
    end;
    x = x + 7;
end;



