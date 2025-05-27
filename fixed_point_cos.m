% g(x) = cos(x) fonksiyonu ile sabit nokta yöntemi

g = @(x) cos(x);      % x = cos(x)
x0 = 0.5;             % başlangıç tahmini
tol = 1e-6;           % tolerans
maxIter = 100;        % maksimum iterasyon sayısı

iter = 0;
x_prev = x0;

while iter < maxIter
    x_next = g(x_prev);
    
    if abs(x_next - x_prev) < tol
        break;
    end
    
    x_prev = x_next;
    iter = iter + 1;
end

fprintf('Yaklaşık sabit nokta (kök): %.10f\n', x_next);
fprintf('Toplam iterasyon: %d\n', iter);
