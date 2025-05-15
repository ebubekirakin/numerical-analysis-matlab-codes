clear all; close all; clc
% x değer aralığı
x = -5:0.01:5;

% f(x) = x^3 - 4x + sin(x)
y = x.^3 - 4*x + sin(x);

% Grafik çizimi
plot(x, y, 'm-', 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - 4x + sin(x) Fonksiyonunun Grafiği');

% x ekseni
hold on;
plot(x, zeros(size(x)), 'k--');  % x ekseni çizgisi

ylim([-30 30]); % Y eksen sınırı

hold off;
