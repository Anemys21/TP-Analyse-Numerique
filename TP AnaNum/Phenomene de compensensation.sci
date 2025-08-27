
function y=f(n)
   y=(10^n-10^n)+1.5;
 endfunction
for n=0:30
   disp(f(n))
end
while(n<=30)
    disp(f(n));
    n=n+1;
    end
    
