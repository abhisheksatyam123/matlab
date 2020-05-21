function displaym(a,n)
	for k=1:n
		fprintf("\n");
		for l = 1:n
			fprintf(" ");
			fprintf("%d ",a(k,l));
		endfor 
	endfor
	fprintf("\n")
endfunction
