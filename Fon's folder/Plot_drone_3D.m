




realx=out.position(:,1)
realy=out.position(:,2)
realz=out.position(:,3)
realt=out.time
realRx=out.ZYX(:,3)
realRy=out.ZYX(:,2)
realRz=out.ZYX(:,1)

realx=transpose(realx)
realy=transpose(realy)
realz=transpose(realz)
realt=transpose(realt)
realRx=transpose(realRx)
realRy=transpose(realRy)
realRz=transpose(realRz)

X=[]
Y=[]
Z=[]

rotm=[1 0 0; 0 1 0;0 0 1];


time=0;
index=1;
tic
while(1)
   
   
   if(time>=realt(index))
       X=[X realx(index)];
       Y=[Y realy(index)];
       Z=[Z realz(index)];
       
%        plotCircle3D([realx(index),0,0],[0,0,0],0.2)
       
       cla reset
       hold all
       grid on
       view(3)
       
         
       rotm =  eul2rotm( [realRz(index),realRy(index),realRx(index)]);
       plotDrone([realx(index),realy(index),realz(index)],[0,0,0],0.1,rotm)
       plot3(X,Y,Z,'--','color','black')
     
       
%        pause(1);
       
       
       index=index+1;
   end
   if(index>size(realt,2))
       disp("End of simulation")
       break
   end
   
        
   

   pause(0.01);
   time=toc;
   disp(time)
end