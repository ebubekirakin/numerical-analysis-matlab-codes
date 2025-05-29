% Regula Falsi yöntemiyle kök bulma
f = @(x) x^3 + x - 1;

a = 0;
b = 1;
tol = 1e-6;
maxIter = 100;

if f(a)*f(b) >= 0
    error('f(a) ve f(b) zıt işaretli olmalı.');
end

iter = 0;
c_old = a;

while iter < maxIter
    % Regula Falsi formülü
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));

    if abs(f(c)) < tol || abs(c - c_old) < tol
        break;
    end

    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end

    c_old = c;
    iter = iter + 1;
end

fprintf('Yaklaşık kök: %.10f\n', c);
fprintf('Toplam iterasyon: %d\n', iter);
