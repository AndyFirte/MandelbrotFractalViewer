clc; close all; clear

A = imread("CH_Mandelbrot.png");
    
B = rgb2hsv(A);

V = B(:,:,3);

C = hsv2rgb(B);

Mostrar(uint8(V*255))