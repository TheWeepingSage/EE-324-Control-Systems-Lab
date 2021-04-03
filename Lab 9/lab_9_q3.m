s = zpk('s');
sys_c = tf(100, [1, 30]);
margins = allmargin(sys_c);
delay_margin = margins.DelayMargin
figure
bode(sys_c)
sys_g = exp(-delay_margin * s);
sys_cg = series(sys_c, sys_g);
figure 
bode(sys_cg)