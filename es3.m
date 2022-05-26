% file:///C:/Users/enrico.tagliaferri2/Downloads/Esercitazione_Interpolazione_Polinomiale%20(1).pdf
% es3 di Lab12

clc
clear all

a = -1; b = 1;
n = 5;
xCheb = zeros(n+1, 0);

for n = 5:5:20
    xEqui = linspace(a, b, n+1);
    for i = 1:n+1
        xCheb(i) = cos((2*i - 1)*pi/(2*(n + 1)));
    end
    
    x = xEqui;
    sumLag = zeros(n+1, 1);
    for i = 1:n+1
        for j = 1:n+1
            % Calcola un polinomio di lagrange
            for k = 1:n+1
                if k ~= j
                    Lag = (x(i) - x(k))/(x(j) - x(k));
                end
            end
            sumLag(j) = sumLag(j) + abs(Lag);
        end
        Leb = max(sumLag);
    end
    
    Leb
    
end
