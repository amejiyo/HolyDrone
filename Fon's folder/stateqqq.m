function y = stateqqq(u,j,du4,du5,du6)
dt = 0.01;
yy=j(2);
xx= j(3);
u1=u(1);u2=u(2);u3=u(3);u4=u(4);u5=u(5);u6=u(6);u7=u(9);u8=u(8);u9=u(7);


jr = [1 sin(xx)*tan(yy) cos(xx)*tan(yy);0 cos(xx) -sin(xx);0 sin(xx)/cos(yy) cos(xx)/cos(yy)];


q7 = u1*dt + u4*dt^2 + 0.5*du4*dt^3;
jx = jr*[1;0;0];
jx =jx(1);

q8 = u2*dt + u5*dt^2 + 0.5*du5*dt^3;
jy = jr*[0;1;0];
jy =jy(2);

q9 = u3*dt + u6*dt^2 + 0.5*du6*dt^3;
jz = jr*[0;0;1];
jz =jz(3);

y1 = u1 + u4*dt + 0.5*du4*dt^2;
y2 = u2 + u5*dt  + 0.5*du5*dt^2;
y3 = u3 + u6*dt  + 0.5*du6*dt^2;
y4 = u4 + du4*dt;
y5 = u5 + du5*dt;
y6 = u6 + du6*dt;
y7 = u7 + jx *q7;
y8 = u8 + jy *q8;
y9 = u9 + jz *q9;
y= [y1;y2;y3;y4;y5;y6;y7;y8;y9];

