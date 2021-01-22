syms s
num = sym2poly(s+5);
den_0 = sym2poly((s+2)*(s+4));
den_1 = sym2poly(s+2);
den_2=sym2poly(s+4);
[y_0, t_0] = step(tf(num, den_0));
[y_1_temp, t_1_temp] = step(tf(num, den_2));
[y_1, t_1] = lsim(tf(1, den_1), y_1_temp, t_1_temp);
[y_2_temp, t_2_temp] = step(tf(1, den_1));
[y_2, t_2] = lsim(tf(num, den_2), y_2_temp, t_2_temp);
hold on
plot(t_0, y_0)
plot(t_1, y_1)
plot(t_2, y_2)
legend("Plot 1: Everything Together", "Plot 2: Series, (s+5)/(s+4) first", "Plot 3: Series, Reverse")
xlabel("Time")
hold off