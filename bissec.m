function [rz,ite] = bissec(f, a, b, TOL, MAX)
  
  fa = f(a);
  fb = f(b);
  N = 1;
  
  while (abs(fa) > TOL && abs(fb) > TOL && N <= MAX)
    if (abs(a - b) < TOL)
      rz = abs(a - b)/2;
      ite = N;
      return;
    endif
    c = (a + b) / 2;
    fc = f(c);
    if (fa * fc < 0)
      b = c;
      fb = fc;
    else
      a = c;
      fa = fc;
    endif
    printf('Iteração %d\txa = %f\tf(xa) = %f\txb = %f\tf(xb)=%f\n', N, a, fa, b, fb);
    N = N + 1;
  endwhile
  if (N > MAX)
    disp ('Não houve convergência!');
    ite = MAX;
  else
    rz = c;
    ite = (N -1);
  endif

endfunction