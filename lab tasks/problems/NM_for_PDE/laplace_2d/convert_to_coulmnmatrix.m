function a1 = convert_to_coulmnmatrix(A,n,m)
	a1 = zeros(n*m,1);
	loc = 1;
	for k = 1:n
		for l = 1:m
			a1(loc) = A(k,l);
			loc = loc+1;
		endfor
	endfor
endfunction
