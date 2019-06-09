function [priblizek, razlika] = simetricna_diferenca2(F,ddF,x,h)

priblizek = (F(x+h) - 2* F(x) + F(x-h))/h.^2;


razlika = abs(ddF(x) - priblizek);
end



