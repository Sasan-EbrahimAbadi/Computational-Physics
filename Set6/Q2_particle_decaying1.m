clear
N=1000;
l=0.01;
S=zeros(300,71350);
Ns=zeros(300,71350);
%S=[];
%Ns=[];
deltat=0.01;

for m=1:300
    s=0;
    p=l*deltat;
    while N>0
        deltaN=0;
        for i=1:N
            r=rand;
            if r<p
                deltaN=deltaN+1;
            end
        end
        s=s+1
        N=N-deltaN;
    S(m,s+1)=s;
    Ns(m,s+1)=N;
        %S=[S,s];
    %Ns=[Ns,N];
    end
end
Ss=sum(S)/m;
Nn=sum(Ns)/m;

plot(Ss,log(Nn))