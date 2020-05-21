% for euler meathod
h = 0.5;
x = 0:0.5:10; 
f = @(x) 9*x.*exp(-3*x);
y1(1) = 1;
for i=1:20
    y1(i+1) = y1(i) + h*f(x(i));
end





% for rk2

y2(1) =  1;

for i=1:20
    ak1 = 0.5*h*f(x(i));
    bk2 = 0.5*h*f(x(i)+h);
    y2(i+1) = y2(i) + (ak1+bk2);
end


% for rk 4
y3(1) = 1;
for i=1:20
    k1 = f(x(i));
    k2 = f(x(i)+h/2);
    k3 = f(x(i)+h/2);
    k4 = f(x(i)+h);
    
    y3(i+1) = y3(i) + h/6*(k1+2*k2+2*k3+k4);
    
    
end
y(1) = 1
for i =1:21
    y(i) = 2-(3*x(i)+1)*exp(-3*x(i));
end

hf = figure(2) ,xlabel('x'),ylabel('y')
hold on;
plot(x,y1,'r');
plot(x,y2,'g');
plot(x,y3,'k');
plot(x,y,'m');
print (hf, "plot23.pdf");
system ("pdflatex plot2_2");
hold off;



