function out = contrast_stretching(img, a, b, Va, Vb, L)
    [x, y] = size(img);
    out = img;
    alpha = Va / a;
    beta = (Vb - Va) / (b - a);
    gama = (L - Vb) / (L - b);

    for i=1:x
        for j=1:y
            pixel = img(i, j);
            if(pixel >= 0 && pixel < a)
                out(i, j) = pixel * alpha;
            end
            if(pixel >= a && pixel < b)
                out(i, j) = (beta * (pixel - a)) + Va;
            end
            if(pixel >= b && pixel < L)
                out(i, j) = (gama * (pixel - b)) + Vb;
            end
        end
    end
end