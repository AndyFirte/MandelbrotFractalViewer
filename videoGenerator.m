clc; close all; clear

movie_obj = VideoWriter('Video_test.avi',"Uncompressed AVI");
open(movie_obj);

FrameEnd = 500;
FrameStart = 1;

for i = 0 : 1 : -30
    disp("Phase 1")
    this_image = imread("FramesVideos/Video5_hsv/Zn_m2_pC_" + num2str(FrameStart) + ".png");
    writeVideo(movie_obj, this_image);
end

for index = FrameStart : 1 : FrameEnd
    disp(index);
    this_image = imread("FramesVideos/VideoCH/Zn_m2_pC_" + num2str(index) + ".png");
    writeVideo(movie_obj, this_image);
end

for i = 0 : 1 : -30
    disp("Phase 3")
    this_image = imread("FramesVideos/VideoCH/Zn_m2_pC_" + num2str(FrameEnd) + ".png");
    writeVideo(movie_obj, this_image);
end
close(movie_obj);