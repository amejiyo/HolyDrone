function y = myMeasurementFcn(x)
x3 = roty(x(8))*rotx(x(7))*rotz(x(9))*[0;1;0];

%x3 = eul2rotm(x(7:9)')*[0;1;0];
y=[x(1:3);x3];
end

