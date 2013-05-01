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
        display(68 + xPoints(i, 1), 204 + xPoints(i, 2), 1) = display(68 + xPoints(i, 1), 204 + xPoints(i, 2), 1) + .8;
    end
    
    
    %Fill the box with blue/red colors
    for y = 1:48;
        for x = 1:34;
            color = [0 0 0];
            color(3) = y/75 + .25;
            color(1) = x/35;
            for c = [1 3];
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
end

%Write the word LASER at the top
for x = 1:102
    for y = 3:13
        if ((x == 5) || (x == 6))
            % L
                display(x, y, :) = [1 0 0];
            
        elseif x >= 7 && x <= 10
            if y==12 || y==13
                display(x, y, :) = [1 0 0];
            end
            % A
        elseif x==12 || x==13
            if y >= 3 && y <= 13
                display(x, y, :) = [0 1 0];
            end
        elseif x==14 || x==15
            if y ==3 || y == 4 || y==8 || y==9
                display(x, y, :) = [0 1 0];
            end
        elseif x==16 || x==17
                display(x, y, :) = [0 1 0];
            % S
        elseif x >= 19 && x <=24
            if y==3 || y==4 || y == 7 || y == 8 || y==12 || y==13
                display(x, y, :) = [0 0 1];
            end
            if x <= 20
                if y==5 || y==6
                    display(x, y, :) = [0 0 1];
                end
            elseif x >= 23
                if y >= 9 && y <= 11
                    display(x, y, :) = [0 0 1];
                end
            end
            % E
        elseif x == 26 || x == 27
                display(x, y, :) = [1 0 0];
        elseif x >= 28 && x <= 31
            if y == 3 || y==4 || y==8 || y==9 || y==12 || y==13
                display(x, y, :) = [1 0 0];
            end
            % R
        elseif x == 33 || x==34
                display(x, y, :) = [0 1 0];
        elseif x == 35 || x==36
            if y == 3 || y==4 || y==8 || y==9 || y==10
                display(x, y, :)= [0 1 0];
            end
            if x == 36 && y == 11
                display(x, y, :)= [0 1 0];
            end
        elseif x== 37 || x==38
            if y >= 3 && y <= 9
                display(x, y, :)= [0 1 0];
            end
            if y == 12
                display(x, y, :)= [0 1 0];
            end
            if x == 37 && y == 11
                display(x, y, :)= [0 1 0];
            end
            if x== 38 && y == 13
                display(x, y, :)= [0 1 0];
            end
        % G    
        elseif x==44 || x==45
            display(x, y, :) = [0 0 1];
        elseif x==46 || x==47
            if y==3 || y==4 || y==12 || y==13
                display(x, y, :) = [0 0 1];
            end
        elseif x==48 || x==49
            if y==3 || y==4 || y==8 || y ==9 || y==12 || y==13
                display(x, y, :) = [0 0 1];
            end
        elseif x==50 || x==51
            if y==3 || y ==4 || y >= 8
                display(x, y, :) = [0 0 1];
            end
        %R
        elseif x == 33+20 || x==34+20
                display(x, y, :) = [0 1 0];
        elseif x == 35+20 || x==36+20
            if y == 3 || y==4 || y==8 || y==9 || y==10
                display(x, y, :)= [0 1 0];
            end
            if x == 36+20 && y == 11
                display(x, y, :)= [0 1 0];
            end
        elseif x== 37+20 || x==38+20
            if y >= 3 && y <= 9
                display(x, y, :)= [0 1 0];
            end
            if y == 12
                display(x, y, :)= [0 1 0];
            end
            if x == 37+20 && y == 11
                display(x, y, :)= [0 1 0];
            end
            if x== 38+20 && y == 13
                display(x, y, :)= [0 1 0];
            end
        % A
        elseif x==12+48 || x==13+48
            if y >= 3 && y <= 13
                display(x, y, :) = [0 0 1];
            end
        elseif x==14+48 || x==15+48
            if y ==3 || y == 4 || y==8 || y==9
                display(x, y, :) = [0 0 1];
            end
        elseif x==16+48 || x==17+48
                display(x, y, :) = [0 0 1];
        % F
        elseif x==68 || x==69
            display(x, y, :) = [1 0 0];
        elseif x>= 70 && x<= 73
            if y==3 || y==4 || y==8 || y==9
                display(x, y, :) = [1 0 0];
            end
        % F
        elseif x==75 || x==76
            display(x, y, :) = [0 1 0];
        elseif x>= 77 && x<= 80
            if y==3 || y==4 || y==8 || y==9
                display(x, y, :) = [0 1 0];
            end
        % I
        elseif x==82 || x==83 || x == 86 || x==87
            if y<=4 || y >= 12
                display(x, y, :) = [0 0 1];
            end
        elseif x == 84 || x == 85
            display(x, y, :) = [0 0 1];
        % T
        elseif (x >= 90 && x <= 91) || (x >=94 && x <= 95)
            if y <= 4
                display(x, y, :) = [1 0 0];
            end
        elseif x==92 || x==93
            display(x, y, :) = [1 0 0];
        % I
        elseif x==97 || x==98 || x==101 || x == 102
            if y<=4 || y >= 12
                display(x, y, :) = [0 0 1];
            end
        elseif x == 100 || x == 99
            display(x, y, :) = [0 0 1];
        end
               
    end
    
    
    
end











