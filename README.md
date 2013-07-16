<h1>LaserGraffiti</h1>

<strong>An interactive application for the LED wall
panels of the CEID cafe at Yale University</strong>


<strong>To run the display itself, use FullProcess.m.</strong>  This reads from two cameras 
<i>(with MATLAB's image aquisition toolbox)</i>, looks for a laser point on each 
<i>(using bpass.m and pkfind.m from Professor Dufresne)</i>, determines which screen the laser is on,
and where exactly the laser is <i>(using scaleWall and scaleCeiling)</i> and then changes
the display image in response <i>(using setDisplay and addControls)</i>.

<strong>To test the application without laser or LEDs, run clickTestScreen.m.</strong>  It
accepts clicks in place of laser points, and will output the display on-screen.  It relies on
setDisplay and addControls.  This program should also be used to test the screen connection,
set-up, and alignment in the cafe if the cameras are not setup or operational.
