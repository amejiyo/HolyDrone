




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


% fid = figure;
% writerObj = VideoWriter('Simmulation3.avi'); % Name it.
% writerObj.FrameRate = 20; % How many frames per second.
% open(writerObj); 




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
       axis([-5 5 -5 5 0 15])
         
       rotm =  eul2rotm( [realRz(index),realRy(index),realRx(index)]);
       plotDrone([realx(index),realy(index),realz(index)],[0,0,0],0.1,rotm)
       plot3(X,Y,Z,'--','color','black')
       view(40,40)
       
       
       
%        pause(1);

%         figure(fid); % Makes sure you use your desired frame
%         frame = getframe(gcf); % 'gcf' can handle if you zoom in to take a movie.
%         writeVideo(writerObj, frame);
      
        
        
        
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

% hold off
% close(writerObj); % Saves the movie.
