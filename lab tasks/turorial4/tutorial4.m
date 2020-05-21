 pkg load symbolic
 clear all;
 p = [1,-10,10];
 r = roots(p);
 p2 = poly(r);
 syms x;
 s = solve(p2(1)*x.^2+p2(2)*x+p2(3));
 double(s);
 fun = @(x) p2(1)*x.^2+p2(2)*x+p2(3);
 z = fzero(fun,[1,2]);
 xx = linspace(1,9);
 plot(xx, fun(xx),'r-','linewidth',3);

x0 = [0.5;-0.5;1];
options = optimset('Display','iter');
[x,fval] = fsolve(@objective,x0,options);

