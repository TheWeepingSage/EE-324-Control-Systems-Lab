A_mat = [1, 0, 0; 0, 4, 0; 0, 0, 4];
B_1 = [1; 1; 5];
C_vect = [1, 1, 1];

G_i = simplify(C_vect*((s*eye(3) - A_mat)\B_1))