clc; close all; clear
%generador de frames para video

k = 1;
M = floor(1000*k); N = floor(1000*k);
ratio = N/M;

FrameStart = 0;     FrameEnd = 1200;

YminStart = -1.7;   YminEnd = 1.1570555;
YmaxStart = 1.7;    YmaxEnd = 1.157058;
Y_limit = (YminEnd + YmaxEnd)/2;

XminStart = -2.1;   XminEnd = 0.665004;
XmaxEnd = XminEnd + (YmaxEnd - YminEnd) * ratio;
X_limit = (XminEnd + XmaxEnd)/2;

IterStart = 100;    IterEnd = 350;

ThreshStart = 13;     ThreshEnd = 20;

DegreeStart = -2;   DegreeEnd = -2;

for index = FrameStart : 1 : FrameEnd

    Mapa = zeros(M,N,2);

    Ymin = RemapeoExponencial(index, FrameEnd, YminStart, YminEnd, Y_limit);
    Ymax = RemapeoExponencial(index, FrameEnd, YmaxStart, YmaxEnd, Y_limit);

    Xmin = RemapeoExponencial(index, FrameEnd, XminStart, XminEnd, X_limit);
    Xmax = Xmin + (Ymax - Ymin) * ratio;
    
    Iter = RemapeoExponencial(index, FrameEnd, IterStart, IterEnd, 0);
    Thresh = RemapeoExponencial(index, FrameEnd, ThreshStart, ThreshEnd, 0);
    
    Degree  = Remapeo(index, FrameStart, FrameEnd, DegreeStart, DegreeEnd);
    
    deltaX = (Xmax - Xmin)/N;
    deltaY = (Ymax - Ymin)/M;
    
    Yactual = Ymax;
    for i=1:M
        Xactual = Xmin;
        for j=1:N
            Mapa(i,j,1) = Xactual;
            Mapa(i,j,2) = Yactual;
            Xactual = Xactual + deltaX;
        end
        Yactual = Yactual - deltaY;
    end

    Mundo = zeros(M,N);
    
    parfor i=1:M
        for j=1:N
            Z = Mapa(i,j,1) + Mapa(i,j,2)*1i;
            gray = MandelbrotIteration(Z, Iter, Thresh, Degree);
            Mundo(i,j) = gray;
        end
    end
    A = -Mundo; A = A+255;
    for i=1:M
        for j=1:N
            if A(i,j) == 255
                A(i,j) = 0;
            end
        end
    end
    Fire = ind2rgb(A,hot(256));
    imwrite(Fire, "FramesVideos/Video11/Zn_m2_pC_" + num2str(index) + ".png")
end