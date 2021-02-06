%---------------------Part a-----------------------------%
%---------------------------------------------------------%
sys_a_1 = tf(tf(1, [1 0 0]));
sys_a_2 = tf([50 0], [1 1 100]);
sys_a_3 = tf([1, -2], 1);
sys_a = feedback(series(sys_a_1, series(sys_a_2, sys_a_3)), 1)

%---------------------Part b-----------------------------%
%---------------------------------------------------------%
sys_b_1 = tf([1, 0], 1);
sys_b_2 = series(sys_b_1, sys_b_1);
sys_b_3 = tf(1, [1, 0]);
sys_b_4 = parallel(sys_b_2, sys_b_3);
sys_b_5 = feedback(sys_b_4, 1);
sys_b_6 = series(sys_b_5, sys_b_3);
sys_b = feedback(sys_b_6, sys_b_1)

%---------------------Part c-----------------------------%
%---------------------------------------------------------%
sys_c_1 = tf([1, 0], 1);
sys_c_2 = tf([2, 0], 1);
sys_c_3 = parallel(sys_c_1, sys_c_2);
sys_c_4 = feedback(sys_c_1, 1);
sys_c_5 = series(sys_c_3, sys_c_4);
sys_c_6 = parallel(sys_c_5, sys_c_2);
sys_c_7 = tf(1, [1, 1]);
sys_c_8 = feedback(sys_c_7, 5);
sys_c_9 = series(sys_c_8, sys_c_6);
sys_c = feedback(sys_c_9, 1)

