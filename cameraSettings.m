function [vid, src] = cameraSettings()

%grayscale
%vid = videoinput('pointgrey', 1, 'F7_Mono8_1920x1200_Mode0');
%colour
vid = videoinput('pointgrey', 1, 'F7_BayerRG8_1920x1200_Mode0');

src = getselectedsource(vid);

%data collection 
vid.ROIPosition = [72 0 864 954];
%dots 
%vid.ROIPosition = [272 378 320 190];
% [x_offset y_offset width height]

src.Exposure = 2;
%Max Exposure = 2.41;

src.Brightness = 12;
%Max Brightness = 12.48;

src.Shutter = 6;
%Max Shutter = 6.07;

src.Gain = 10;
%Max Gain = 30.00

end