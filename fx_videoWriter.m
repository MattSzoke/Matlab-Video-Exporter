function [] = fx_videoWriter(myFrames,VideoFileName,myFrameRate)
% VIDEO WRITER... 
% ORIGINAL CODE WAS FOUND AT
% https://www.mathworks.com/matlabcentral/answers/521001-convert-images-to-video
% This is a wrapper function for writeVideo function

writerObj = VideoWriter(VideoFileName);
writerObj.FrameRate = myFrameRate; % set the seconds per image
% open the video writer
open(writerObj);
% write the frames to the video
for i=1:length(myFrames)
    % convert the image to a frame
    frame = myFrames(i) ;    
    writeVideo(writerObj, frame);
end
% close the writer object
close(writerObj);

end

