close all
figure;
[display, pen] = setDisplay(zeros(102, 228, 3), [0 0 0], 50, 226, 1);
pen = [1 0 0];
set(gcf, 'color', [0 0 0])
set(gca,'Color',[0.8 0.8 0.8]);
set(gca, 'position',[.65  .15  .28  .8]);
axis image
axis off

while(findobj('type', 'figure'))
    in=ginput(1);
    [display, pen] = setDisplay(display, pen, floor(in(1)), floor(in(2)), 1);
end

