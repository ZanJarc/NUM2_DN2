F = @(x) sin(x)/(1+x.^2);
a = -1;
b = 2;
k1 = 10; %stevilo osnovnih pravil 1
k2 = 20; %stevilo osnovnih pravil 2
osnovno_pravilo_tock = 3;
Simpson1=0
Simpson2=0
razdelitev1 = razdeli_interval_na_podintervale(a, b, k1);
for i = 1:k1
    c = razdelitev1(i, 1);
    d = razdelitev1(i, 2);
    Simpson1 = Simpson1 + Simpson(c, d, F);
end
Simpson1

razdelitev2 = razdeli_interval_na_podintervale(a, b, k2);
for i = 1:k2
    c = razdelitev2(i, 1);
    d = razdelitev2(i, 2);
    Simpson2 = Simpson2 + Simpson(c, d, F);
end
Simpson2

ekstrapolacija = (32*Simpson2 - Simpson1)/31

tocno = integral(@(x) sin(x)./(1+x.^2), -1, 2)

razlika = abs(tocno - ekstrapolacija)

