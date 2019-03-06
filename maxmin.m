function [max,min] = maxmin(num1,num2)
  
  if (num1 >= num2)
    max = num1;
    min = num2;
  else
    max = num2;
    min = num1;
  endif

 endfunction  