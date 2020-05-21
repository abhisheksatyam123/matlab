function f = convert_tomatrix(A,n)
	f = zeros(n,n);
	n2 = n*n;
	tem =1
	for k = 1:n
		for l =1:n
			f(k,l) = A(tem);
			tem++;
		endfor
	endfor
endfunction


