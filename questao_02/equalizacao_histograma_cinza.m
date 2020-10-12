function out = equalizacao_histograma_cinza(img)
    [x, y] = size(img);
    num_of_pixels = x * y;
    out = img;
    sum = 0;
    L = 255;
    freq = zeros(256, 1);
    prob_f = zeros(256, 1);
    prob_c = zeros(256, 1);
    cum = zeros(256, 1);
    output = zeros(256, 1);

    for i=1:x
        for j=1:y
            pixel = img(i,j);
            freq(pixel + 1) = freq(pixel + 1) + 1;
            prob_f(pixel + 1) = freq(pixel + 1) / num_of_pixels;
        end
    end

    for i=1:size(prob_f)
       sum = sum + freq(i);
       cum(i) = sum;
       prob_c(i) = cum(i) / num_of_pixels;
       output(i) = round(prob_c(i) * L);
    end

    for i=1:x
        for j=1:y
            out(i, j) = output(img(i, j) + 1);
        end
    end
end

