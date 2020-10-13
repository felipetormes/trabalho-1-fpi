function contrast_stretching_plot(img, a, b, Va, Vb, L)
    img_stretched = contrast_stretching(img, a, b, Va, Vb, L);
    
    figure;
    subplot(2,2,1); imshow(img); title('Imagem original');
    subplot(2,2,2); imhist(img);
    subplot(2,2,3); imshow(img_stretched); title('Contrast stretching');
    subplot(2,2,4); imhist(img_stretched);
end

