%---------------------Part a-----------------------------%
%---------------------------------------------------------%
figure
hold on
label_str = string([]);
a_list = -1:0.1:1;
for i=1:21
    sys_1 = tf([1 5+a_list(i)], [1 11 30]);
    step(sys_1)
    label_str(i) = "a = " + string(a_list(i));
end
sys_2 = tf([0 1], [1 6]);
step(sys_2)
label_str(22) = "after cancellation";
legend(label_str)
hold off
%---------------------Part b-----------------------------%
%---------------------------------------------------------%

figure
sys_3 = tf([0 1], [1 -1 -6]);
step(sys_3)

figure
sys_4 = tf([1, -3], [1 -1 -6]);
step(sys_4)

b_list = -0.1:0.01:0.1;
label_str_b = string([]);
figure
hold on
for i=1:21
    sys_5 = tf([1 -3+b_list(i)], [1 -1 -6]);
    step(sys_5)
    label_str_b(i) = "offset = " + string(b_list(i));
end
legend(label_str_b);
hold off