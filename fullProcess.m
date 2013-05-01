close all
vid1 = videoinput('winvideo', 2, 'MJPG_640x480');
vid2 = videoinput('winvideo', 1, 'MJPG_640x480');
src1 = getselectedsource(vid1);
src2 = getselectedsource(vid2);
triggerconfig(vid1,'manual');
triggerconfig(vid2, 'manual');
start(vid1);
start(vid2);
pause(1);

figure;
[display, pen] = setDisplay(zeros(102, 228, 3), [0 0 0], 50, 226, 1);
pen = [.7 0 .3];
set(gcf, 'color', [0 0 0])
set(gca,'Color',[0.8 0.8 0.8]);
set(gca, 'position',[.65  .15  .28  .8]);
axis image
axis off

% while(figure open)
while(findobj('type', 'figure'))
    % Take a wall and ceiling picture from the cameras
    c1 = imcrop(double(getsnapshot(vid1)), [0 0 640 465]);
    w1 = imcrop(double(getsnapshot(vid2)), [100 0 524 470]);
    
    % Convert both to 2D by turning green channel into only channel
    c2 = c1(:, :, 2);
    w2 = w1(:, :, 2);
    
    % Run bpass with appropriate settings
    c3 = bpass(c2, 1, 5);
    w3 = bpass(w2, 1, 5);
    
    % Run pkfind with appropriate settings
    cPoint = pkfnd(c3, 15, 10);
    wPoint = pkfnd(w3, 25, 10);
    
    % If wall has one point:
        % Correct position of point and output to setDisplay
    % Else if wall has one point:
        % Correct position of point and output to setDisplay
    if size(wPoint, 1) == 1
        % Correct position of point and output to setDisplay
        point = scaleWall(wPoint);
        [display, pen] = setDisplay(display, pen, point(1), point(2), 1);
    elseif size(cPoint, 1) == 1
        point = scaleCeiling(cPoint);
        [display, pen] = setDisplay(display, pen, point(1), point(2), 1);
    end
    pause(.02)
end

stop(vid1)
stop(vid2)