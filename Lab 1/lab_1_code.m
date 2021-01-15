%--------------------------------------------------------%
%-----------------Problem 1---------------------------%
syms s;

G1num = 10;
G1poly = s^2+2*s+10;
G1den = sym2poly(G1poly);
G2num = 5;
G2poly = s+5;
G2den = sym2poly(G2poly);


sys_1 = tf(G1num, G1den);
sys_2 = tf(G2num, G2den);

sys_a = series(sys_1, sys_2);
sys_b = parallel(sys_1, sys_2);
sys_c = feedback(sys_1, sys_2);

step(sys_a, sys_b, sys_c)
legend("System a", "System b", "System B")

%--------------------------------------------------------%
%-----------------Problem 2---------------------------%
syms x
matrix_sandbox_1 = [x^2 + 2*x + 1 1; 2*x 1];
matrix_sandbox_2 = [x^2 - 2*x + 1 5; 4*x 45];
sum_mat = matrix_sandbox_1 + matrix_sandbox_2
diff_mat = matrix_sandbox_1 - matrix_sandbox_2
prod_mat = matrix_sandbox_1 * matrix_sandbox_2
det_mat = det(matrix_sandbox_1)
inv_mat = inv(matrix_sandbox_2)

%--------------------------------------------------------%
%-----------------Problem 3---------------------------%
syms s_1
tf_capacitor = tf(1, sym2poly(s_1));
tf_parallel_rc = parallel(1, tf_capacitor);
[tf_rc_num, tf_rc_den] = tfdata(tf_parallel_rc);
tf_rc_sym = poly2sym(cell2mat(tf_rc_num),s_1)/poly2sym(cell2mat(tf_rc_den),s_1);
tf_matrix = [-1 - s_1,   -2,  7 + s_1 + tf_rc_sym;
    2 + 2*s_1 + tf_rc_sym, -tf_rc_sym, -s_1 - 1;
    -tf_rc_sym, 3 + s_1 + tf_rc_sym, -2];



