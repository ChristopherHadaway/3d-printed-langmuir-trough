function [p1,p2,p3,p4] = findDotPositions(imgName,imgFolder)
    
        imgFilePath = strcat(imgFolder,imgName);
        img = imread(imgFilePath);
        
        %upper left quadrant
        meanX=0;
        meanY=0;
        total=0;
        
        for x = 1 : floor(size(img,1)/2)
            
            for y = 1 : floor(size(img,2)/2)
                meanX = meanX + x*uint32(img(x,y));
                meanY = meanY + y*uint32(img(x,y));
                total = total + uint32(img(x,y));
            end
        end
        
        p1 = [double(meanX)/double(total),double(meanY)/double(total)];
        %upper right quadrant
        meanX=0;
        meanY=0;
        total=0;
        for x = floor(size(img,1)/2) : size(img,1)
            for y = 1 : floor(size(img,2)/2)
                meanX = meanX + x*uint32(img(x,y));
                meanY = meanY + y*uint32(img(x,y));
                total = total + uint32(img(x,y));
            end
        end
        p2 = [double(meanX)/double(total),double(meanY)/double(total)];

        %lower right quadrant
        meanX=0;
        meanY=0;
        total=0;
        for x = floor(size(img,1)/2) : size(img,1)
            for y = floor(size(img,2)/2) : size(img,2)
                meanX = meanX + x*uint32(img(x,y));
                meanY = meanY + y*uint32(img(x,y));
                total = total + uint32(img(x,y));
            end
        end
        p3 = [double(meanX)/double(total),double(meanY)/double(total)];

        %upper left quadrant
        meanX=0;
        meanY=0;
        total=0;
        for x = 1 : floor(size(img,1)/2)
            for y = floor(size(img,2)/2) : size(img,2)
                meanX = meanX + x*uint32(img(x,y));
                meanY = meanY + y*uint32(img(x,y));
                total = total + uint32(img(x,y));
            end
        end
        p4 = [double(meanX)/double(total),double(meanY)/double(total)];

end