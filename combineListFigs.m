%combine rgb plots into one figure
%capillary vs angle

extensionFolders = ["chk1\","chk2\","chk3\","chk4\","chk5\","chk6\","chk7\","chk8\"]; % name to identify the particular set of data collected in a particular run
baseFolder = 'C:\Users\Christopher\Documents\NatSci\Year 4\Project\MATLAB\CapturedImages\run30_multiple_shift_BW\'; % folder to save all data and plots within

%colours=["red\","green\","blue\"];
colourRGB = {'k','b','r','g','y',[.5 .6 .7],[.8 .2 .6]};
f = figure();
ax=axes();

YDataForMean=[];
XDataForMean=[];
for i=1:length(extensionFolders)
    fig = openfig(strcat(baseFolder,extensionFolders(i),"\plots\edits2\","CapVSAngle.fig"));
    
    axObjs = fig.Children;
    dataObjs = axObjs.Children;
    errorbarObj = findobj(dataObjs,'type','ErrorBar');
    errorbarObj.Color = colourRGB{mod(i,7)+1};

    YDataForMean(i,:)=errorbarObj.YData;
    XDataForMean = errorbarObj.XData;

    copy(errorbarObj,ax);

    close(fig);
    clear fig;
end

YDataMean = mean(YDataForMean); 
hold on
plot(XDataForMean,YDataMean);
hold off
xlabel("Razor Angle / degrees");
ylabel("Capillary Length / mm");
title("Capillary length against razor angle from images taken at a range of angles");
legend(horzcat(extensionFolders, "mean"), 'Location', 'north')
savefig(strcat(baseFolder,"CapVSAngle_combined.fig"));
saveas(f, strcat(baseFolder,"CapVSAngle_combined.png"));
