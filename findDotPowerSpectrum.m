

videoFolder = "C:\Users\Christopher\Documents\NatSci\Year 4\Project\MATLAB\Videos\";

runFolder = "motorstep_3deg_16s\";

frameFolder = strcat(videoFolder,runFolder,"videoFrames\video",runFolder);

imgArray = dir(strcat(frameFolder));
imgArray = {imgArray.name}; % extract filenames of all images at particular angle
imgArray = imgArray(3:end);
points = [];
for i = 1:length(imgArray)
    [p1,p2,p3,p4] = findDotPositions(imgArray{i},frameFolder);
    points(i,1,:)=p1;
    points(i,2,:)=p2;
    points(i,3,:)=p3;
    points(i,4,:)=p4;
end


hold on
plot(points(:,3,2))
plot(points(:,4,2))
hold off

