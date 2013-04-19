function [ display ] = addControls( display )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

for i = 1:102;
    display(i, 204, :) = [1 1 1];
    display(i, 203, :) = [1 1 1];
end

for i = 204:228;
    display(60, i, :) = [1 1 1];
end

display;
end

