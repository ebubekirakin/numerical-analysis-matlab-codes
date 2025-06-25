clc;
clear;

% Denklem sistemi:
% 2x + 3y - z = 5
% 4x + y + 2z = 6
% -2x + 5y + z = -3

% Katsayılar matrisi (A)
A = [2 3 -1;
     4 1 2;
    -2 5 1];

% Sonuç vektörü (B)
B = [5;
     6;
    -3];

% Genişletilmiş matris [A | B]
Aug = [A B];

n = size(A,1);  % denklem sayısı

% Gauss-Jordan Eliminasyon
for i = 1:n
    % Ana satırı pivot 1 yapmak için böl
    Aug(i,:) = Aug(i,:) / Aug(i,i);
    
    % Diğer satırları sıfırlama işlemi
    for j = 1:n
        if j ~= i
            factor = Aug(j,i);
            Aug(j,:) = Aug(j,:) - factor * Aug(i,:);
        end
    end
end

% Çözüm vektörü
X = Aug(:,end);

% Sonuçları yazdır
disp('Gauss-Jordan yöntemi ile çözümler:');
for i = 1:n
    fprintf('x%d = %.4f\n', i, X(i));
end
