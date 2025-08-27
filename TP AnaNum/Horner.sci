
p=poly([-1 0 1 2 3],"x","coeff");
l=horner(p,[0 4 7 100]);
disp(l)
