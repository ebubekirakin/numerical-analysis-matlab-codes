% Katsayılar matrisi (A) ve sonuç vektörü (B)
A = [2 3 -1;
     4 1  2;
    -2 5  1];

B = [5;
     6;
    -3];

n = length(B);
Aug = [A B];  % Genişletilmiş matris

% Gauss Eliminasyon
for i = 1:n-1
    for j = i+1:n
        factor = Aug(j,i)/Aug(i,i);
        Aug(j,i:n+1) = Aug(j,i:n+1) - factor * Aug(i,i:n+1);
    end
end

% Geriye doğru yerine koyma (Back-substitution)
X = zeros(n,1);
X(n) = Aug(n,end)/Aug(n,n);

for i = n-1:-1:1
    X(i) = (Aug(i,end) - Aug(i,i+1:n)*X(i+1:n)) / Aug(i,i);
end

% Sonuçları yazdır
fprintf('Gauss Eliminasyon Yöntemi ile Çözümler:\n');
for i = 1:n
    fprintf('x%d = %.4f\n', i, X(i));
end
