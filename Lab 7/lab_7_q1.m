syms s
sys_1 = tf(1, conv([1, 12], [1, 7, 12]));

sys_controller_a = tf([1 0.01], [1, 0]);
sys_1a = series(sys_1, sys_controller_a);
figure 
hold on
rlocus(sys_1a);
xs_a = -0.1:-0.1:-40;
slope_damping = sqrt(1-0.2^2)/0.2;
ys_a = xs_a*slope_damping;
plot(xs_a, ys_a, "--")
plot(xs_a, -1*ys_a, "--")
hold off

thetas = pi/2:0.01:3*pi/2;
xs_b = cos(thetas);
ys_b = sin(thetas);
figure 
hold on
rlocus(sys_1a);
slope_damping = sqrt(1-0.35^2)/0.35;
plot(8*xs_b, 8*ys_b, "--")
plot(9*xs_b, 9*ys_b, "--")
hold off

zs = 0:0.1:5;
figure
hold on
for z = zs
    sys_controller_c = tf([1, z], [1, 0]);
    rlocus(series(sys_1, sys_controller_c))
end
hold off