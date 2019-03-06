function [rz, ite] = newraph(f, x, TOL, L)
  
  x0 = x;
  x1 = x0 - (f(x0) / deriv(@f, x0));
  N = 1;
  ite = 0;
  while (abs(f(x1)) > TOL && N <= L)
    printf('Iteração %d:\tx0 = %f\tx1 = %f\n',N,x0,x1)
    x0 = x1;
    x1 = x0 - (f(x0) / deriv(@f, x0));
    N = N + 1;
  endwhile
  if N > L
    disp('Não houve convergência!');
    ite = L;
  else
    rz = x1;
    ite = N - 1;
  endif

endfunction