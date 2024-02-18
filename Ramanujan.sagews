%octave
clear
pkg load symbolic
tic()
digits(100)
k = sym(0)
n = sym(0)
starttime = time();
  while(1)
    n = n + ((factorial(4 * k)) * (1103 + (26390 * k))) / (((factorial(k)) ^ 4) * (396 ^ (4 * k)));
    k = k+1;
    if time() > starttime+600
      break;
    end;
end;
vpa(1/(((2*sqrt(2))/(9801))*n))
toc()
disp(k)