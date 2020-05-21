function plot_saving(x,y)
{

	hf = figure();
	plot(x, y);
	xlabel("x");
	ylabel("y");
	title( " plot of y vs x");
	print(hf, "plot15_7.jpg");
	open plot15_7.pdf
}
