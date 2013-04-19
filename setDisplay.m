%function display = setDisplay(display, laserX, laserY)
function display = setDisplay(display, pen, laserX, laserY, live)
display = addControls(display);
if laserY > 204
    %laser is in the control panel
    if laserX > 60
        %laser is in the eraser
        display = zeros(102, 228, 3);
        %addControls;
    else
        %laser is in the palatte
        %change pen to a new color
    end
else
    %laser is in drawing panel
    for i = [1 2 3]
        for x = [-1 0 0 1]
            for y = [-1 0 0 1]
                display(laserX + x, laserY + y, i) = display(laserX + x, laserY + y, i) + pen(i)/4;
                if display(laserX + x, laserY + y, i) > 1
                   display(laserX + x, laserY + y, i) = 1;
                end
            end
        end
    end
    
end

if live == 1
    im = permute(display, [2, 1, 3]);
    imagesc(im);
    axis image
end

display;




function display = drawPoint(display, laserX, laserY, pen)
display;
