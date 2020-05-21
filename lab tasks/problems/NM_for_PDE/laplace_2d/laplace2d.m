

n = 20;
x = linspace(0,1,n-1);
y = linspace(0,1,n-1);

U = zeros(n-1,n-1);
f = zeros(n-1,n-1);
# initialization of U values
f(1,:) = 0;f(:,1) =0 ; f(n-1,:) = 100;f(:,n-1) =100;


f1 = @(x,y) -81*x.*y;

# converting both f and U to coulmn matrix
fc = convert_to_coulmnmatrix(f,n-1,n-1);
Uc= convert_to_coulmnmatrix(U,n-1,n-1);

n2 = (n-1)*(n-1);
# creating A matrix
h = 1/n-2;
l = ones(n2,1)/h^2;


n2 = (n-1)*(n-1);

A = spdiags([l l -4*l l l],[-n -1 0 1 n],n2,n2);


# creating a new matrix to handle A and f initial values
hm = zeros(n2,1);

ind = 1;
for k =1:n-1
	for l =1:n-1
		if(k==1 || l == 1 )
			hm(ind) =1;
			ind++;
		elseif(k==n-1 || l== n-1)   # else if is requred prefrence is given to lower bound in square
			hm(ind) =2;
			ind++;
		else
			hm(ind) = 0;
			ind++;
		endif
	endfor
endfor
# to modify with help of hm
for k =1:n2
	if(hm(k) == 1)
		fc(k) == 0;
	elseif hm(k) == 1
		fc(k) ==100;
	endif
endfor

# modifing A
for k =1:n2
	if(hm(k)==1)
		A(k,:) = 0;
		A(k,k) = 1; 
	elseif(hm(k) ==2) # else if is requred prefrence is given to lower bound in square
		A(k,:) = 0;
		A(k,k) = 1;
	else
	endif
endfor

Uc = inv(A)*fc;

U =convert_tomatrix(Uc,n-1);


ploting_mesh(x,y,U);


