clc; close all; clear

FrameEnd = 500;

parfor index = 1 : 1 : FrameEnd
    disp(index);
    %this_image = imread("FramesVideos/Video5/Zn_m2_pC_" + num2str(index) + ".png");
    this_image = imread("CH_Mandelbrot.png");
    
    this_image_hsv = rgb2hsv(this_image);
    this_image_hsv(:,:,1) = mod(this_image_hsv(:,:,1)+ (1/FrameEnd) * index, 1);
    this_image = hsv2rgb(this_image_hsv);
    imwrite(this_image, "FramesVideos/VideoCH/Zn_m2_pC_" + num2str(index) + ".png")
end