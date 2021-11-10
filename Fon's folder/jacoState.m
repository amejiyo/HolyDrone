function [a,g] = jacoState(x,u)
x1=x(1:3,:);
x2=x(4:6,:);
deltat=0.01;
r=x(7:9,:);
J=[1,sin(r(1))*tan(r(2)),cos(r(1))*tan(r(2)); 0,cos(r(1)),-sin(r(1)); 0,sin(r(1))/cos(r(2)),cos(r(1))/cos(r(2)) ];
r_j=J*r;
dj=[0,sin(r(1))/(sin(r(2))^2) ,0; 0,0,0; 0,sin(r(1))*sin(r(2))/(cos(r(2)^2)),0];
r_dj=dj*r;
q=x1.*deltat + x2.*deltat^2 ;
a=[diag([1,1,1]),deltat.*diag([1,1,1]),zeros(3); zeros(3),diag([1,1,1]),zeros(3); deltat.*diag(r_j),deltat^2.*diag(r_j),1.+diag(r_dj.*q) ];
% a=zeros(9);
% x=zeros(9);
g=ones(9);
end

