function c = jacomeasure(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x1 = x(7);
x2 = x(8);
x3 = x(9);
d_r =   [sin(x1)*sin(x3) + cos(x1)*cos(x3)*sin(x2), cos(x2)*cos(x3)*sin(x1), - cos(x1)*cos(x3) - sin(x1)*sin(x2)*sin(x3);
        cos(x1)*sin(x2)*sin(x3) - cos(x3)*sin(x1), cos(x2)*sin(x1)*sin(x3),   cos(x3)*sin(x1)*sin(x2) - cos(x1)*sin(x3);
                                  cos(x1)*cos(x2),        -sin(x1)*sin(x2),                                           0];
c=[diag([1;1;1]),zeros(3),zeros(3);zeros(3),zeros(3),d_r];
end

