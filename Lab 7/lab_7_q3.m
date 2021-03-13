%-----------------------Part a--------------------------------------%
%---------------------------------------------------------------------%
sys_a = tf(1, [1, 3, 2]);
slope_damping = pi/log(10);
x_new = -1.5 * 2;
y_new = -slope_damping * x_new;
pole_dom = x_new + y_new*1i;
sys_a_feedback = feedback(4.47 * sys_a, 1);
angle_reqd = (pi + angle(prod(pole_dom - pole(sys_a_feedback))));
pole_lead = -5;
angle_initial = angle(pole_dom - pole_lead);
slope_final_a = tan(angle_initial - angle_reqd);
zero_new_a = x_new - y_new/slope_final_a

%-----------------------Part b--------------------------------------%
%---------------------------------------------------------------------%
slope_final_b = tan(angle_reqd);
zero_new_b = x_new - y_new/slope_final_b