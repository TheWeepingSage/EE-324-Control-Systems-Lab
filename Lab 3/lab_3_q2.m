%---------------------Part a-----------------------------%
%---------------------------------------------------------%
hold on
sys_1 = tf([0 85], [1 7 27 85]);
step(sys_1)
sys_2 = tf([0 17], [1 2 17]);
step(sys_2)
legend("Original", "Approximation")

%---------------------Part b-----------------------------%
%---------------------------------------------------------%
sys_3 = tf([1 0.01], [1 101/50 126/25 0.1]);
figure
hold on
step(sys_3)
sys_4 = tf([0 5], [1 2 5]);
step(sys_4)
step([1 1]*11, conv([1 1.1], [1 10]))
legend("Original", "Approximation", "Approximation 2")
hold off