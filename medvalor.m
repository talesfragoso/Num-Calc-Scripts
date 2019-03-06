function retval = medvalor(v)
  
  if (isvector(v))
    retval = sum(v) / length(v);
  else
    error("expecting a vector argument");
    retval = 0;
  endif
  
endfunction