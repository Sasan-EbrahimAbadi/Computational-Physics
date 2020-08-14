clear
M=100;
for N=50000:10000:100000;
m=0;
for i=1:M
    m=m+1;
    Ns=0;
    for j=1:N
        x=rand;
        y=rand;
        f=sqrt(1-(x^2));
        if y<f
            Ns=Ns+1;
        end
    end
    A(m,1)=4*(Ns/N);
end
As=(sum(A)/M);
save(['P' num2str(N) '.mat' ],'As')
end
for i=50000:10000:100000
    q=load(['P' num2str(i) '.mat']);
    disp(q)
end