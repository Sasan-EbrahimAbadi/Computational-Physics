function dx= phase_diagram(t,x)%because we wrote(t,x) in this sequence,in ph_D we should respect this sequence when we try to use ode,[t,x]=ode...
global w a f k
dx=zeros(2,1);
dx(1)=x(2);
dx(2)=-(w^2)*sin(x(1))-a*x(2)+f*cos(k*t);