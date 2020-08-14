clear
a=1;  %alpha
b=3;  %betha
dx=0.01;
N=100;
y1=zeros(1,N+1);
A1=zeros(1,N+1);
y2=zeros(1,N+1);
A2=zeros(1,N+1);
y1(1)=a;
A1(1)=0; %moadele ra ba sharayet BVP ba sharayet marzie y1(1)=a/A1(1)=0/y2(1)=0/A2(1)=1 be do moadele IVP tabdil mikonim
 for i=1:N
     y1(i+1)=y1(i)+dx*A1(i);
     A1(i+1)=A1(i)+dx*(-y1(i)-2*A1(i));
 end
 
y2(1)=0;
A2(1)=1;
  for i=1:N
     y2(i+1)=y2(i)+dx*A2(i);
     A2(i+1)=A2(i)+dx*(-y2(i)-2*A2(i));
  end
  x=0:N;  
  y=y1+((b-y1(N+1))/y2(N+1))*y2; 
 figure
 plot(x,y);xlabel('x');ylabel('y');
 syms f g           %baraye tatbigh ba hale tahlili va daghigh
 f(g)=exp(-g)+(3*exp(1)-1)*g*exp(-g);
 x1=linspace(0,1);
 figure
 plot(x1,f(x1));
