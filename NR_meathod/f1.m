# multi var unction decration
function F = f1(x)
	F(1,1) = 3*x(1) - cos(x(2)*x(3)) -3/2;
	F(2,1) = 4*x(1)^2-625*x(2)^2+2*x(3)-1;
	F(3,1) = 20*x(3) + exp(-x(1)*x(2))+9;
endfunction
