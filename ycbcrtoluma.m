function [ destination ] = ycbcrtoluma( source )
%YCBCRTOLUMA Summary of this function goes here
%   Detailed explanation goes here

    imageSize = size(source);
    imageX = 1:imageSize(2);
    imageY = 1:imageSize(1);
    destination = source(imageY,imageX,1);

end

