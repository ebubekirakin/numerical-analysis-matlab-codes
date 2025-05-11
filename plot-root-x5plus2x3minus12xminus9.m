clear all; close all; clc

% x değer aralığını belirliyoruz
x = -4:0.01:4;

% f(x) fonksiyonu
y = x.^5 + 2*x.^3 - 12*x - 9;

% Fonksiyonun grafiği
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = x^5 + 2x^3 - 12x - 9 Fonksiyonunun Grafiği');

% x ekseni (f(x) = 0 doğrusu)
hold on;
plot(x, zeros(size(x)), 'k--');  % x eksenini çiz

ylim([-50 50]); % Gerekirse y ekseni aralığını ayarla

hold off;
