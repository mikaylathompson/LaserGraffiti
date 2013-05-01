LaserGraffiti

An interactive application for the LED wall
panels of the CEID cafe at Yale University


clickTestScreen.m is the best test for the grafitti display on the LED panels
(relies on setDisplay and addControls).  It allows clicking to change the 
screen, and if arranged for the screen, will provide a test for the screen,
setDisplay and addControls.



To run the display itself, use FullProcess.m.  This reads from two cameras 
(with MATLAB's image aquisition toolbox), looks for a laser point on each 
(using bpass.m and pkfind.m from Professor Dufresne), determines which screen
and where the laser is (using scaleWall and scaleCeiling) and then changes
the display in response (using setDisplay and addControls).

 
