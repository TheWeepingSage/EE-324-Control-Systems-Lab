sys_a = tf(1, conv([1 500], [1 1 1]));
figure
hold on
rlocus(sys_a)
sys_b = tf(1, [1 1 1]);
rlocus(sys_b)