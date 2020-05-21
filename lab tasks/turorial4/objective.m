function F = objective(x)
    F(1) = 2*x(1)*x(2)+2*x(3)*x(1);
    F(2) = x(1)^2+2*x(3)*x(2);
    F(3) = x(1)^2+x(2)^2-3;
end

