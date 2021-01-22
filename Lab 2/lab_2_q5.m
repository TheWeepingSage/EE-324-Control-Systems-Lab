syms s
tau = [0.1, 0.5, 2];

num = sym2poly(s+5);
den_0 = sym2poly((s+2)*(s+4));
den_1 = sym2poly(s+2);
den_2=sym2poly(s+4);
for tau_i=tau
    t = transpose(0:tau_i:10);
    y_0 = step(tf(num, den_0), t);
    y_1_temp = step(tf(num, den_2), t);
    y_1= lsim(tf(1, den_1), y_1_temp, t);
    y_2_temp = step(tf(1, den_1), t);
    y_2 = lsim(tf(num, den_2), y_2_temp, t);
    figure
    hold on
    plot(t, y_0)
    plot(t, y_1)
    plot(t, y_2)
    legend("Plot 1: Everything Together", "Plot 2: Series, (s+5)/(s+4) first", "Plot 3: Series, Reverse")
    xlabel("Time")
    title("\tau = " + tau_i)
    hold off
end