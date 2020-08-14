clear
w0=1;
alpha=0.2;
f=0.52;
w=0.666;
dt=0.01;

N=20000;
y=zeros(1,N+1);
A=zeros(1,N+1);
y(1)=1.01;
A(1)=0;
for i=2:N+1
        y(i+1)=y(i)+dt*A(i);
        A(i+1)=A(i)+dt*(-(w0^2)*sin(y(i))-alpha*A(i)+f*cos(w*i*dt));
end
figure
plot(y,A)
n=1:20002;
figure
plot(n,y)