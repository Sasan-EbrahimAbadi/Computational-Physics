i=1;
while i <99

    X=eval(['file' num2str(i)]);

    B=X(:,2);
    N=length(B); 
    %Max=max(B);
    %Min=min(B);
    %L=Max-Min;
    %Nbin=100;
    delta=100;
    %bin=L/Nbin;
    n=(max(B)-min(B))/delta; %bin bandi
    Bin=zeros(2,delta+1);

    Kmin=floor(min(B)/n);
    Kmax=floor(max(B)/n);
    for j=1:N ;
        k=floor(B(j)/n);
        Address=abs(Kmin)+k+1;
        Bin(2,Address)=Bin(2,Address)+1;
    end
    Bin(1,:)=(Kmin:Kmax);
    P=Bin(2,:)./N;
    figure
    plot(Bin(1,:).*n,Bin(2,:));title(['Distribution Function for file ' num2str(i) ]);xlabel('data');ylabel('number')
    figure
    plot(Bin(1,:).*n,P);title(['PDF for file ' num2str(i) ]);xlabel('data');ylabel('probability')
    figure
    E=sqrt(1-P)/(n*N);
    errorbar(Bin(1,:).*n,P,E);title(['PDF for file with errorbar ' num2str(i) ]);xlabel('data');ylabel('probability')

    i=i+40; %number of the next file to be calculated
end
 
