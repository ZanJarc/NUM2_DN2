F = @(x) exp(x);
dF = @(x) exp(x);
ddF = @(x) exp(x);
a = 0;

h = zeros(8, 1);
for j = 2:9
    h(j-1) = 10^-j;
end
priblizki_prvi_odvod = zeros(8, 1);
razlike_prvi_odvod = zeros(8, 1);
for j = 1:8
    [priblizek, razlika]= simetricna_diferenca1(F, dF, a, h(j));
    priblizki_prvi_odvod(j) = priblizek;
    razlike_prvi_odvod(j) = razlika;
end
[value, index] = min(razlike_prvi_odvod);
najmanjsa_napaka_prvi_odvod = index + 1

priblizki_drugi_odvod = zeros(8, 1);
razlike_drugi_odvod = zeros(8, 1);
for j = 1:8
    [priblizek, razlika]= simetricna_diferenca2(F, ddF, a, h(j));
    priblizki_drugi_odvod(j) = priblizek;
    razlike_drugi_odvod(j) = razlika;
end
[value, index] = min(razlike_drugi_odvod);
najmanjsa_napaka_drugi_odvod = index + 1

