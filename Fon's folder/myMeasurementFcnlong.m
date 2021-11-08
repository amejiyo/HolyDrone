function y = myMeasurementFcnlong(x)
out=load("Xout")
Xk=out.Xout.Data(end,:);
y=[abs(Xk(1)); abs(Xk(2)); abs(Xk(3))];


end

