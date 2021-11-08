%dt = out.tout;
time = (1:2000)';
x1  =  out.state_variable.Data(time,1);
x2  =  out.state_variable.Data(time,2);
x3  =  abs(out.state_variable.Data(time,3));
x4  = out.state_variable.Data(time,4);
x5  = out.state_variable.Data(time,5);
x6  = abs(out.state_variable.Data(time,6));
x9  = out.state_variable.Data(time,9);
x8  = out.state_variable.Data(time,8);
x7  = abs(out.state_variable.Data(time,7));

funny  = [0 ;0;0; 0]
funny1 = [x3;x6;x7]

