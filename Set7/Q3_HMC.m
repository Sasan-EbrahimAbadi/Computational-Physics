clear
tic
N=1000;   %montecarlo step
M=100;  %second loop
d=load('fitinput.txt');
A=rand; %Initial value 
H=rand; %Initial value
x=d(:,1);
y=d(:,2);
y_th1=A.*(x.^H);  
Pold=sum((y_th1-y).^2);
Pold1=Pold;

for i=1:N
    r1=rand;
    r2=rand;
    a=A+r1*2-1;
    h=H+r2*2-1;
   
    for j=1:M
        r3=rand;
        r4=rand;
        a1=a+r3*0.2-0.1;
        h1=h+r4*0.2-0.1;
        y_th1=a1.*(x.^h1);  
        Pnew1=sum((y_th1-y).^2);
        L1=Pnew1/Pold1;
        if L1 < 1
            Pold1=Pnew1;
            a=a1; h=h1;
        end 
    end
    y_th=a.*(x.^h);  
    Pnew=sum((y_th-y).^2);
    L=Pnew/Pold; 
    if L < 1
        Pold=Pnew;
        A=a;
        H=h;
    end 
    
end
y_th=A.*(x.^H);
figure;plot(x,y_th,'m',x,y,'k');xlabel('x');ylabel('y');

title('fitted curve by HMC');
text(1000,270,['A = ' num2str(A) ' H = ' num2str(H)])
toc