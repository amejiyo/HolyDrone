function plotDrone(pos,normal,sizeMedium,rotm)
sizefan=sizeMedium*3;
% pos=rotm*pos'
% pos=pos'

theta=0:0.01:2*pi;
v=null(normal);
points=repmat(pos',1,size(theta,2))+sizeMedium*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
points=rotm*points;
plot3(points(1,:),points(2,:),points(3,:),'r-')

pos2=pos+[0.5,0.5,0];
theta=0:0.01:2*pi;
v=null(normal);
points=repmat(pos2',1,size(theta,2))+sizefan*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
points= rotm*points;
plot3(points(1,:),points(2,:),points(3,:),'b-')

pos3=pos+[0.5,-0.5,0];
theta=0:0.01:2*pi;
v=null(normal);
points=repmat(pos3',1,size(theta,2))+sizefan*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
points= rotm*points;
plot3(points(1,:),points(2,:),points(3,:),'r-')

pos4=pos+[-0.5,-0.5,0];
theta=0:0.01:2*pi;
v=null(normal);
points=repmat(pos4',1,size(theta,2))+sizefan*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
points= rotm*points;
plot3(points(1,:),points(2,:),points(3,:),'r-')

pos5=pos+[-0.5,0.5,0];
theta=0:0.01:2*pi;
v=null(normal);
points=repmat(pos5',1,size(theta,2))+sizefan*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
points= rotm*points;
plot3(points(1,:),points(2,:),points(3,:),'r-')

q=rotm*[pos2(1),pos4(1);pos2(2),pos4(2);pos2(3),pos4(3)];
qq=rotm*[pos3(1),pos5(1);pos3(2),pos5(2);pos3(3),pos5(3)];
plot3(q(1,:),q(2,:),q(3,:),'black')
plot3(qq(1,:),qq(2,:),qq(3,:),'b-')


q=rotm*[pos(1),pos(1)+1;pos(2),pos(2);pos(3),pos(3)];
qq=rotm*[pos(1),pos(1);pos(2),pos(2)+1;pos(3),pos(3)];
qqq=rotm*[pos(1),pos(1);pos(2),pos(2);pos(3),pos(3)+1];

plot3(q(1,:),q(2,:),q(3,:),'r-')
plot3(qq(1,:),qq(2,:),qq(3,:),'g-')
plot3(qqq(1,:),qqq(2,:),qqq(3,:),'b-')




end