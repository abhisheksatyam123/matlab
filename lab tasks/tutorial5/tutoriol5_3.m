%hf=figure(2),contour(X,Y,g),xlabel('x'),ylabel('y'),grid
%print (hf, "plot2_2.pdf", "-dpdflatexstandalone");
%system ("pdflatex plot2_2");
n = 100; 
t = linspace(0,pi,100);
x = linspace(0,100);
A = zeros(100,100);
b = sin(t);
h = pi/100;

x_i_2= (1/(h^2))*ones(n,1);
x_i_1 = -(( 2/(h^2) )+ 3)*ones(n,1);
x_i_0 = (1/(h^2))*ones(n,1);

A = spdiags([x_i_0 , x_i_1 ,x_i_2] ,[-1,0,1],n,n);

A(1,:) = zeros(n,1);
A(1,1) = 1;
b(1) = (1);


A(n,:) = zeros(n,1);
A(n,1) = 1;
b(n) = 1;


x = A\b'; 

hf=figure(2),xlabel('x'),ylabel('y');
plot(t,x);
print (hf, "plot2_2.jpg");
system ("pdflatex plot2_2");


