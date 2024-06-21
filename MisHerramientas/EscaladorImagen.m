clc; close all; clear

%Original = imread('Ordenar_100_170_GBR.png');
Original = imread('PatoCarac_c.png');

[M,N,L] = size(Original);
Mostrar(uint8(Original),'Original')

tamano = 10;

Copia = [];
for i=1:1:M
    tira = [];
    for j=1:1:N
        bloque = zeros(tamano,tamano,3);
        bloque(:,:,1) = Original(i,j,1);
        bloque(:,:,2) = Original(i,j,2);
        bloque(:,:,3) = Original(i,j,3);
        tira = [tira, bloque];
    end
    Copia = [Copia; tira];
end
Mostrar(uint8(Copia),'Copia')