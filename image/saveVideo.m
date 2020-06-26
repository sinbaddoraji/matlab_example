% Save video from webcam stream
% 2020-06-26


webcamlist

% create webcam 
cam = webcam(2);
v = VideoWriter('tmp.avi');
v.FrameRate = 15;
open(v);

for i = 1:30
    img = cam.snapshot;
    v.writeVideo(img);
end

v.close();
clear cam;