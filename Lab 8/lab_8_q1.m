sys_1_a = tf(1, conv([1 0], [1 4 8]));

Ks = 0.04:0.04:40;
Gms = [];
Pms = [];
for i=1:1000
    [Gm, Pm, ~, ~] = margin(sys_1_a*Ks(i));
    Gms(i) = Gm;
    Pms(i) = Pm;
end
figure
hold on
plot(Ks, Gms);
plot(Ks, Pms);
xlabel("K")
yline(1, '--', "Unity gain margin")
yline(0, '--', "Zero phase margin")
legend(["G_m", "P_m"])
ylim([-1, 10])
hold off