
X=[-1 0 1 2]'
Y=sinh(X)
function [P]=newton(X,Y)
   n=length(X)
   for j=2:n
       for i=1:n-j+1
             Y(i,j)=(Y(i+1,j-1)-Y(i,j-1))/(X(i+j-1)-X(i))
             end 
   end
   x=poly(0,"x")
   P=Y(1,n)
   for i=2:n
       P=P*(x-X(i))+Y(i,n-i+1)
   end
endfunction
P=newton(X,Y)
disp(P);
t=-1:0.1:2
plot(t,sinh(t),"r")
xlabel("axe des abscisses")
ylabel("axe des ordonnees")
plot(t,P,"black")
legend("courbe de la fonction","polynome d''interpolation de newton")
