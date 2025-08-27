function [yp]=PbCauchy(t,y)
    yp=y^2 +1
endfunction
function [liste_y,liste_t]=euler(y0,N,T)
    y=y0
    liste_y=[y0]
    t=0
    liste_t=[0]
    h=T/N
    for i=1:N
        y=y+h*PbCauchy(t,y)
        t=t+h
        liste_y=[liste_y,y]
        liste_t=[liste_t,t]
    end
endfunction
y0=1
N=3
T=0.3
[solution,temps]=euler(y0,N,T)
disp("les solutions sont:",solution)
disp("les temps associes sont:",temps)
y0=1
t0=0
t=1:0.1:0.3
yexacte=ode(y0,t0,t,PbCauchy)
disp(yexacte)
plot(t,yexacte,"r",temps,solution,"*")
