A = [-5, -1; 3, -1];
B = [2; 5];
C = [1, 2];

sys = ss(A,B,C,[]);
x0 = [1, 1];

initial(sys,x0)

