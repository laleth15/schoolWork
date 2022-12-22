n = [0 0 0 1 3];
d = [1 5 20 16 0];

rlocus(n,d)
v = [-6 6 -6 6];
axis(v);
axis('square');
grid
title("G(s) = k(s+3) / s(s+1)(s^2+4s+16)")