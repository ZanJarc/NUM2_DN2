function [val] = Simpson(a, b, F)
[tocke, h] = razdeli_interval_ekvidistancno(a, b, 3);
val = (3/8)*h*(F(tocke(1)) + 3*F(tocke(2)) + 3*F(tocke(3)) + F(tocke(4)));


end

