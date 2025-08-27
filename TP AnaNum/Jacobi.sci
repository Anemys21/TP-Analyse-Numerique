function x = jacobi(A, b,x0,tol)
  n = size(A, 1);
  x = x0;
  x_prec = x + 1;
  while norm(x - x_prec) > tol
    x_prec = x;
    for i = 1:n
      somme = 0;
      for j = 1:n
        if j ~= i then
          somme = somme + A(i, j) * x(j);
        end
      end
      x(i) = (b(i) - somme) / A(i, i);
    end
  end
endfunction
x=jacobi([4,-1,2;-1,5,4;5,3,6],[11,2,17],[1,1,1],10^(-2))
disp(x)
