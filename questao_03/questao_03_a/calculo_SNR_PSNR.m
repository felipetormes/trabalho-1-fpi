function [SNR, PSNR] = calculo_SNR_PSNR(I, I_noisy);
    %I = imread('cameraman.tif');
    I_max = double(max(max(I)));
    I_min = double(min(min(I)));
    A = (I_max - I_min);
    SNR = 10*log10(double(std2(I)^2 / std2(I - I_noisy)^2));
    PSNR = 10*log10(double((A.^2) / (std2(I - I_noisy)^2 + 0.00001)));
