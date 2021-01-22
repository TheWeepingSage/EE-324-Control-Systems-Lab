%----------------------Part a----------------------------%
syms s
cont_tf = tf(1, sym2poly(s));
hold on
step(cont_tf)

%----------------------Part b----------------------------%
syms z
disc_tf = tf(1, sym2poly(z), -1);
step(disc_tf)

legend("continuous-time", "discrete-time")

%----------------------Part c----------------------------%
step(1, z)