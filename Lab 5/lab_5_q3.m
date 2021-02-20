%----------------------------------------------------------%
%--------------Part a------------------------------------%
kp_arr = 0.05:0.05:15;
sys_a = tf(1, [1 3 5 0]);
rlocus(sys_a)
rise_times = [];
i=1;
for kp=kp_arr
    sys_temp  = feedback(series(tf(kp, 1), sys_a), 1);
    stepinfo_temp = stepinfo(sys_temp);
    rise_times(i) = stepinfo_temp.RiseTime;
    i=i+1;
end
figure
hold on
plot(kp_arr, rise_times);
xlabel("K_p")
yline(1.5, '--', "Rise Time = 1.5 s")
ylabel("Rise Times")
grid()
min(rise_times)
hold off