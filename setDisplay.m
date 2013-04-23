%function display = setDisplay(display, laserX, laserY)
function [display, pen] = setDisplay(display, pen, laserX, laserY, live)
if display(82, 216, 2) < .1
    display = addControls(display);
end
%laser is in the control panel
if laserX > 68 && laserY > 204
    %laser is in the eraser
    display = zeros(102, 228, 3);
    display = addControls(display);
elseif laserX < 34 && laserY > 180
        %laser is in the palatte
        pen = [0, (laserY - 180)/49, laserX/35];
else 
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
end


