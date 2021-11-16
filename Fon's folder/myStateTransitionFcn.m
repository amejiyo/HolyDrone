function x = myStateTransitionFcn(x,u)
deltat=0.01;
x1=x(1:3,:);
x2=x(4:6,:);
r =x(7:9,:);

x1k=x1+x2.*deltat ;
J=[1,sin(r(1))*tan(r(2)),cos(r(1))*tan(r(2)); 0,cos(r(1)),-sin(r(1)); 0,sin(r(1))/cos(r(2)),cos(r(1))/cos(r(2)) ];
x2k=x2;
x3k=r+J*x1.*deltat;
x=[x1k; x2k; x3k];

end

