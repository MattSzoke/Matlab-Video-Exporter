%% Make a video
% Clear workspace
clc
clear all
close all

%% Create the animation and grab each frame in a vector
x = linspace(0,2*pi,200);
y = sin(x);
figure(1), clf, hold off
for i = 1:length(x)
    plot(x(1:i), y(1:i),'-r', 'linewidth', 2)
    xlim([0 max(x)])
    ylim([-1 1])
    xlabel('x')
    ylabel('sin(x)')
    grid on
    drawnow

    % grab frames
    myFrames(i) = getframe(gcf) ;

end

%% Write video
VideoFileName = 'myVideo.avi'; % filename for the video file
myFrameRate = 10; % frame rate
fx_videoWriter(myFrames,VideoFileName,myFrameRate)
