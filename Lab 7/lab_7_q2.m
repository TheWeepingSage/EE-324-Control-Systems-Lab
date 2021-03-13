%-----------------------Part a--------------------------------------%
%---------------------------------------------------------------------%
sys_a = tf(1, [1, 3, 2]);
figure 
hold on
rlocus(sys_a);
xs_a = -0.1:-0.1:-40;
slope_damping = pi/log(10);
ys_a = xs_a*slope_damping;
plot(xs_a, ys_a, "--")
plot(xs_a, -1*ys_a, "--")
hold off

%-----------------------Part b--------------------------------------%
%---------------------------------------------------------------------%
err_sys_a = (1 - dcgain(feedback(4.47*sys_a, 1)))

sys_lag = tf([1, 0.2], [1, 0.01]);
sys_b  = series(sys_a, sys_lag);
figure 
hold on
rlocus(sys_b);
xs_a = -0.1:-0.1:-40;
slope_damping = pi/log(10);
ys_a = xs_a*slope_damping;
plot(xs_a, ys_a, "--")
plot(xs_a, -1*ys_a, "--")
hold off

err_sys_b = (1- dcgain(feedback(4.27*sys_b, 1)))

%-----------------------Part c--------------------------------------%
%---------------------------------------------------------------------%
zeros = [0.001, 0.01, 0.1, 0.2, 0.5];
for i = 1:5
    sys_lag_temp = tf([1, zeros(i)], [1, zeros(i)/20]);
    sys_c = series(sys_a, sys_lag_temp);
    figure 
    hold on
    rlocus(sys_c);
    xs_a = -0.1:-0.1:-40;
    slope_damping = pi/log(10);
    ys_a = xs_a*slope_damping;
    plot(xs_a, ys_a, "--")
    plot(xs_a, -1*ys_a, "--")
    hold off
end

gains = [4.47, 4.46, 4.35, 4.27, 3.93];
overshoots = [];
figure
hold on
for i = 1:5
    sys_lag_temp = tf([1, zeros(i)], [1, zeros(i)/20]);
    sys_c = feedback(gains(i) * series(sys_a, sys_lag_temp), 1);
    info_c = stepinfo(sys_c);
    overshoots(i) = info_c.Overshoot;
    step(sys_c)
end
legend("Zero at " + string(zeros))
hold off
figure
plot(zeros, overshoots)

