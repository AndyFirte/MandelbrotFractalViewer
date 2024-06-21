function nivel = MandelbrotIteration(C, n, treshold, degree)

Zn = C;

for i=1:n
    %Zn = Zn^2 + C;
    %Zn = sin(Zn)^2 + C;
    Zn = Zn^degree + C;
    if abs(Zn) > treshold
        nivel = floor(255 - (255 * (i-1)/n));
        return
    end
end
nivel = 0;
