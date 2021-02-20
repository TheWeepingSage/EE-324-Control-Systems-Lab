clc
syms s
poly_1 = conv(conv([1 2+3i], [1 2-3i]), conv([1 +8i], [1 -8i]));
poly_a = conv(poly_1, [1 0 1]);
rhStabilityCriterion(poly_a, 0);
poly2sym(poly_a, s)

poly_2 = conv(poly_1, conv([1 1+7i], [1 1-7i]));
poly_b = conv(poly_2, [1 0 1]);
rhStabilityCriterion(poly_b, 0);
poly2sym(poly_b, s)

poly_c = [1 2 3 4 6 8 3];
rhStabilityCriterion(poly_c, 0);
poly2sym(poly_c, s)