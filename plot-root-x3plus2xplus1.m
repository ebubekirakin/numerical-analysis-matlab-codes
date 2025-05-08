% x değerleri -3 ile 3 arasında alınır
x = -3:0.01:3;

% f(x) fonksiyonu
y = x.^3 + 2*x + 1;

% Grafik çizimi
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 + 2x + 1 Fonksiyonunun Grafiği');

% x eksenini göstermek için yatay çizgi
hold on;
plot(x, zeros(size(x)), 'k--'); % x ekseni


ylim([-10 10]); % y ekseni sınırlarını belirlemek

hold off;
