syms s
num_1 = 1+0*s;
num_1 = sym2poly(num_1);
den_1 = 1 + 5*s + s^2;
den_1 = sym2poly(den_1);
den_2 = 1+2*s;
den_2 = sym2poly(den_2);
hold on
step(tf(num_1, den_1))
step(tf(num_1, den_2))
legend("second-order", "first-order")
hold off
den_3 = 9 + 6*s + s^2;
den_3 = sym2poly(den_3);
figure
step(tf(num_1, den_3))
