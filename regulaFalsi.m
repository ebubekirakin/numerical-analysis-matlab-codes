function root = regulaFalsi(f, a, b, tol, maxIter)
    % f: kökünü aradığımız fonksiyon
    % a, b: aralığın uç noktaları (f(a)*f(b) < 0 olmalı)
    % tol: tolerans değeri
    % maxIter: maksimum iterasyon sayısı

    if f(a) * f(b) >= 0
        error('f(a) ve f(b) zıt işaretli olmalı');
    end

    iter = 0;
    c_old = a;

    while iter < maxIter
        % Doğrusal interpolasyon (Regula Falsi formülü)
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

    root = c;
    fprintf('Yaklaşık kök: %.10f\n', root);
    fprintf('Toplam iterasyon: %d\n', iter);
end
