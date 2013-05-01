<h1>LaserGraffiti</h1>

<strong>An interactive application for the LED wall
panels of the CEID cafe at Yale University</strong>


<strong>To run the display itself, use FullProcess.m.</strong>  This reads from two cameras 
<i>(with MATLAB's image aquisition toolbox)</i>, looks for a laser point on each 
<i>(using bpass.m and pkfind.m from Professor Dufresne)</i>, determines which screen
and where the laser is <i>(using scaleWall and scaleCeiling)</i> and then changes
the display in response <i>(using setDisplay and addControls)</i>.


clickTestScreen.m is the best test for the grafitti display on the LED panels
(relies on setDisplay and addControls).  It allows clicking to change the 
screen, and if arranged for the screen, will provide a test for the screen,
setDisplay and addControls.

 
