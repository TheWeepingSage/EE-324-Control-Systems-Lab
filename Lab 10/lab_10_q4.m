A_mat = [1, 2, 0;
               0, 1, 2; 
               0, 0, 3];
B_1 = [1; 1; 1];
C_vect = [1, 1, 1];

G_i = simplify(C_vect*((s*eye(3) - A_mat)\B_1))