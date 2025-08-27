x=[0 2 5 6]
y=[-4 0 1 -2]
function [p]=lagrange(x,y)
    n=length(x)
    t=poly(0,"t")
    p=0
    for i=1:n
        l=1;
        for j=[1:i-1,i+1:n]
                l=l*(t-x(j))/(x(i)-x(j))
        end
        p=p+l*y(i)
    end 
endfunction
p=lagrange(x,y)
disp(p)
t=-5:0.1:5
plot(t,p,"r")
legend("polynome d''interpolation de lagrange")
xlabel("axe des abscisses")
ylabel("axe des ordonnees")
title("p")

