%---------------------Part a-----------------------------%
%---------------------------------------------------------%
syms s
num = sym2poly(44 + 0*s);
den = sym2poly(s + 13);
sys_a = tf(num, den);
step_a_info = stepinfo(sys_a);

%---------------------Part b-----------------------------%
%---------------------------------------------------------%
hold on
step(sys_a);
xline(step_a_info.RiseTime, "--", "Rise Time");
time_constant = step_a_info.SettlingTime / log(50);
xline(time_constant, "--", "Time Constant");
xline(step_a_info.SettlingTime, "--", "2% Settling Time");
hold off

%---------------------Part c-----------------------------%
%---------------------------------------------------------%
figure
hold on
step_info_str = struct(step_a_info);
for i_part_c=2:100
    num = num+sym2poly(44 + 0*s);
    sys_temp = tf(num, den);
    step_info_str(i_part_c) =  stepinfo(sys_temp);
end
step_info_table = struct2table(step_info_str);
plot(44:44:4400, step_info_table.RiseTime)
xlabel("a");
ylabel("Rise Time");
hold off

%---------------------Part d-----------------------------%
%---------------------------------------------------------%
num = sym2poly(44 + 0*s);
figure
hold on
legend_str = string([]);
step_info_str_2 = struct(step_a_info);
for i_part_d=2:100
    den = sym2poly(13*i_part_d + s);
    sys_temp = tf(num, den);
    step_info_str_2(i_part_d) = stepinfo(sys_temp);
end
step_info_table_2 = struct2table(step_info_str_2);
plot(13:13:1300, step_info_table_2.RiseTime)
xlabel("b");
ylabel("Rise Time")
hold off