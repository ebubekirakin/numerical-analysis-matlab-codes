clc;
clear;

% Fonksiyon ve türevinin tanımı
f  = @(x) x^3 - x - 1;
df = @(x) 3*x^2 - 1;

% Başlangıç değeri
x0 = 1.5;

% Tolerans ve maksimum iterasyon
tol = 1e-6;
maxIter = 100;

% Newton-Raphson yöntemi
iter = 0;
x = x0;

while iter < maxIter
    fx = f(x);
    dfx = df(x);
    
    if dfx == 0
        error('Türev sıfır! Yöntem durdu.');
    end

    x_new = x - fx / dfx;
    
    if abs(x_new - x) < tol
        break;
    end

    x = x_new;
    iter = iter + 1;
end

% Sonuç
fprintf('Yaklaşık kök: %.10f\n', x);
fprintf('Toplam iterasyon: %d\n', iter);
