clc; close all; clear

A = imread("TestImages/pulpo.png");
Mostrar(A)

A_1 = A(:,:,1);
A_2 = A(:,:,2);
A_3 = A(:,:,3);

A_123 = cat(3, A_1, A_2, A_3);
A_132 = cat(3, A_1, A_3, A_2);
A_213 = cat(3, A_2, A_1, A_3);
A_231 = cat(3, A_2, A_3, A_1);
A_312 = cat(3, A_3, A_1, A_2);
A_321 = cat(3, A_3, A_2, A_1);

Mostrar(A_123)
Mostrar(A_132)
Mostrar(A_213)
Mostrar(A_231)
Mostrar(A_312)
Mostrar(A_321)







