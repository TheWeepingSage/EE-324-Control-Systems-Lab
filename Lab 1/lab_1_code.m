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


