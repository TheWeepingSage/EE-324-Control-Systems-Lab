sys_2= tf(1, [1 2 8]);

K_1s = 0.01:0.01:0.2;
K_2s = K_1s/5;
figure
hold on
for i = 1:20
    sys_compensator = tf([1, K_1s(i)], [1, K_2s(i)]);
    sys_temp = series(sys_compensator, sys_2);
    step(sys_temp);
end
legend("K_1 = " + string(K_1s))
hold off

figure
hold on
for i = 1:20
    sys_compensator = tf([1, K_1s(i)], [1, K_2s(i)]);
    sys_temp = series(sys_compensator, sys_2);
    impulse(sys_temp);
end
legend("K_1 = " + string(K_1s))
hold off