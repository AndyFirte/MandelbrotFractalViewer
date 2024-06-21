function [] = MostrarActualizado(Imagen, indice, titulo)
% MostrarActualizado muestra una imagen en una figura existente o crea una nueva figura si es necesario.
%
% Uso:
%   MostrarActualizado(Imagen, indice, titulo)
%
% Argumentos de entrada:
%   - Imagen: Imagen a mostrar.
%   - indice: Índice de la figura existente o número de la figura a crear.
%   - titulo: Título de la figura (cadena de caracteres).
%
% Salida: Ninguna.
%
% Ejemplo:
%   Imagen = imread('imagen.jpg');
%   MostrarActualizado(Imagen, 2, 'Imagen actualizada');
%
% Autor: Andrés Romero
% Fecha: 27 de febrero de 2023

tipo = size(size(Imagen));

figure(indice)
image(Imagen)
if (tipo(2)==2)
    colormap(gray(256))
end
axis image
title(titulo)

