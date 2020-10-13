function retorno = filtro_ATM_aux(canal, tamanho, limite)

    maximo = ceil(tamanho/2); 
    minimo = floor(tamanho/2);

    canal= double(canal);
    [X, Y] = size(canal);

    for x= maximo:(X-minimo)
        for y = maximo:(Y-minimo)
            mascara = canal(x-minimo:x+minimo,y-minimo:y+minimo);
            vetor = reshape(mascara, 1, []);

            vetor=sort(vetor);
            vetor=vetor(limite+1:tamanho*tamanho-limite);

            somatorio = sum(vetor);

            retorno(x,y)=somatorio/(tamanho*tamanho - 2 * limite);
        end
    end

    retorno(X,Y) = canal(X,Y);