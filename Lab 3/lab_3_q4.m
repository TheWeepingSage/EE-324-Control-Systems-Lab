%---------------------Part a-----------------------------%
%---------------------------------------------------------%
sys_1 = tf(1, [1 0 1]);
sys_2 = tf(1, [1 1 1]);
sys_3 = tf(1, [1 4 1]);
sys_params = struct([stepinfo(sys_1), stepinfo(sys_2), stepinfo(sys_3)]);
sys_params = struct2table(sys_params);
sys_params(:, ["Overshoot", "PeakTime", "RiseTime", "SettlingTime"])

%---------------------Part b-----------------------------%
%---------------------------------------------------------%

freqs = 1:2:9;
for i=1:5
    params_struct(i) = stepinfo(tf(freqs(i)^2, [1 2*freqs(i)*0.5  freqs(i)^2]));
end
params_table = struct2table(params_struct);
params_table.Properties.RowNames = string(freqs);

params_table(:, ["Overshoot", "PeakTime", "RiseTime", "SettlingTime"])

