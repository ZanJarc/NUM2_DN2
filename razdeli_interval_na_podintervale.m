function M = razdeli_interval_na_podintervale(a, b, k)
%a zacetek intervala
%b konec intervala
%k koliko podintervalov
M = zeros(k, 2);
dolzina_podintervala = (b - a) / k
for j = 1:k
    M(j,:) = [a, a + dolzina_podintervala];
    a = a + dolzina_podintervala;
end
M
end

