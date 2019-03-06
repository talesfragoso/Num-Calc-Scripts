function [F1,angF2] = compforce2(INI,FMAX, TOL, L)
  
  I = 1;
  inc_F = 0.1;
  inc_A = 10^-4;
  sin_60 = sin(pi/3);
  cos_60 = cos(pi/3);
  
  
  F = INI:inc_F:FMAX;
  n_F = columns(F);
  A = 0:inc_A:pi/2;
  n_A = columns(A);
  while (I <= n_F && I <= L)
    J = 1;
    while (J <= n_A)
      if (abs( F(I) * (cos_60 - sin_60) - 500 * (sin(A(J)) + cos(A(J))) + 750) <= TOL)
        F1 = F(I);
        angF2 = A(J) * (180 / pi);
        printf('Total loops: %d\n',I);
        return;
      endif
     J = J + 1;
    endwhile
   I = I + 1;
  endwhile
  if (I > L)
    disp('No results');
  endif

endfunction