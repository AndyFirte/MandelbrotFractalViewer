function C = Multiplicar(A,B)
% (a + bi)(c + di) = ac + adi +cbi + bdii
% (a + bi)(c + di) = (ac - bd) + (ad +cb)i

C = [ A(1)*B(1) - A(2)*B(2); A(1)*B(2) + B(1)*A(2)];
