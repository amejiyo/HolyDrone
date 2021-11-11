function y = myMeasurementFcn(x)
x3 = eul2rotm(x(7:9)')*[0;1;0];
y=[x(1:3);x3];
end

