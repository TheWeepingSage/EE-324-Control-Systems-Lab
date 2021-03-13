%-----------------------Part a--------------------------------------%
%---------------------------------------------------------------------%
sys_a = tf(1, [1 5 6]);
freqs = [1, 2, 5, 10, 100];
output_arr = zeros(5, 1001);
amplitudes = zeros(5, 1);
phases = zeros(5, 1);
poly_1 = [1 5 6];
for i = 1:5
    T_s = 0.01/freqs(i);
    ts = 0:T_s:1000*T_s;
    inputs = sin(2*pi*freqs(i) * ts);
    val_1 = polyval(poly_1, 2*pi*1i*freqs(i));
    expected_amplitude = abs(val_1^-1);
    expected_phase = angle(val_1.^-1);
    figure
    hold on
    lsim(sys_a, inputs, ts);
    plot(ts, expected_amplitude * sin(2*pi * freqs(i)*ts + expected_phase), 'x')
    hold off
end


%-----------------------Part b--------------------------------------%
%---------------------------------------------------------------------%
sys_a = tf(60, [1 6 11 6]);
freqs = [1, 2, 5, 10, 100];
output_arr = zeros(5, 1001);
amplitudes = zeros(5, 1);
phases = zeros(5, 1);
poly_2 = [1 6 11 6];
for i = 1:5
    T_s = 0.01/freqs(i);
    ts = 0:T_s:1000*T_s;
    inputs = sin(2*pi*freqs(i) * ts);
    val_1 = polyval(poly_2, 2*pi*1i*freqs(i));
    expected_amplitude = 60*abs(val_1^-1);
    expected_phase = angle(val_1.^-1);
    figure
    hold on
    lsim(sys_a, inputs, ts);
    plot(ts, expected_amplitude * sin(2*pi * freqs(i)*ts + expected_phase), 'x')
    hold off
end


