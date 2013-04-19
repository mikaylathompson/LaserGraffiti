close all
figure
display = setDisplay(zeros(102, 228, 3), [0 0 0], 2, 2, 1);
display = addControls(display);
pen = [.3 .7 .3];
%display = zeros(102, 228, 3);
while(findobj('type', 'figure'))
    in=ginput(1);
    display = setDisplay(display, pen, floor(in(1)), floor(in(2)), 1);
end
