sys_1_a = tf(1, conv([1 0], [1 4 8]));

Ks = 0.002:0.002:20;
Gms = [];
Pms = [];
for i=1:10000
    [Gm, Pm, ~, ~] = margin(feedback(sys_1_a*Ks(i), 1));
    Gms(i) = Gm;
    Pms(i) = Pm;
end
figure
hold on
plot(Ks, Gms);
plot(Ks, Pms);
xlabel("K")
legend(["G_m", "P_m"])
hold off