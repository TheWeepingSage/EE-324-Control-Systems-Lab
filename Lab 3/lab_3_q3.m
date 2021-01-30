%---------------------Part a-----------------------------%
%---------------------------------------------------------%
sys_1 = tf(9, [1 2 9]);
sys_params = struct([stepinfo(sys_1)]);
sys_2 = tf(3*[1 3], [1 2 9]);
sys_params(2) = stepinfo(sys_2);

%---------------------Part b-----------------------------%
%---------------------------------------------------------%
sys_3 = tf(9*0.9, conv([1 2 9], [1 0.9]));
sys_params(3) = stepinfo(sys_3);
sys_4 = tf(9*2, conv([1 2 9], [1 2]));
sys_params(4) = stepinfo(sys_4);
sys_params = struct2table(sys_params);
sys_params.Properties.RowNames = ["original", "extra zero", "extra pole nearer to the origin", "extra pole farther from the origin"];
sys_params

step(sys_1, sys_2, sys_3, sys_4)
legend(["original", "extra zero", "extra pole nearer to the origin", "extra pole farther from the origin"])