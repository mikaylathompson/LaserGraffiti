function [ point ] = scaleWall( point )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
point(1) = floor(point(1) * 102 / 500);
point(2) = floor(point(2) * 94 / 465) + 134;

end

