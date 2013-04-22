close all
figure
[display, pen] = setDisplay(zeros(102, 228, 3), [0 0 0], 50, 226, 1);
pen = [0 .7 .3];
while(findobj('type', 'figure'))
    in=ginput(1);
    [display, pen] = setDisplay(display, pen, floor(in(1)), floor(in(2)), 1);
end
