A_mat = [1, 0, 0; 0, 4, 0; 0, 0, 5];
B_1 = [1; 0; 1];
C_vect = [1, 1, 1];

G_1 = simplify(C_vect*((s*eye(3) - A_mat)\B_1))

B_vect = [1; 1; 1];
C_1 = [1, 1, 0];
G_2 = simplify(C_1*((s*eye(3) - A_mat)\B_vect))