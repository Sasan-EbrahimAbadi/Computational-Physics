x(1)=1;
y(1)=0;
z(1)=1;
%a=0;
%b=100;
dt=0.01;
%N=(b-a)/dt;
N=10000
t=0:N;

for i=1:N
    x(i+1)=x(i)+dt*(10*(y(i)-x(i)));
    y(i+1)=y(i)+dt*(-x(i)*z(i)+28*x(i)-y(i));
    z(i+1)=z(i)+dt*(x(i)*y(i)-(8/3)*z(i));
end

 xprim=10*(y-x);
 yprim=-x.*z+28*x-y;
 zprim=x.*y-(8/3)*z;
figure
 plot(x,xprim);xlabel('x');ylabel('dx/dt');
 figure
 plot(y,yprim);xlabel('y');ylabel('dy/dt');
 figure
 plot(z,zprim);xlabel('z');ylabel('dz/dt');
figure
 plot(x,y);xlabel('x');ylabel('y');
 figure
 plot(x,z);xlabel('x');ylabel('z');
 figure
 plot(y,z);xlabel('y');ylabel('z');
 figure
 plot3(x,y,z);xlabel('x');ylabel('y');zlabel('z');