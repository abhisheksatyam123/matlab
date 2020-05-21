# solving parabolic pde
x_len = 5
y_len = 5
x = linspace(0,1,x_len);
y = linspace(0,2,y_len);

U = zeros(x_len,y_len);
f = zeros(x_len,y_len);

# initialization of U->f values 

f1 = @(x) sin(x/pi);
f(1,:) = 0;f(:,1) =f1(x) ; f(x_len,:) = 0;

# creating A matrix
lmda = 1/4;
l = ones(x_len,1);
a = lmda*l;
b = (1-2*lmda)*l;


A = spdiags([a b a],[ -1 0 1 ],x_len,x_len);
displaym(A,x_len);

