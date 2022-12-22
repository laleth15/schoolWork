n = [10 10];
d = [1 1 9 12];
sys = tf(n,d);

step(sys)
grid
% k =10 z =1 p = 2
title("Step response of G(s) = k(s+z) / s^3 + (p-z)s^2 + (k-zp+1)s + p + kz")