% script to display a preview of the images that will be taken, with
% parameters set in 'cameraSettings.m'

[vid, src] = cameraSettings();

castImgToLCD(['3.png']);

preview(vid);

start(vid);

