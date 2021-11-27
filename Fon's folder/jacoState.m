function [a,g] = jacoState(x,u)
x1=x(1:3,:);
x2=x(4:6,:);
deltat=0.01;
r=x(7:9,:);
J=[1,sin(r(1))*tan(r(2)),cos(r(1))*tan(r(2)); 0,cos(r(1)),-sin(r(1)); 0,sin(r(1))/cos(r(2)),cos(r(1))/cos(r(2)) ];
% r_j=J*r; % 3x1
q=x1.*deltat + x2.*deltat^2 ;
dt = deltat;
a=[diag([1,1,1]),diag([dt,dt,dt]),zeros(3);       zeros(3),diag([1,1,1]),zeros(3);            deltat.*J ,deltat^2.*J,[x1(1) + x1(2)*(dt*cos(r(1))*tan(r(2)) + 1) - x1(3)*(dt*sin(r(1))*tan(r(2)) - 1),         dt*x1(3)*cos(r(1))*(tan(r(2))^2 + 1) + dt*x1(2)*sin(r(1))*(tan(r(2))^2 + 1),            0;                               - dt*x1(3)*cos(r(1)) - dt*x1(2)*sin(r(1)),                                                          x1(1) + x1(2) + x1(3),            0;             (dt*x1(2)*cos(r(1)))/cos(r(2)) - (dt*x1(3)*sin(r(1)))/cos(r(2)), (dt*x1(3)*cos(r(1))*sin(r(2)))/cos(r(2))^2 + (dt*x1(2)*sin(r(1))*sin(r(2)))/cos(r(2))^2, x1(1) + x1(2) + x1(3)]];

g=diag([1;1;1;1;1;1;1;1;1]);
end

