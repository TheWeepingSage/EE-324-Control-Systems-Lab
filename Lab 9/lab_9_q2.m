w_c = 50;
sigmas = 1:2:9;
figure
hold on
for i = 1:5
sys_g = tf([1, 0, w_c^2], [1, sigmas(i), w_c^2]);
bode(sys_g)
end
legend("\sigma = " + string(sigmas))
hold off
