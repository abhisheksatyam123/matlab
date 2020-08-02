#test.m
pkg load symbolic  

x1 = sym('x', [1 3]);


eqn = f1(x1);

jf = jacobian(eqn, x1);

x0 = [1 1 1];
x2 = [2 2 2];


while(e > 0.01)
	jfd = double(subs(jf,x1,x0));
	fd = f1(x0);

	deltax = -inv(jfd)*fd;
	x2 = x0 +deltax'; 
	e = erro(x0,x2);
	x0 = x2;

endwhile

x2
