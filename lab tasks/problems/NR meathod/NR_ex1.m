pkg load symbolic   #used for symbolic variables
syms x;

f = @(x) x^2 - 2;

df = @(x) 2*x;

x = 1;
x1 = x - f(x)/df(x);



while(abs(x1-x)>0.001)
	x = x1;
	x1 = x - f(x)/df(x);
endwhile

