function equalizacao_histograma_plot(img)
    img_equalizada = equalizacao_histograma(img);
    
    figure;
    subplot(2,2,1); imshow(img); title('Imagem original');
    subplot(2,2,2); imhist(img);
    subplot(2,2,3); imshow(img_equalizada); title('Histograma equalizado');
    subplot(2,2,4); imhist(img_equalizada);
end