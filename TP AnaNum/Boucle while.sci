function y=f(n)
   y=(10^n-10^n)+1.5;
endfunction
n=0;
while(n<=30)
    disp(f(n));
    n=n+1;
end
