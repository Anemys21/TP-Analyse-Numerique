function [s]=serieexpo(x,n)
    s=0
for i=0:n
    s=s+(x^i/factorial(i))
end
endfunction
disp(serieexpo(2,12))


