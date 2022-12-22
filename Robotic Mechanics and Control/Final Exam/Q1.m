l = 0.5;
m = 0.1;
M = 2;
g = 9.81;

% State equation
a = [0 1 0 0; (g*(M+m))/(M*l) 0 0 0; 0 0 0 1; -(M*g)/M 0 0 0];
b = [0; -1/(M*l); 0; 1/M];

c = [1 0 0 0; 0 0 1 0];
d = [0];

% Desired Eigen Values
e1 = -1;
e2 = -2;
e3 = -3;
e4 = -4;

k = place(a,b,[e1 e2 e3 e4]);

sys = ss(a-b*k,b,c,d);
step(sys)
impulse(sys)