j=15; %calculate autocorrelation for file (j)


X=eval(['file' num2str(j)]); 

X(:,2)=X(:,2)-ans(j,1);

l=length(X);
N=200;
e=1000;  %ensemble
Cx=zeros(e,N+2);

for w=1:e
    for t=0:N;
        k=l-t;
        for i=1:k;
            a=t+i;
            Cx(w,t+1)=Cx(w,t+1)+(X(a,2)*X(i,2));
        end
    Cx(w,t+1)=Cx(w,t+1)/(k);
    end
end
Cc=mean(Cx);
figure
plot(Cc);title(['AutoCorrelation of file ' num2str(j) ]);xlabel('t');ylabel('C(t)')
