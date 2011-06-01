function [ result, inverseResult ] = j2ke( sourceFile )
%J2KE Summary of this function goes here
%   Detailed explanation goes here

    % Read the image file and convert it to 8-bit YCbCr
    sourceImage = imread(sourceFile);
    ycbcrImage = rgb2ycbcr(sourceImage);
    
    % Extract the luma component of the image
    lumaComponent = ycbcrToLuma(ycbcrImage);
 
    % Extract the top field of the luma component
    lumaField = topField(lumaComponent);
    
    result = doDwt(lumaField, 3);
 
    colormap(gray(256));
    image(uint8(wcodemat(result, 256)));
    
    % inverseResult = unDwt(result, 3);
    
end

