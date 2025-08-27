
function [y]=carreede(x)
    y=x.^2;
endfunction
x=-15:0.1:15;
disp(carreede(x));
plot(x,carreede(x),"r")
xlabel("axe des abscisses");
ylabel("axe des ordonnees");
legend("representation graphique de la fonction y=x^2");
title("fonction carree")
