clc;
clear;

% Katsayı matrisi A ve sağ taraf vektörü B
A = [10 1 1;
     1 10 1;
     1 1 10];

B = [6;
     6;
     6];

% Başlangıç tahmini (x0), tolerans ve maksimum iterasyon
x0 = [0; 0; 0];
tol = 1e-6;
maxIter = 100;

n = length(B);
X = x0;
X_old = x0;

fprintf('İterasyonlar:\n');
for iter = 1:maxIter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~= i
                sum = sum + A(i,j) * X_old(j);
            end
        end
        X(i) = (B(i) - sum) / A(i,i);
    end

    % Sonuçların yazdırılması (isteğe bağlı)
    fprintf('Iter %2d: x = %.6f, y = %.6f, z = %.6f\n', iter, X(1), X(2), X(3));

    % Hata kontrolü
    if norm(X - X_old, inf) < tol
        break;
    end

    X_old = X;
end

% Çözüm sonucu
fprintf('\nJacobi Yöntemi ile yaklaşık çözümler:\n');
for i = 1:n
    fprintf('x%d = %.6f\n', i, X(i));
end
