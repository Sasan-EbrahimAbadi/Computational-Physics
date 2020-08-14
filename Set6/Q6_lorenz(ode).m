function dx = lorenz(t,x)
global r s b
s=10;
b=8/3;
r=28;
dx=zeros(3,1);
dx(1)=(s*x(2))-(s*x(1));
dx(2)=r*x(1)-x(2)-(x(1)*x(3));
dx(3)=(x(1)*x(2))-(b*x(3));

