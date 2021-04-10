%---------------------------Part a---------------------------------%
%---------------------------------------------------------------------%
T_mat = [1, 2, 3; 3, 2, 5; 2, 2, 9];
A_mat = [1, 0, 0; 1, 4, 0; 2, 3, 5];
B_vect = [1; 0; 0];
C_vect = [1, 1, 1];
D = 1;

C_new = C_vect*T_mat;
B_new = T_mat\ B_vect;
A_new = (T_mat\A_mat)*T_mat;

syms s;
G_i = simplify(D + C_vect*((s*eye(3) - A_mat)\B_vect))
G_f = simplify(D + C_new*((s*eye(3) - A_new)\B_new))

[~, den_g] = numden(G_i);
eig(A_mat)
roots(sym2poly(den_g))


%---------------------------Part b---------------------------------%
%---------------------------------------------------------------------%
sys_b_1 = tf([1 1 1], [1 2 4]);
ss_b_1 = ss(sys_b_1)
sys_b_2 = tf([1 1], [1 2 4]);
ss_b_2 = ss(sys_b_2)