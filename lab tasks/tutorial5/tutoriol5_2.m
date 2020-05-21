%hf=figure(2),contour(X,Y,g),xlabel('x'),ylabel('y'),grid
%print (hf, "plot2_2.pdf", "-dpdflatexstandalone");
%system ("pdflatex plot2_2");

function f = dif(x,t)
	f(1) = x(2);
	f(2) = 	sin(t)-3*x(1);
end

U = zeros(101,2);
U(1,1)

