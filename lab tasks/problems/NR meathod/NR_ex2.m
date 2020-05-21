#NR_exm2
pkg load symbolic   #used for symbolic variables
syms x;

f = @(x) x^3-3*x+2;

df = @(x) 2*x^2-3;

x = -2.4;
x1 = x - f(x)/df(x);



while(abs(x1-x)>0.001)
	x = x1;
	x1 = x - f(x)/df(x);
endwhile
x1
abs(vpa(x1+2))/(vpa(abs(x+2)))^2  #vpa unction increase the digits persition

