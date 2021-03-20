syms s
poly_1(s) = (s^2 + 4) * (s^2 + 9) * (s + 5);
den_1 = sym2poly(poly_1);
figure
rlocus(tf(1, den_1));
poly_2 = poly_1(s+1);
den_2 = sym2poly(poly_2);
figure
bode(tf(1, den_2))
poly_3 = (s - 0.07)*(s - 0.09)*(s - 1.3)*(s - 1);
num_1 = sym2poly(poly_3);
figure
bode(tf(num_1, den_2))
figure
rlocus(tf(num_1, den_2))
