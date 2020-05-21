
#NR_exm2 for single iteration
#vpa unction increase the digits persition
pkg load symbolic   #used for symbolic variables 


x1 = sym('x1', [2 1]);


f = f1(x1);


jf = jacobian(f, x1);
vx1 = [-0.5 ;0.25];
 
vjfin = subs(jf^-1,x1,vx1);  # symbolic substitutions
vf = subs(f, x1,vx1);  #givesvf = (sym) [0  1/64]  (1×2 matrix)


vx2 = vx1+vjfin*vf';





