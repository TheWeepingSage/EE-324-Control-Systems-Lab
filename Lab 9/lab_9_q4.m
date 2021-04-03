sys_g = tf(1, [1 3 2 0]);
figure
rlocus(sys_g)
figure
hold on
nyquist(sys_g)
xlim([-1, 0.3])
hold off
figure
bode(sys_g)