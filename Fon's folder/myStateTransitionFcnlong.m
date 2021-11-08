function y = myStateTransitionFcnlong(x,u)
% init delta t
deltat=0.001;
out=load("Xout");
Xk=out.Xout.Data(end,:);

out=load("jaout");
Ja=out.jaout.Data(:,:,end);

Jx=Ja*[0; 0; 1];
Jx=Jx(3);
Jy=Ja*[0; 1; 0];
Jy=Jy(2);
Jz=Ja*[1; 0; 0];
Jz=Jz(1);

x1=Xk(1);
x2=Xk(2);
x3=Xk(3);
x4=Xk(4);
x5=Xk(5);
x6=Xk(6);
x7=Xk(9);
x8=Xk(8);
x9=Xk(7);
dx4=Xk(10);
dx5=Xk(11);
dx6=Xk(12);

x1k= x1 + x4*deltat + (0.5*dx4*(deltat^2));
x2k= x2 + x5*deltat + (0.5*dx5*(deltat^2));
x3k= x3 + x6*deltat + (0.5*dx6*(deltat^2));
x4k= dx4*deltat;
x5k= dx5*deltat;
x6k= dx6*deltat;
x7k= x7 + Jx*(  (x1*deltat) +  (x4*(deltat^2)) + (0.5*dx4*(deltat^3))    );
x8k= x8 + Jy*(  (x2*deltat) +  (x5*(deltat^2)) + (0.5*dx5*(deltat^3))    );
x9k= x9 + Jz*(  (x3*deltat) +  (x6*(deltat^2)) + (0.5*dx6*(deltat^3))    );

y=[x1k; x2k; x3k; x4k; x5k; x6k; x7k; x8k; x9k];
end

