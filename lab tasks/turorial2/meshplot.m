function F= meshplot(X,Y,g)
	hf = figure(1)
	xlabel('x'), ylabel('y'),grid;
	mesh(X,Y,g), ;
	print (hf, "plot2_2.jpg"); 
endfunction
