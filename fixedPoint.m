function root = fixedPoint(g, x0, tol, maxIter)
    % g: x = g(x) biçiminde düzenlenmiş fonksiyon
    % x0: başlangıç tahmini
    % tol: tolerans (hassasiyet)
    % maxIter: maksimum iterasyon sayısı

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

    root = x_next;
    fprintf('Yaklaşık kök: %.10f\n', root);
    fprintf('Toplam iterasyon: %d\n', iter);
end
