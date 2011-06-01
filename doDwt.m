function [ result ] = doDwt( sourceImage, transformLevels )
%DODWT Summary of this function goes here
%   Detailed explanation goes here

    imageSize = size(sourceImage);
    imageWidth = imageSize(2);
    imageHeight = imageSize(1);
    
    fillX = 1:imageWidth;
    fillY = 1:imageHeight;
    result(fillY, fillX) = 0;
    
    a = sourceImage;
    
    for level=1:transformLevels
        
        % Calculate the DWT
        [a h v d] = dwt9x7(a);
        
        % Get the dimensions of the resulting components
        transformSize = size(d);
        transformWidth = transformSize(2);
        transformHeight = transformSize(1);
        
        % Copy the four returned components into the result
        for y=1:transformHeight
            for x=1:transformWidth
               result(y, x) = a(y,x);
               result(y, x + transformWidth) = h(y, x) + 128;
               result(y + transformHeight, x) = v(y, x) + 128;
               result(y + transformHeight, x + transformWidth) = d(y, x) + 128;
            end
        end
    end

end

