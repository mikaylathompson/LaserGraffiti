%function display = setDisplay(display, laserX, laserY)
function [display, pen] = setDisplay(display, pen, laserX, laserY, live)
%if controls aren't added, add them
if display(82, 216, 2) < .1
    display = addControls(display);
end

laserX = floor(laserX);
laserY = floor(laserY);

if laserX > 68 && laserY > 204
    %laser is in the eraser
    display = zeros(102, 228, 3);
    display = addControls(display);
elseif laserX < 34 && laserY > 180
        %laser is in the palatte
        pen = [laserX/35 0 ((laserY - 180)/75 + .25)];
else 
    if laserX < 3
        laserX = 3;
    end
    if laserX > 100
        laserX = 100;
    end
    if laserY < 3
        laserY = 3;
    end
    if laserY > 225
        laserY = 225;
    end
    %laser is in drawing panel
    for i = [1 2 3]
        for x = [-2 -1 -1 0 0 0 1 1 2]
            for y = [-2 -1 -1 0 0 0 1 1 2]
                display(laserX + x, laserY + y, i) = display(laserX + x, laserY + y, i) + pen(i)/6;
                if display(laserX + x, laserY + y, i) > 1
                    display(laserX + x, laserY + y, i) = 1;
                end
            end
        end
    end
    
end

if live == 1
    for x = 1:102
        for y = 1:228
            for c = [1 2 3]
                if display(x, y, c) < 0
                    display(x, y, c) = 0;
                elseif display(x, y, c) > 1
                    display(x, y, c) = 1.0;
                end
            end
        end
    end
    im = permute(display, [2, 1, 3]);
    imagesc(im);
    set(gca,'XTickLabel','');
    set(gca,'YTickLabel','');
    
    triVerts = [0 14; 22 14; 0 100; 80 14; 102 14; 102 100];
    triFaces = [1 2 3; 4 5 6];
    patch('faces', triFaces, 'vertices', triVerts, 'FaceColor', 'flat', 'FaceColor', pen);
end


