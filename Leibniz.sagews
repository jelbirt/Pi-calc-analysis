%octave
clc;
pkg load symbolic
tic()
digits(100)

k = sym(0)
n = sym(1)
starttime = time();
while (1)
  k = k+1;
  n = n + ((-1)^k)/(2*k+1);
  if time() > starttime+600
    break;
  end;
end;
vpa(4*n)
toc()
disp(k)