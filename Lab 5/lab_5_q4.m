k_p = (0.99*0.0572)/(0.01*0.11*0.6)
sys_a = tf(0.11*[1 0.6], [6 3.6127 0.0572]);
figure
rlocus(sys_a)
figure
rlocus(-sys_a)