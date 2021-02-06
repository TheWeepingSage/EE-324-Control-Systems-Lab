syms s 

fprintf("\n System 1\n")
poly_1 = s^5 + 3*s^4 + 5*s^3 + 4*s^2 + s + 3;
poly_1 = sym2poly(poly_1);
rhStabilityCriterion(poly_1, 0)

fprintf("\n System 2\n")
poly_2 = s^5 + 6*s^3 + 5*s^2 + 8*s + 20;
poly_2 = sym2poly(poly_2);
rhStabilityCriterion(poly_2, 0)

fprintf("\n System 3\n")
poly_3 = s^5 - 2*s^4 + 3*s^3- 6*s^2 + 2*s - 4;
poly_3 = sym2poly(poly_3);
rhStabilityCriterion(poly_3, 0)

fprintf("\n System 4\n")
poly_4 = s^6 + s^5 - 6*s^4 + s^2 + s - 6;
poly_4 = sym2poly(poly_4);
rhStabilityCriterion(poly_4, 0)