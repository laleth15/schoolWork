t = 0 : 0.1 : 10;

m1 = 5; m2 = 5;
a1 = 1; a2 =1;
g = 9.81;

%intial values
q = [0;0];
q_dot = [0;0];

for i = 1:length(t)
    th1 = q(1,i); th2 = q(2,i);
    th1_dot = q_dot(1,i); th2_dot = q_dot(2,i);

    %inertia matrix
    m11 = a1^2*m1 + a1^2*m2 + a2^2*m2 + 2*a1*a2*m2*cos(th2);
    m21 = 0;
    m12 = 0;
    m22 = a2^2*m2;
    M = [m11,m12;m21,m22];
    h1 = -2*(a1+a2*cos(th2))*a2*m2*sin(th2)*th1_dot*th2_dot;
    h2 = (a1+a2*cos(th2))*a2*m2*sin(th2)*th1_dot^2;
    v = [h1;h2];
    g1 = 0;
    g2 = a2*m2*cos(th2);
    g_v = g*[g1;g2];

    tau1 = 0.1; tau2 =0.2*sin(t(i));
    tau(:,i) = [tau1;tau2];

    q_ddot(:,i) = inv(M)*(tau(:,i) - (v+g_v));
    
    q_dot(:,i+1) = q_dot(:,i) + q_ddot(:,i)*0.1;

    q(:,i+1) = q(:,i) + q_dot(:,i)*0.1 + 1/2*q_ddot(:,i)*0.1^2;
end

plot(t,q(1,1:i),'r-.',t,q(2,1:i),'b-')
legend('\theta1','theta2')



