A = [5 -2 0;-2 5 1;0 1 5];
b = [20;10;-10];
inv(A)*b;
x0 = [0;0;0];
x00 = [1;1;1];
x1= [2;2;2];
r0 = b - A*x0;
d0 = r0;
while  abs(x1-x00) > 0.001
	alpha0 = (r0'*r0)/(d0'*A*d0);
	x1 = x0 +alpha0*d0;
	r1 = r0 - alpha0*A*d0;
	beta0 = (r1'*r1)/(r0'*r0);
	d1 = r1+beta0*d0;
	x00 = x0;
	x0 = x1;
	r0 =r1;
	d0 =d1;
	d0 =d1;
	
	



endwhile
 x1 

 
