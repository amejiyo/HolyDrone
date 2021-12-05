




realx=position(:,1)
realy=position(:,2)
realz=position(:,3)
realt=time
realRx=ZYX(:,3)
realRy=ZYX(:,2)
realRz=ZYX(:,1)

setP_z=setpoint(:,1)
setR_z=setpoint(:,2)



realx=transpose(realx)
realy=transpose(realy)
realz=transpose(realz)
realt=transpose(realt)
realRx=transpose(realRx)
realRy=transpose(realRy)
realRz=transpose(realRz)

setP_z=transpose(setP_z)
setR_z=transpose(setR_z)


X=[]
Y=[]
Z=[]
t=[]
Rz=[]

rotm=[1 0 0; 0 1 0;0 0 1];


fid = figure;
fid.Position(3:4) = [1920 1080];
writerObj = VideoWriter('Simmulation3','MPEG-4'); % Name it.
writerObj.FrameRate = 20; % How many frames per second.
writerObj.Quality=100;
open(writerObj); 




time=0;
index=1;
tic
while(1)
   
   
   if(time>=realt(index))
       X=[X realx(index)];
       Y=[Y realy(index)];
       Z=[Z realz(index)];
       t=[t realt(index)];
       Rz=[Rz realRz(index)];
       
%        plotCircle3D([realx(index),0,0],[0,0,0],0.2)
       cla reset
       subplot('Position',[0.1 0.25 0.5 0.7])
       cla reset
       hold all
       grid on
       view(3)
       subplot('Position',[0.1 0.25 0.5 0.7])
       axis([-5 5 -5 5 0 15 ])
       rotm =  eul2rotm( [realRz(index),realRy(index),realRx(index)]);
       plotDrone_sub([realx(index),realy(index),realz(index)],[0,0,0],0.1,rotm)
       plot3(X,Y,Z,'--','color','black')
       
       subplot('Position',[0.65 0.55 0.3 0.4])
       cla reset
       view(2)
       plot(t,Z,realt,setP_z)
       grid on
       xlabel('Time (s)') 
       ylabel('Position z (m)') 
       
       subplot('Position',[0.65 0.05 0.3 0.45])
       view(2)
       plot(t,Rz,realt,setR_z)
       grid on
       xlabel('Time (s)') 
       ylabel('Yaw (rad)') 
%        pause(1);

        figure(fid); % Makes sure you use your desired frame
        frame = getframe(gcf); % 'gcf' can handle if you zoom in to take a movie.
        writeVideo(writerObj, frame);
      
        
        
        
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

hold off
close(writerObj); % Saves the movie.
clear
