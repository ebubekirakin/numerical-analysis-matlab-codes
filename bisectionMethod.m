function root = bisectionMethod(f, a, b, tol, maxIter)
    % f: kökünü bulmak istediğimiz fonksiyon
    % a, b: aralık [a, b]
    % tol: tolerans değeri (yaklaşım hassasiyeti)
    % maxIter: maksimum iterasyon sayısı

    if f(a) * f(b) >= 0
        error('f(a) ve f(b) zıt işaretli olmalı');
    end

    

    iter = 0;
    while (b - a)/2 > tol && iter < maxIter
        c = (a + b)/2;
        if f(c) == 0  % tam kök bulundu
            break;
        elseif f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        iter = iter + 1;
    end

    root = (a + b)/2;
    fprintf('Yaklaşık kök: %.10f\n', root);
    fprintf('Toplam iterasyon: %d\n', iter);
end
