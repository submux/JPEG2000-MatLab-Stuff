function [ a, h, v, d ] = dwt9x7( sourceImage )
%DWT9X7 Summary of this function goes here
%   Detailed explanation goes here

    lowcoeff = [ 0.02674875741080976 
                -0.01686411844287495 
                -0.07822326652898785 
                 0.2668641184428723 
                 0.6029490182363579 
                 0.2668641184428723 
                 -0.07822326652898785 
                 -0.01686411844287495 
                 0.02674875741080976];
             
    highcoeff = [ 0.09127176311424948 
                 -0.05754352622849957 
                 -0.5912717631142470 
                  1.115087052456994 
                 -0.5912717631142470 
                 -0.05754352622849957 
                  0.09127176311424948];
    
    originalImageSize = size(sourceImage);
    cropRegionX = 1:floor(originalImageSize(2) / 2);
    cropRegionY = 1:floor(originalImageSize(1) / 2);
              
    [a, h, v, d] = dwt2(sourceImage, lowcoeff, highcoeff);
    
    a = a(cropRegionY, cropRegionX);
    h = h(cropRegionY, cropRegionX);
    v = v(cropRegionY, cropRegionX);
    d = d(cropRegionY, cropRegionX);
    
end

