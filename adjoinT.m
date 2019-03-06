function adj = adjoinT(M)
  
  adj = M^-1 * det(M);

endfunction