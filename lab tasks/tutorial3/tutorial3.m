pkg load symbolic


% problem 1  meathod of solving polymomials and functions
clear all;
%meathod 1
p = [1 -10 10];
r = roots(p);

%meathod 2
p2 = poly(r);
syms x;
s = solve(p(1)*x.^2+p(2)*x+p(3));
double(s)

%meathod 3
fun = @(x) p(1)*x.^2+p(2)*x+p(3);
z = fzero(fun,[1,2]);
disp(z);

% ploting of function
xx = linspace(1,9,100);  % by default into 100 elements third inpit deside no. of elements


hf = figure(1) 
xlabel('x'), ylabel('y'),grid;
plot(xx,fun(xx),'r-','linewidth',3);
print (hf, "plot2_2.jpg"); 
 
% problem 2 Write a Matlab script/function to minimize the following function using Lagrange multiplier method:

%meathod 1

function F = objective(x)
F(1) = 2*x(1)*x(2)+2*x(3)*x(1);
F(2) = x(1)^2+2*x(3)*x(2);
F(3) = x(1)^2+x(2)^2-3;
end

x0 = [0.5,-0.5,1];
options = optimset('Display','iter');
[x,fval] = fsolve(@objective,x0,options);

x = linspace(0,10,100);
y = zeros(100);
h = 10/100; 
y(1) = 1000;
for i = 2:100
	y(i) = 0.1*y(i-1)*h+y(i-1);
endfor	
hf = figure(1)
xlabel('x'), ylabel('y'),grid;
plot(x,y);
print (hf, "plot3a.jpg"); 
#  #problem3 b 

x = linspace(0,2,10);
y = zeros(10);
h = 2/9; 
y(1) = 1;
for i = 2:10
	y(i) =(y(i-1)^2+x(i-1)^2)*h+y(i-1);
endfor	
hf = figure(2)
xlabel('x'), ylabel('y'),grid;
plot(x,y);
print (hf, "plot3b.jpg"); 





