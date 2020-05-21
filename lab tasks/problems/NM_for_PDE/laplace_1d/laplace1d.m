#solving 1d poisons problem

# defining inputs 
# 1D laplace data
# solving Uxx = f(x,y)
# U(1) = intitial_value U(n) = final_value



n = 100;
h = 1/n;
fun = @(x) -(3*x+x.^2).*exp(x);
A = zeros(n,n);
l = ones(n,1)/h^2;
A = spdiags([l -2*l l],-1:1,n,n);
displaym(A)
x = linspace(0,1,100);
u = zeros(n,1);

A(1,1) = 1;
A(n,n) = 1;

b =fun(x);

u = inv(A)*b';

plot_saving(x,u);


