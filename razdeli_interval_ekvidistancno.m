function [vec, premik] = razdeli_interval_ekvidistancno(a, b, k)
%a zacetek intervala
%b konec intervala
%k dobimo k + 1 tock x_0, x_1, x_2, x_3
dolzina_intervala = b - a;
premik = dolzina_intervala / k;
vec = zeros(k+1, 1);
for j = 1:k+1
    vec(j) = a;
    a = a + premik;
end
vec;



end

