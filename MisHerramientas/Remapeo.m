function y = Remapeo(x, x1, x2, y1, y2)
% Remapeo realiza un remapeo lineal de un valor x de un rango de entrada [x1, x2] a un rango de salida [y1, y2].
%
% Uso:
%   y = Remapeo(x, x1, x2, y1, y2)
%
% Argumentos de entrada:
%   - x: Valor a remapear.
%   - x1: Límite inferior del rango de entrada.
%   - x2: Límite superior del rango de entrada.
%   - y1: Límite inferior del rango de salida.
%   - y2: Límite superior del rango de salida.
%
% Salida:
%   - y: Valor remapeado correspondiente a x en el rango de salida [y1, y2].
%
% Ejemplo:
%   x = 3; % Valor de entrada
%   x1 = 1; % Límite inferior del rango de entrada
%   x2 = 5; % Límite superior del rango de entrada
%   y1 = 10; % Límite inferior del rango de salida
%   y2 = 20; % Límite superior del rango de salida
%   y = Remapeo(x, x1, x2, y1, y2);
%   % Resultado: y = 15
%
% Autor: Andrés Romero
% Fecha: 16 de mayo del 2023

m = (y2 - y1) / (x2 - x1);
y = m * (x - x1) + y1;
