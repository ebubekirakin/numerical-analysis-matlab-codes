clc;
clear;

% Fonksiyon tanımı
f = @(x) x^3 - x - 1;

% İlk iki başlangıç değeri
x0 = 1.0;
x1 = 1.5;

% Tolerans ve maksimum iterasyon
tol = 1e-6;
maxIter = 100;

% Başlangıç
iter = 0;

while iter < maxIter
    f0 = f(x0);
    f1 = f(x1);

    if f1 - f0 == 0
        error('Bölme sıfır! Secant yöntemi durdu.');
    end

    % Secant formülü
    x2 = x1 - f1 * (x1 - x0) / (f1 - f0);

    if abs(x2 - x1) < tol
        break;
    end

    % Güncelleme
    x0 = x1;
    x1 = x2;
    iter = iter + 1;
end

% Sonuç
fprintf('Yaklaşık kök: %.10f\n', x2);
fprintf('Toplam iterasyon: %d\n', iter);
