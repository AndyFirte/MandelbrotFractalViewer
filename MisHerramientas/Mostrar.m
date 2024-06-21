function [] = Mostrar(Imagen, varargin)
% Mostrar muestra una imagen en una nueva figura.
%
% Uso:
%   Mostrar(Imagen)
%   Mostrar(Imagen, titulo)
%
% Argumentos de entrada:
%   - Imagen: Imagen a mostrar.
%   - titulo (opcional): Título de la figura (cadena de caracteres).
%
% Salida: Ninguna.
%
% Ejemplo:
%   Imagen = imread('imagen.jpg');
%   Mostrar(Imagen, 'Imagen original');
%
% Autor: Andrés Romero
% Fecha: 27 de febrero de 2023

tipo = size(size(Imagen));
titulo = inputname(1);

if nargin > 1
    titulo = varargin{1};
end

figure
image(Imagen)
if (tipo(2)==2)
    colormap(gray(256))
end
axis image
title(titulo)
