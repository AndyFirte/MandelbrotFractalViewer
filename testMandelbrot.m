clc; clear
%close all;



%M = 1575; N = 2800; %Wallpaper laptop
% M = 100*6; N = 177*6;

% k=0.4;
% M = 1575*k; N = 2800*k;
% M = floor(M); N = floor(N);

k = 1;
M = floor(513*k); N = floor(1024*k);

ratio = N/M;
Mapa = zeros(M,N,2);
Mundo = zeros(M,N);

%Ymin = -1.6; Ymax = 1.6;
%Xmin = -2.1; Xmax = Xmin + (Ymax - Ymin) * ratio;

%Wallpaper principal
% Ymin = -1.15; Ymax = 1.15;
% Xmin = -2.88; Xmax = Xmin + (Ymax - Ymin) * ratio;

% Ymin = -0.15; Ymax = 0.15;
% Xmin = -1.70; Xmax = Xmin + (Ymax - Ymin) * ratio;

%Ymin = 0.6227; Ymax = 0.6250;
%Xmin = -0.3880; Xmax = Xmin + (Ymax - Ymin) * ratio;


% Ymin = -1.15; Ymax = 1.15;
% Xmin = -2.88; Xmax = Xmin + (Ymax - Ymin) * ratio;

% Ymin = -0.1; Ymax = 0.1;
% Xmin = -1.7; Xmax = Xmin + (Ymax - Ymin) * ratio;


%Zn = Zn^(-2) + C;
% Ymin = -0.05; Ymax = 0.05;
% Xmin = -0.9; Xmax = Xmin + (Ymax - Ymin) * ratio;
% Ymin = -1.7; Ymax = 1.7;
% Xmin = -2.1; Xmax = Xmin + (Ymax - Ymin) * ratio;

% Ymin = -1.7; Ymax = 1.7;
% Xmin = -2.4; Xmax = Xmin + (Ymax - Ymin) * ratio;
% Ymin = 0.58159295; Ymax = 0.58159297;
% Xmin = -0.4600; Xmax = Xmin + (Ymax - Ymin) * ratio

Ymin = -1.1; Ymax = 1.1;
Xmin = -2.6; Xmax = Xmin + (Ymax - Ymin) * ratio;


% Ymin = 1.1570555 ; Ymax = 1.157058;
% Xmin = 0.665004; Xmax = Xmin + (Ymax - Ymin) * ratio;

%Iter = 450; tresh = 2;
Iter = 100; thresh = 2;

degree = 2;

deltaX = (Xmax - Xmin)/N;
deltaY = (Ymax - Ymin)/M;

%factor = 60;

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
tic
for i=1:M
    i;
    for j=1:N
        Z = Mapa(i,j,1) + Mapa(i,j,2)*1i;
        gray = MandelbrotIteration(Z, Iter, thresh, degree);
        Mundo(i,j) = gray;
    end
end
toc
%Mostrar(uint8(Mundo),("Iter:" + num2str(Iter) + " Tresh:" + num2str(tresh)))


A = -Mundo; A = A+255; %Mostrar(uint8(A),'')

for i=1:M
    for j=1:N
        if A(i,j) == 255
            A(i,j) = 0;
        end
    end
end

%Mostrar(uint8(A),'')

Fire = ind2rgb(A,hot(256));

Mostrar(Fire,("Iter:" + num2str(Iter) + " Tresh:" + num2str(thresh)))


