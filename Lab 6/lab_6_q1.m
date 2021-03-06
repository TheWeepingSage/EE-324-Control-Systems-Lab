sys_1 = tf(1, conv([1, 12], [1, 7, 12]));
err = 0.489;
ks_a = .01:0.01:200;
errs = zeros(1, 20000);
for i = 1:20000
    errs(i) = dcgain(feedback(ks_a(i)*sys_1, 1));
end
figure
hold on
plot(ks_a, errs)
yline(1-err, '--', "Required Steady State Error")
xlabel("K")
ylabel("Steady State Value")
hold off

figure 
hold on
rlocus(sys_1);
xs = -0.1:-0.1:-40;
slope_damping = sqrt(1-0.35^2)/0.35;
ys = xs*slope_damping;
plot(xs, ys, "--")
plot(xs, -1*ys, "--")
hold off


ks_d = 0:0.05:1;
figure
hold on
for k = ks_d
    step(feedback(k*sys_1, 1))
end
legend("K=" + string(ks_d))
hold off

ks_e = 0:25:1000;
figure
hold on
for k = ks_e
step(feedback(k*sys_1, 1))
end
legend("K=" + string(ks_e))
hold off
