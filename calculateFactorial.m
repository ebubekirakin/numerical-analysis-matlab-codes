function result = calculateFactorial(n)
% Hem interaktif hem de normal kullanım için
% calculateFactorial(5) VEYA sadece 5 yazınca çalışır

if ~exist('n', 'var') % Eğer parametre verilmediyse
    n = input('Faktöriyelini hesaplamak istediğiniz sayı: ');
elseif ischar(n) % Eğer kullanıcı '5' gibi string girdiyse
    n = str2double(n);
end

% Hata kontrolleri
if isnan(n) || n < 0 || floor(n) ~= n
    error('Geçersiz girdi! Pozitif tamsayı giriniz.');
end

% Hesaplama
result = 1;
for i = 1:n
    result = result * i;
end

% Sonucu göster
if nargout == 0 % Eğer çıktı atanmadıysa
    fprintf('\n%d! = %d\n\n', n, result);
end
end