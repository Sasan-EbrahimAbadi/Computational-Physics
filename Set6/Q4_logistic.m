clear
%x=zeros(1,200);
N=1000;
%R=0;
for r=2:0.01:4
    %R=R+1;
    for j=1:100
    x1=rand;
    for i=1:N
        x2=r*x1*(1-x1);
        x1=x2;
    end
    %m(R,1)=r;
    %x(R,1)=x2;
    
    hold on
    plot(r,x2)
    end
end
hold off