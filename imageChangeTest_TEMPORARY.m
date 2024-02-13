imgFolder = "C:\Users\Christopher\Documents\NatSci\Year 4\Project\MATLAB\CapturedImages\";

imgFile = "solid_blue_gain15.png";

imgLoc = strcat(imgFolder,imgFile);

[img,cmap] = imread(imgLoc);

disp(imgFile)
meanr = mean(img(:,:,1),"All")
meang = mean(img(:,:,2),"All")
meanb = mean(img(:,:,3),"All")