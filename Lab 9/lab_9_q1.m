sys_g = tf(10, conv([1/5 1 0], [1/20, 1]));
sys_c_1 = tf([1, 3], [1, 1]);
sys_c_2 = tf([1, 1], [1, 3]);
figure
nyquist(series(sys_g, sys_c_1))
figure
nyquist(series(sys_g, sys_c_2))