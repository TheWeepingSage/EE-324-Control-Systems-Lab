%---------------------Part a-----------------------------%
%---------------------------------------------------------%
sys_g = tf(10, conv([1 0], conv([1 2], [1 4])));

%---------------------Part b-----------------------------%
%---------------------------------------------------------%
figure
hold on
for k=0:0.1:100
    sys_series = series(tf(k, 1), sys_g);
    sys_feedback = feedback(sys_series, 1);
    poles_sys = pole(sys_feedback);
    plot(poles_sys, '.')
end
xline(0);
xlabel("Real part")
ylabel("Imaginary Part")
hold off



%---------------------Part c-----------------------------%
%---------------------------------------------------------%
for k=0:0.1:100
    sys_series = series(tf(k, 1), sys_g);
    sys_feedback = feedback(sys_series, 1);
    poles_sys = pole(sys_feedback);
    pole_real_min = min(abs(real(poles_sys) + 0.011435));
    if pole_real_min <= 0.0001
        break
    end
end
k
poles_sys
figure
plot(poles_sys, 'o')
xlabel("Real part")
ylabel("Imaginary Part")
xlim([-6.5, 0.5])

%---------------------Part d-----------------------------%
%---------------------------------------------------------%
rhStabilityCriterion(cell2mat(sys_feedback.Denominator), 1)

% For K=K_0+0.1
sys_series_new = series(tf(k+0.1, 1), sys_g);
sys_feedback_new = feedback(sys_series_new, 1);
rhStabilityCriterion(cell2mat(sys_feedback_new.Denominator), 1)

% For K=k_0+0.2
sys_series_new = series(tf(k+0.2, 1), sys_g);
sys_feedback_new = feedback(sys_series_new, 1);
rhStabilityCriterion(cell2mat(sys_feedback_new.Denominator), 1)