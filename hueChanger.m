clc; close all; clear

A = imread("CH_Mandelbrot.png");
Mostrar(A)

B = rgb2hsv(A);
for i=1:200
    B(:,:,1) = mod(B(:,:,1)+0.01,1);
    C = hsv2rgb(B);
    MostrarActualizado(C,1,num2str(i))
end

