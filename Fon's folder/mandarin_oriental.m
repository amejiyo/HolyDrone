function A = mandarin_oriental(u)
% syms x1 x2 x3 a_dot dt real;
% %dt= 1/100;
% x1 = sym('x1',[3 1]);
% assume(x1,'real');
% 
% x2 = sym('x2',[3 1]);
% assume(x2,'real');
% 
% x3 = sym('x3',[3 1]);
% assume(x3,'real'); 
% x1 = u(1);
% x2 = u(2);
% x3 = u(3);
% jr = [1 0 0;0 1 0;0 0 1];
% f = [x1 + x2*dt + a_dot*0.5*dt^2;x2 + a_dot*dt;x3 + jr*x1*dt + jr*x2*dt^2 +0.5*jr*dt^3*a_dot];
% x = jacobian(f ,[x1 x2 x3])




% x1 = u(1:3)
% x2 = u(4:6);
% x3 = u(7:9);
% dt = 1/100;
%A =[ 1  dt   0;0     1    0; dt*x3  dt^2*x3  x2*dt^2+dt*x1+1];





A = eye(9);
end

