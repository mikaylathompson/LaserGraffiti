function [ display ] = addControls( display )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%Draw a box for the eraser
for i = 68:102;
    for c = [1 2 3]
        display(i, 204, c) = 1;
        display(i, 203, :) = 1;
end
for i = 204:228;
    display(68, i, :) = [1 1 1];
    display(67, i, :) = [1 1 1];
end
%Draw an x in the box
xPoints = [10 4; 10 5; 10 16; 10 17; 
    11 4; 11 5; 11 6; 11 15; 11 16; 11 17;    
    12 5; 12 6; 12 7; 12 14; 12 15; 12 16;
    13 6; 13 7; 13 8; 13 13; 13 14; 13 15;
    14 7; 14 8; 14 9; 14 12; 14 13; 14 14;
    15 8; 15 9; 15 10; 15 11; 15 12; 15 13; 
    16 9; 16 10; 16 11; 16 12; 17 9; 17 10; 17 11; 17 12;
    18 8; 18 9; 18 10; 18 11; 18 12; 18 13;
    19 7; 19 8; 19 9; 19 12; 19 13; 19 14;
    20 6; 20 7; 20 8; 20 13; 20 14; 20 15;
    21 5; 21 6; 21 7; 21 14; 21 15; 21 16;
    22 4; 22 5; 22 6; 22 15; 22 16; 22 17;
    23 4; 23 5; 23 16; 23 17];

for i = 1:76
    display(68 + xPoints(i, 1), 204 + xPoints(i, 2), 2) = display(68 + xPoints(i, 1), 204 + xPoints(i, 2), 2) + .8;
end


%Fill the box with blue/green colors
for y = 1:48;
    for x = 1:34;
        color = [0 0 0];
        color(2) = y/49;
        color(3) = x/35;
        for c = [2 3];
            display(x, y + 180, c) = color(c);
        end
    end
end

%Draw a box for the palatte
for i = 1:34;
    display(i, 180, :) = [1 1 1];
    display(i, 179, :) = [1 1 1];
end
for i = 180:228;
    display(34, i, :) = [1 1 1];
    display(35, i, :) = [1 1 1];
end

display;
end

% if laserX > 68 && laserY > 204


% if laserX < 34 && laserY < 180