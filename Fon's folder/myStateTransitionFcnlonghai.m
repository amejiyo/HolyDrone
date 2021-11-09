function x = myStateTransitionFcnlonghai(x,u)
Jx=1;
Jy=1;
Jz=1;
deltat=0.01;
Xk=x;
x1=Xk(1);
x2=Xk(2);
x3=Xk(3);
x4=Xk(4);
x5=Xk(5);
x6=Xk(6);
x7=Xk(7);
x8=Xk(8);
x9=Xk(9);


x1k= x1 + x4*deltat + 0;
x2k= x2 + x5*deltat + 0;
x3k= x3 + x6*deltat + 0;
x4k= 0;
x5k= 0;
x6k= 0;
x7k= x7 + Jx*(  (x1*deltat) +  (x4*(deltat^2)) + 0    );
x8k= x8 + Jy*(  (x2*deltat) +  (x5*(deltat^2)) + 0    );
x9k= x9 + Jz*(  (x3*deltat) +  (x6*(deltat^2)) + 0    );

x=[x1k; x2k; x3k; x4k; x5k; x6k; x7k; x8k; x9k];
end

