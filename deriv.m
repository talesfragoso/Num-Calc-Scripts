function d = deriv(f,x)
  
  inc = 10^-5;
  d = (f(x) - f(x + inc)) / (x - (x + inc));
  
endfunction