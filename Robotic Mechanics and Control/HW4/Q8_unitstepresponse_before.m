n = 1;
d = [1 -2 1];
sys = tf(n,d);

step(sys)
grid
title("Step response of G(s) = 1 / (s-1)^2")