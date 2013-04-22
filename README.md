LaserGraffiti

An interactive application for the LED wall
panels of the CEID cafe at Yale University


clickTestScreen.m is the best test for the grafitti display on the LED panels (relies on setDisplay and addControls).

To test going from a webcam image to a display (currently only works for the wall, not ceiling), use dispFromImg.m, which relies on extractLaser, scaleWall, setDisplay, bpass, and pkfnd. 
