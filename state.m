function x = state(x)
dt = 0.01;

x = [diag([1;1;1]), dt*diag([1;1;1]);zeros(3), diag([1;1;1])]*x;
