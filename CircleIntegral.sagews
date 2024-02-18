%octave
%This code numerically integrates 1/(1+x^2) from x=0 to x=1 to approximate pi/4
clear;
clc;
pkg load symbolic
digits(100)

n = sym(8000); %number of subintervals (n=30 takes about 5 seconds; n=1000 takes 170 seconds)
a = sym(0); %integrate from 0 to 1
b = sym(1);
count = sym(0);
deltax = sym((b-a)/n); % width of each subinterval
s = sym(0); %start the sum at zero

% Choose one of these to use:
%%%xi = sym(a);        % start here to use left endpoints
%%%xi = sym(a+deltax); % start here to use right endpoints
xi = sym(a+deltax/2);  % start here to use midpoints

f = @(x) vpa(1/(1+x^2));

tic
%starttime = time();
    for k=1:double(n)
      
          s = s + vpa(deltax*f(xi));
          xi = xi + deltax;
          count = count + 1;
%          if time() > starttime+600
%              break;
%          end;
    
    end;
s = s*4;
toc
disp(count)
vpa(s)