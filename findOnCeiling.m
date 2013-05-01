function [ point ] = findOnCeiling( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
b = bpass(img, 3, 10);
point = pkfnd(b, 20, 20);

end

