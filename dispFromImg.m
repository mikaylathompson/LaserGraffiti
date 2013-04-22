function dispFromImg( filename )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure
[display, pen] = setDisplay(zeros(102, 228, 3), [0 0 0], 50, 226, 1);
pen = [0, .3, .7];
point = scaleWall(extractLaser('test_image.jpg'));
setDisplay(display, pen, point(1), point(2), 1);

end

