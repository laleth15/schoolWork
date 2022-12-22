A = [-5, -1; 3, -1];
B = [2; 5];
C = [1, 2];

sys = ss(A,B,C,[]);
t= linspace(0,5,10);
u = ones(length(t),1);
x0 = [1, 1];

lsim(sys, u, t, x0);