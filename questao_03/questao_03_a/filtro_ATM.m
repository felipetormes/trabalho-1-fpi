function final = filtro_ATM(objeto, tamanho, limite)


    CanalRed = (objeto(:,:,1));
    CanalGreen = (objeto(:,:,2));
    CanalBlue = (objeto(:,:,3));

    CanalRed = filtro_ATM_aux(CanalRed,tamanho,limite);
    CanalGreen = filtro_ATM_aux(CanalGreen,tamanho,limite);
    CanalBlue = filtro_ATM_aux(CanalBlue,tamanho,limite);

    final = uint8(cat(3, CanalRed, CanalGreen, CanalBlue));
