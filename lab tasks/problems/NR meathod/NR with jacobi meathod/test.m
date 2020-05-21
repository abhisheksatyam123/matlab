#test.m
pkg load symbolic  

x1 = sym('x', [1 2]);

eqn = f1(x);

jf = jacobian(eqn, x);

x2 = 

