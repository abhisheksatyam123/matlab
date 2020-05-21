function ploting_mesh(x,y,z)
	[X,Y] = meshgrid(x,y);
	hf = figure();
	mesh(X,Y,z);
	xlabel ("X");
	ylabel ("y");
	zlabel ("z");
	title ("plot of Z vs x-y");
	print(hf, "plot15_7.jpg");
	open plot15_7.pdf
endfunction
