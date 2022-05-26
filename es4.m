clc
clear all

xv = linspace(-1, 1, 200);

xe = linspace(-1, 1, 22);
ye = sin(2*pi*xe);

pInt = interpLagrange(xe, ye, xv);

pert = 0.0002 * randn(1, 22);
ypert = ye + pert;
pIntPert = interpLagrange(xe, ypert, xv);

errDati = norm(ypert - ye)/norm(ye)
errRis = norm(pIntPert - pInt) / norm(pInt)

figure
plot(xe, ye, 'ro', xv, pInt, 'b-', xv, pIntPert, 'g-')
legend('Punti', 'Polinomio', 'Polinomio perturbato')

