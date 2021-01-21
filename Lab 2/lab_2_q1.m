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
% figure
% hold on
% step(sys_a);
% xline(step_a_info.RiseTime, "--", "Rise Time: a = 44");
% for i_part_c=2:100
%     num = num+sym2poly(44 + 0*s);
%     sys_temp = tf(num, den);
%     step(sys_temp);
% end
% step_final_info = stepinfo(sys_temp);
% xline(step_final_info.RiseTime, "--", "Rise Time: a = 4400");
% hold off

%---------------------Part d-----------------------------%
%---------------------------------------------------------%
num = sym2poly(44 + 0*s);
figure
hold on
legend_str = string([]);
for i_part_d=1:100
    den = sym2poly(13*i_part_d + s);
    sys_temp = tf(num, den);
    step(sys_temp);
    legend_str(i_part_d) = "b=" + den(2);
end
step_final_info = stepinfo(sys_temp);
xline(step_final_info.RiseTime, "--", "Rise Time: b = 1300");
legend(legend_str)
