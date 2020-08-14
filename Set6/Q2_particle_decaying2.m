clear
N=10000;
%Ns=[];
%S=[];
S=zeros(500,9921);
Ns=zeros(500,9921);
deltat=0.1;
landa=0.01;

for m=1:1000
    s=0;
    p=(landa*deltat)/(s+1);
    while N>0
        deltaN=0;
        for i=1:N
            r=rand;
            if rand<p
                deltaN=deltaN+1;
            end
        end
        s=s+1
        N=N-deltaN;
     %S=[S,s];
    %Ns=[Ns,N];
    S(m,s+1)=s;
    Ns(m,s+1)=N;
    end
end
Ss=sum(S)/m;
Nn=sum(Ns)/m;
plot(Ss,log(Nn))