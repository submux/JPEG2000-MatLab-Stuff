function [ ] = plotDwt9x7( sourceImage, transformLevel )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    a = sourceImage;
    
    for i=1:transformLevel
        [a, h, v, d] = dwt9x7(a);
    end
    
    colormap(gray(256));
    
    subplot(2,2,1,'replace'), image(uint8(wcodemat(a, 256)));
    subplot(2,2,2), image(uint8(wcodemat(h, 256)));
    subplot(2,2,3), image(uint8(wcodemat(v, 256)));
    subplot(2,2,4), image(uint8(wcodemat(d, 256)));

end

