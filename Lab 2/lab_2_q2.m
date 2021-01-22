syms s
damping_ratio = linspace(0.25, 2, 8);
sys_dummy = tf(sym2poly(1+0*s), sym2poly(1+s));
sys_info_array = struct(stepinfo(sys_dummy));
hold on
for i=1:8
    sys_temp = tf(sym2poly(1+0*s), sym2poly(1+ damping_ratio(i) * s + s^2));
    step(sys_temp)
    sys_info_array(i) = stepinfo(sys_temp);
end
legend(string(damping_ratio))
sys_info_array = struct2table(sys_info_array);
sys_info_array(:, ["Overshoot", "RiseTime", "SettlingTime", "PeakTime"])