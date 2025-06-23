% Cramer Yöntemi ile Lineer Denklem Çözümü
% Sistem: A*x = b

% Örnek sistem (3x3)
A = [3,  2, -1; 
     1, -4,  2; 
     2,  1,  3];
b = [8; -6; 10];

% Ana determinant hesapla
det_A = det(A);

if abs(det_A) < 1e-10
    error('Determinant sıfır! Sistem tek çözüm yok.');
else
    % Çözüm vektörü
    x = zeros(size(b));
    
    % Her x_i için determinant hesapla
    for i = 1:length(b)
        Ai = A; % A matrisinin kopyası
        Ai(:, i) = b; % i. sütunu b ile değiştir
        x(i) = det(Ai) / det_A;
    end
    
    % Sonuçları ekrana yazdır
    fprintf('Çözüm:\n');
    for i = 1:length(x)
        fprintf('x%d = %.4f\n', i, x(i));
    end
end

% Grafik gösterimi (2x2 sistemler için)
if size(A,1) == 2
    figure;
    hold on;
    
    % Denklem 1: a11*x1 + a12*x2 = b1
    x1 = linspace(-5, 5, 100);
    x2_1 = (b(1) - A(1,1)*x1) / A(1,2);
    plot(x1, x2_1, 'b', 'LineWidth', 2);
    
    % Denklem 2: a21*x1 + a22*x2 = b2
    x2_2 = (b(2) - A(2,1)*x1) / A(2,2);
    plot(x1, x2_2, 'r', 'LineWidth', 2);
    
    % Çözüm noktası
    plot(x(1), x(2), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
    
    title('Cramer Yöntemi: 2x2 Sistem Çözümü');
    xlabel('x_1');
    ylabel('x_2');
    legend('Denklem 1', 'Denklem 2', 'Kesişim Noktası (Çözüm)');
    grid on;
    hold off;
end