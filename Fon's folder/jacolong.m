function [a,u] = jacolong(x,u)


Jx=1;

Jy=1;

Jz=1;

u=0;
dt = 1/100;
a = [1 0 0 dt 0 0 0 0 0;0 1 0 0 dt 0 0 0 0;0 0 1 0 0 dt 0 0 0;0 0 0 1 0 0 0 0 0;0 0 0 0 1 0 0 0 0;0 0 0 0 0 1 0 0 0;Jx*dt 0 0 Jx*dt^2 0 0 1 0 0;0 Jy*dt 0 0 Jy*dt^2 0 0 1 0;0 0 Jz*dt 0 0 Jz*dt^2 0 0 1];
end

