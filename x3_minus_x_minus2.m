% x3_minus_x_minus2.m
% Fonksiyon: f(x) = x^3 - x - 2

f = @(x) x.^3 - x - 2;

% Grafik aralığı
x = linspace(0, 3, 500);
y = f(x);

% Fonksiyon grafiği
figure;
plot(x, y, 'b-', 'LineWidth', 2); hold on;
yline(0, 'k--'); % x ekseni çizgisi

% Kök bulma (fzero ile)
root = fzero(f, [1, 2]);
plot(root, f(root), 'ro', 'MarkerSize', 8, 'DisplayName', 'Kök');

% Grafik süslemeleri
xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - x - 2 fonksiyonunun grafiği');
legend('f(x)', 'x ekseni', 'Kök');
grid on;

% Sonucu yazdır
fprintf('Yaklaşık kök: %.10f\n', root);