function y = RemapeoExponencial(x, x_final, y_inicial, y_final, y_limit)

y_inicial = y_inicial - y_limit;
y_final = y_final - y_limit;

y = y_inicial * (y_final / y_inicial)^(x / x_final) + y_limit;
