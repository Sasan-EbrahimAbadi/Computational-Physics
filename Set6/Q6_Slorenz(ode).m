
[t,x]=ode45 ( @lorenz ,[0 100],[1 0 1]);% {x=1,y=0,z=1} initial value,time span=[0,100]
figure
plot3(x(:,1),x(:,2),x(:,3))
figure
subplot(2,1,1),plot(t,x(:,1),'r');xlabel('t');ylabel('x1(t)');title('lorenz attractor')
subplot(2,1,2),plot(t,x(:,2),'b');xlabel('t');ylabel('x2(t)');title('lorenz attractor')
figure
subplot(3,1,3),plot(t,x(:,3),'c');xlabel('t');ylabel('x3(t)');title('lorenz attractor')
