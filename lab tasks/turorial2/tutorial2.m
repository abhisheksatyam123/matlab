% problem 1 3-meathods for calculation  of Ax = b;

n=5;
o1 = ones(n,1);
A =spdiags ([-o1 4*o1 o1], [-1 0 1], 5, 5);

b= 1:1:n;
x = A\b'; 
disp(x);


%LU meathod
[L,U] = lu(A);
x = U\(L\b');
disp(' from L-U meathod');
disp(x);

%QR meathod
[Q,R] = qr(A);
x = R\(Q\b');
disp(' from Q-R meathod');
disp(x);

% problem 2   Write a script/function to plot a 2D surface
clear all;
X =-2:.1:2;
Y= -2:.2:2;
[x,y] =  meshgrid(X,Y);
g = -x.*y.*(exp(-2*(x.^2+y.^2)));
meshplot(X,Y,g);






% problem 3 
clear all;
X = 0:0.1:3;
g = (X.^2)./(X+1);
plotnormal(X,g);


 

 
 [X,Y] = meshgrid(-1:.1:1 , -1:.1:1);
 g = X.*Y.*(X+Y);
meshplot(X,Y,g)

% problem 4
[X,Y] = meshgrid(-1:.1:1 , -1:.1:1);
g = (X.^3).*sin((Y.^2)-pi/6);
hf = figure(5);
 xlabel('x'), ylabel('y'),grid;
mesh(X,Y,g)
hold on;
plot3 (0,0,0,'*r');
hold off;
print (hf, "plot2_5.jpg");



 






