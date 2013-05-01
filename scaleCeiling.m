function [ SPoint ] = scaleCeiling( IPoint )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%SPoint(1) = IPoint(1) / (12 - (IPoint(2) / 75)) + 23.6 - (IPoint(2) / 14.6);

scaleFactor = 11.57 - (IPoint(2) / 72.5);
scaledX = IPoint(1) / scaleFactor;
shiftFactor = 23.156 - (IPoint(2) / 11.23);

SPoint(1) = scaledX + shiftFactor;


SPoint(2) = 15.737 * exp(IPoint(2)/208);

if SPoint(2) >= 134
    SPoint(2) = 134
end

if SPoint(2) <= 14
    SPoint(2) = 14
end

if SPoint(1) <= 1
    SPoint(1) = 1
end

if SPoint(1) >= 102
    SPoint(1) = 102
end

end

