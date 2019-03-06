function [rz, ite] = msec(f, xa, xb, TOL, L)
  
  x0 = xa;
  x1 = xb;
  x2 = x1 - (x1 - x0) * f(x1) / (f(x1) - f(x0));
  N = 1;
  ite = 0;
  while (abs(f(x2)) > TOL && N <= L)
    printf('Iteração %d:\tx0 = %f\tx1 = %f\tx2 = %f\n',N,x0,x1,x2);
    x0 = x1;
    x1 = x2;
    x2 = x1 - (x1 - x0) * f(x1) / (f(x1) - f(x0));
    N = N + 1;
  endwhile
  if N > L
    disp('Não houve convergência!');
    ite = L;
  else
    rz = x2;
    ite = N - 1;
  endif

endfunction