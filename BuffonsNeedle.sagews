%octave
clear;
clc;
pkg load symbolic
digits(100)

starttime = time();
tic ()
k = 0;

for j=1:20000000
    x = rand*10;
    y = rand*10;
    flex = x+cos(rand*360);
    pin = floor(x) - floor(flex);
    if pin == 1 || pin == -1
      k = k+1;
    end;
    if time() > starttime+600
      break;
    end;
end;
disp(k)
disp(j)
k/j
vpa(2/vpa(k/j))
toc()
