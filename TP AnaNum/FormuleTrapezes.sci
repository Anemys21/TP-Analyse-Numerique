function [y]=f(x)
    y=cos(x)
endfunction
function [t]=trapezede(a,b,n)
   t=0
   for i=1:n
       t=t+(f(a+i*(b-a)/n)+f(a+(i-1)*(b-a)/n))/2
   end
   t=t*(b-a)/n;
endfunction
disp(trapezede(0,%pi/2,8))
