function [ destinationImage ] = topField( sourceImage )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

  imageSize = size(sourceImage);
  imageWidth = imageSize(2);
  imageHeight = imageSize(1);
  
  lines = 1:2:imageHeight;
  columns = 1:imageWidth;
  
  destinationImage = sourceImage(lines,columns);
           
end

