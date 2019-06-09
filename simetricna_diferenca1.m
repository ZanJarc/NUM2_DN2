function [priblizek, razlika] = simetricna_diferenca1(F,dF,x,h)

priblizek = (F(x+h) - F(x-h))/(2*h);

tocen_rezultat = dF(x);

razlika = abs(tocen_rezultat - priblizek);
end

