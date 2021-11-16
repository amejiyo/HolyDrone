function c = jacomeasure(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Jacobian size = 6*9
d_r = [ cos(x(9))*sin(x(8))*cos(x(7)) + sin(x(9))*sin(x(6)), cos(x(9))*cos(x(8))*sin(x(7)), -sin(x(9))*sin(x(8))*sin(x(7)) - cos(x(9))*cos(x(7));
       sin(x(9))*sin(x(8))*cos(x(7)) - cos(x(9))*sin(x(6)), sin(x(9))*cos(x(8))*sin(x(7)), cos(x(9))*sin(x(8))*sin(x(7)) + sin(x(9))*sin(x(7));
       cos(x(8))*cos(x(7))                                , -sin(x(8))*sin(x(7))         , 0];

% d_r = [-cos(x(9))*sin(x(7)),sin(x(9))*sin(x(8))+cos(x(9))*sin(x(7))*cos(x(8)),cos(x(9))*sin(x(8))-sin(x(9))*sin(x(7))*cos(x(8));
%         -sin(x(9))*sin(x(7)),-cos(x(9))*sin(x(8))+sin(x(9))*sin(x(7))*cos(x(8)),sin(x(9))*sin(x(8))+cos(x(9))*sin(x(7))*cos(x(8));
%         -cos(x(7)),0,0];
        
%c=[diag([1;1;1]),zeros(3),zeros(3);zeros(3),zeros(3),d_r];
c=[diag([1;1;1]),zeros(3),zeros(3);zeros(3),zeros(3),d_r];
end

