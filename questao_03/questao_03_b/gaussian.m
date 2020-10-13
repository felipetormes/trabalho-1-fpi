function [ enhanced_image, filtered_image ] = gaussian( image, hsize, sigma )
    r = hsize;
    c = hsize;
    h = zeros(r,c);
    R = (r+1)/2;
    C = (c+1)/2;
    sigma2 = power(sigma,2);
    sigma4 = power(sigma,4);
    for i=1:r 
        for j=1:c
            x2 = (i-R)*(i-R);
            y2 = (j-C)*(j-C);
            h(i,j) = ((x2+y2-2*sigma2)/sigma4)*exp(-(x2+y2)/2*sigma2);
        end
    end
    filtered_image = imfilter(image, h, 'conv');
    enhanced_image=image-filtered_image;
end

    